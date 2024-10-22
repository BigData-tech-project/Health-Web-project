package com.example.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @GetMapping("/intro")
    public String introPage() {
        return "intro";
    }

    @GetMapping("/healthInfo")
    public String healthInfoPage() {
        return "healthInfo";
    }

    @GetMapping("/mypage")
    public String myPage() {
        return "mypage";
    }

    @GetMapping("/")
    public String mainPage() {
        return "main";
    }
}
