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
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class NewsService {

    private static final Logger logger = Logger.getLogger(NewsService.class.getName());
    private static final String CLIENT_ID = "GCVnKGYlSNVSdlTuIw63"; // ���̹� API Ŭ���̾�Ʈ ���̵�
    private static final String CLIENT_SECRET = "Ft4lxDtUdn"; // ���̹� API Ŭ���̾�Ʈ ��ũ��

    private JsonNode cachedNewsData; // ĳ�õ� ���� ������
    private LocalDateTime cacheTimestamp; // ĳ�ð� ����� �ð�

    // �˻��� ���
    private static final String[] SEARCH_TERMS = {
    	    "�ǰ� ������ü�� + �ǰ�",
    	    "�ǰ� ������ü�� + �ǰ�",
    	    "�ǰ� �����ӽɹڼ� + �ǰ�",
    	    "�ǰ� ���������� + �ǰ�",
    	    "�ǰ� �����Ӵ索 + �ǰ�",
    	    "�ｺ��ü�� + �ǰ�",
    	    "�ｺ��ü�� + �ǰ�",
    	    "�ｺ�ӽɹڼ� + �ǰ�",
    	    "�ｺ������ + �ǰ�",
    	    "�ｺ�Ӵ索 + �ǰ�"

    	};

    private int searchTermIndex = 0; // ���� �˻����� �ε���

    // �ֽ� ���� ������ ��������
    public JsonNode getLatestNews() {
        // ĳ�ð� �����ϰ�, ��ȿ�ϴٸ� ĳ�õ� ������ ��ȯ
        if (cachedNewsData != null && cacheTimestamp != null
            && cacheTimestamp.plusMinutes(60).isAfter(LocalDateTime.now())) {
            logger.info("ĳ�õ� �����͸� ��ȯ�մϴ�.");
            return cachedNewsData;
        }

        logger.info("ĳ�ð� ����Ǿ��ų� �����Ͱ� �����ϴ�. API���� �� �����͸� �����ɴϴ�.");

        // ���� �˻��� ���� �� ��ȯ �ε��� ����
        String searchTerm = SEARCH_TERMS[searchTermIndex];
        searchTermIndex = (searchTermIndex + 1) % SEARCH_TERMS.length;

        String text;
        try {
            text = URLEncoder.encode(searchTerm, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("�˻��� ���ڵ� ����", e);
        }

        String apiURL = "https://openapi.naver.com/v1/search/news.json?query=" + text + "&sort=date&timestamp=" + System.currentTimeMillis();

        // ��û ��� ����
        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", CLIENT_ID);
        requestHeaders.put("X-Naver-Client-Secret", CLIENT_SECRET);

        // API ȣ��
        String response = get(apiURL, requestHeaders);
        if (response == null || response.isEmpty()) {
            logger.warning("API ������ ��� �ֽ��ϴ�.");
            return null;
        }

        // JSON �Ľ� �� ĳ�ÿ� ����
        cachedNewsData = parseNewsData(response);
        cacheTimestamp = LocalDateTime.now(); // ĳ�� ���� �ð� ����
        logger.info("API���� ������ �����͸� ĳ�ÿ� �����մϴ�.");

        return cachedNewsData;
    }

    // ĳ�� ���� �޼��� (�����ٷ��� ȣ��)
    public void clearCache() {
        cachedNewsData = null;
        cacheTimestamp = null;
        logger.info("ĳ�ð� �����Ǿ����ϴ�. ���� ��û �� API���� �� �����͸� �ҷ��ɴϴ�.");
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
                logger.info("API ��û ���� - ���� �ڵ�: " + responseCode);
                return readBody(con.getInputStream());
            } else {
                logger.warning("API ��û ���� - ���� �ڵ�: " + responseCode);
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API ��û�� ���� ����", e);
        } finally {
            con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl) {
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection) url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL�� �߸��Ǿ����ϴ�: " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("������ �����߽��ϴ�: " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body) {
        try (BufferedReader lineReader = new BufferedReader(new InputStreamReader(body, StandardCharsets.UTF_8))) {
            StringBuilder responseBody = new StringBuilder();
            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }
            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API ������ �д� �� �����߽��ϴ�.", e);
        }
    }



    private JsonNode parseNewsData(String response) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            JsonNode parsedData = objectMapper.readTree(response).path("items");
            logger.info("JSON ������ �Ľ� ���� - ���� �׸� ��: " + parsedData.size());
            return parsedData;
        } catch (Exception e) {
            logger.log(Level.SEVERE, "JSON ������ �Ľ� �� ���� �߻�", e);
            return null;
        }
    }
}