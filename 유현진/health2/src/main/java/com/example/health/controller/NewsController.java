package com.example.health.controller;

import com.example.health.service.NewsService;
import com.fasterxml.jackson.databind.JsonNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    // 메인 페이지 - 최신 뉴스 3개만 표시
    @GetMapping("/")
    public String mainPage(Model model) {
        JsonNode newsData = newsService.getLatestNews();

        if (newsData == null || !newsData.isArray() || newsData.size() == 0) {
            model.addAttribute("errorMessage", "최신 뉴스를 불러올 수 없습니다.");
        } else {
            List<Map<String, Object>> newsList = new ArrayList<>();
            int cnt = 0;
            for (JsonNode news : newsData) {
                if (cnt++ >= 3) break;
                Map<String, Object> newsItem = new HashMap<>();
                newsItem.put("title", news.get("title").asText());
                newsItem.put("link", news.get("link").asText());
                newsList.add(newsItem);
            }
            model.addAttribute("newsData", newsList); // main.jsp로 전달
        }

        return "main"; // main.jsp로 이동
    }

    // 전체 최신 뉴스 목록 페이지 - /NEWS/latest-news 경로에서 접근
    @GetMapping("/NEWS/latest-news")
    public String getLatestNews(Model model) {
        System.out.println("getLatestNews 메서드가 호출되었습니다.");
        newsService.clearCache();
        JsonNode newsData = newsService.getLatestNews();

        if (newsData == null || !newsData.isArray() || newsData.size() == 0) {
            model.addAttribute("errorMessage", "최신 뉴스를 불러올 수 없습니다.");
        } else {
            List<Map<String, Object>> newsList = new ArrayList<>();
            for (JsonNode news : newsData) {
                Map<String, Object> newsItem = new HashMap<>();
                newsItem.put("title", news.get("title").asText());
                newsItem.put("link", news.get("link").asText());
                newsList.add(newsItem);
            }
            System.out.println("전체 뉴스 데이터 확인: " + newsList);
            model.addAttribute("newsData", newsList); // latest-news.jsp로 전달
        }

        return "NEWS/latest-news"; // NEWS/latest-news.jsp로 이동
    }
}