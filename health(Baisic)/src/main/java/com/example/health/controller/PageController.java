package com.example.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";  // login.jsp�� �̵�
    }

    @RequestMapping(value = "/intro", method = RequestMethod.GET)
    public String intro() {
        return "intro";  // intro.jsp�� �̵�
    }

    @RequestMapping(value = "/healthInfo", method = RequestMethod.GET)
    public String healthinfo() {
        return "healthInfo";  // healthInfo.jsp�� �̵�
    }

    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String mypage() {
        return "mypage";  // mypage.jsp�� �̵�
    }
    
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String main() {
        return "main";  // mypage.jsp�� �̵�
    }
}
