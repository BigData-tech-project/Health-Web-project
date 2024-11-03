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
    
    @RequestMapping(value = "/weight_info", method = RequestMethod.GET)
    public String WeightInfo() {
        return "weight_info"; // weight_info.jsp ������ ã�� �� �ֵ��� ����
    }
    
    @RequestMapping(value = "/bloodpressure_info", method = RequestMethod.GET)
    public String bloodpressureInfo() {
        return "bloodpressure_info"; // bloospressure_info.jsp ������ ã�� �� �ֵ��� ����
    }
    
    @RequestMapping(value = "/diabetes_info", method = RequestMethod.GET)
    public String diabetesInfo() {
        return "diabetes_info"; // diabetes_info.jsp ������ ã�� �� �ֵ��� ����
    }
    
    @RequestMapping(value = "/temperature_info", method = RequestMethod.GET)
    public String temperatureInfo() {
        return "temperature_info"; // temperature_info.jsp ������ ã�� �� �ֵ��� ����
    }
    
    @RequestMapping(value = "/heartrate_info", method = RequestMethod.GET)
    public String heartrateInfo() {
        return "heartrate_info"; // heartrate_info.jsp ������ ã�� �� �ֵ��� ����
    }
}


