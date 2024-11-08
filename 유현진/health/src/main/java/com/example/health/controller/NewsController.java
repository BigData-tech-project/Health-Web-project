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

    // ���� ������ - �ֽ� ���� 3���� ǥ��
    @GetMapping("/")
    public String mainPage(Model model) {
        JsonNode newsData = newsService.getLatestNews();

        if (newsData == null || !newsData.isArray() || newsData.size() == 0) {
            model.addAttribute("errorMessage", "�ֽ� ������ �ҷ��� �� �����ϴ�.");
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
            model.addAttribute("newsData", newsList); // main.jsp�� ����
        }

        return "main"; // main.jsp�� �̵�
    }

    // ��ü �ֽ� ���� ��� ������ - /NEWS/latest-news ��ο��� ����
    @GetMapping("/NEWS/latest-news")
    public String getLatestNews(Model model) {
        System.out.println("getLatestNews �޼��尡 ȣ��Ǿ����ϴ�.");
        newsService.clearCache();
        JsonNode newsData = newsService.getLatestNews();

        if (newsData == null || !newsData.isArray() || newsData.size() == 0) {
            model.addAttribute("errorMessage", "�ֽ� ������ �ҷ��� �� �����ϴ�.");
        } else {
            List<Map<String, Object>> newsList = new ArrayList<>();
            for (JsonNode news : newsData) {
                Map<String, Object> newsItem = new HashMap<>();
                newsItem.put("title", news.get("title").asText());
                newsItem.put("link", news.get("link").asText());
                newsList.add(newsItem);
            }
            System.out.println("��ü ���� ������ Ȯ��: " + newsList);
            model.addAttribute("newsData", newsList); // latest-news.jsp�� ����
        }

        return "NEWS/latest-news"; // NEWS/latest-news.jsp�� �̵�
    }
}