package com.example.health.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class NewsService {

    private static final Logger logger = Logger.getLogger(NewsService.class.getName());
    private static final String CLIENT_ID = "GCVnKGYlSNVSdlTuIw63"; // 네이버 API 클라이언트 아이디
    private static final String CLIENT_SECRET = "Ft4lxDtUdn"; // 네이버 API 클라이언트 시크릿

    private JsonNode cachedNewsData; // 캐시된 뉴스 데이터
    private LocalDateTime cacheTimestamp; // 캐시가 저장된 시간

    // 검색어 목록
    private static final String[] SEARCH_TERMS = {
    	    "건강 관리ㅣ체중 + 건강",
    	    "건강 관리ㅣ체온 + 건강",
    	    "건강 관리ㅣ심박수 + 건강",
    	    "건강 관리ㅣ혈압 + 건강",
    	    "건강 관리ㅣ당뇨 + 건강",
    	    "헬스ㅣ체중 + 건강",
    	    "헬스ㅣ체온 + 건강",
    	    "헬스ㅣ심박수 + 건강",
    	    "헬스ㅣ혈압 + 건강",
    	    "헬스ㅣ당뇨 + 건강"

    	};

    private int searchTermIndex = 0; // 현재 검색어의 인덱스

    // 최신 뉴스 데이터 가져오기
    public JsonNode getLatestNews() {
        // 캐시가 존재하고, 유효하다면 캐시된 데이터 반환
        if (cachedNewsData != null && cacheTimestamp != null
            && cacheTimestamp.plusMinutes(60).isAfter(LocalDateTime.now())) {
            logger.info("캐시된 데이터를 반환합니다.");
            return cachedNewsData;
        }

        logger.info("캐시가 만료되었거나 데이터가 없습니다. API에서 새 데이터를 가져옵니다.");

        // 현재 검색어 선택 및 순환 인덱스 갱신
        String searchTerm = SEARCH_TERMS[searchTermIndex];
        searchTermIndex = (searchTermIndex + 1) % SEARCH_TERMS.length;

        String text;
        try {
            text = URLEncoder.encode(searchTerm, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("검색어 인코딩 실패", e);
        }

        String apiURL = "https://openapi.naver.com/v1/search/news.json?query=" + text + "&sort=date&timestamp=" + System.currentTimeMillis();

        // 요청 헤더 설정
        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", CLIENT_ID);
        requestHeaders.put("X-Naver-Client-Secret", CLIENT_SECRET);

        // API 호출
        String response = get(apiURL, requestHeaders);
        if (response == null || response.isEmpty()) {
            logger.warning("API 응답이 비어 있습니다.");
            return null;
        }

        // JSON 파싱 후 캐시에 저장
        cachedNewsData = parseNewsData(response);
        cacheTimestamp = LocalDateTime.now(); // 캐시 생성 시간 갱신
        logger.info("API에서 가져온 데이터를 캐시에 저장합니다.");

        return cachedNewsData;
    }

    // 캐시 삭제 메서드 (스케줄러가 호출)
    public void clearCache() {
        cachedNewsData = null;
        cacheTimestamp = null;
        logger.info("캐시가 삭제되었습니다. 다음 요청 시 API에서 새 데이터를 불러옵니다.");
    }

    private static String get(String apiUrl, Map<String, String> requestHeaders) {
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                logger.info("API 요청 성공 - 응답 코드: " + responseCode);
                return readBody(con.getInputStream());
            } else {
                logger.warning("API 요청 실패 - 응답 코드: " + responseCode);
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl) {
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection) url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다: " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다: " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body) {
        InputStreamReader streamReader = new InputStreamReader(body);
        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();
            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }
            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", e);
        }
    }

    private JsonNode parseNewsData(String response) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            JsonNode parsedData = objectMapper.readTree(response).path("items");
            logger.info("JSON 데이터 파싱 성공 - 뉴스 항목 수: " + parsedData.size());
            return parsedData;
        } catch (Exception e) {
            logger.log(Level.SEVERE, "JSON 데이터 파싱 중 오류 발생", e);
            return null;
        }
    }
}
