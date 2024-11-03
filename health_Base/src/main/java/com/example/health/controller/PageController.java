package com.example.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";  // login.jsp로 이동
    }

    @RequestMapping(value = "/intro", method = RequestMethod.GET)
    public String intro() {
        return "intro";  // intro.jsp로 이동
    }

    @RequestMapping(value = "/healthInfo", method = RequestMethod.GET)
    public String healthinfo() {
        return "healthInfo";  // healthInfo.jsp로 이동
    }

    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String mypage() {
        return "mypage";  // mypage.jsp로 이동
    }
    
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String main() {
        return "main";  // mypage.jsp로 이동
    }
    
    @RequestMapping(value = "/weight_info", method = RequestMethod.GET)
    public String WeightInfo() {
        return "weight_info"; // weight_info.jsp 파일을 찾을 수 있도록 설정
    }
    
    @RequestMapping(value = "/bloodpressure_info", method = RequestMethod.GET)
    public String bloodpressureInfo() {
        return "bloodpressure_info"; // bloospressure_info.jsp 파일을 찾을 수 있도록 설정
    }
    
    @RequestMapping(value = "/diabetes_info", method = RequestMethod.GET)
    public String diabetesInfo() {
        return "diabetes_info"; // diabetes_info.jsp 파일을 찾을 수 있도록 설정
    }
    
    @RequestMapping(value = "/temperature_info", method = RequestMethod.GET)
    public String temperatureInfo() {
        return "temperature_info"; // temperature_info.jsp 파일을 찾을 수 있도록 설정
    }
    
    @RequestMapping(value = "/heartrate_info", method = RequestMethod.GET)
    public String heartrateInfo() {
        return "heartrate_info"; // heartrate_info.jsp 파일을 찾을 수 있도록 설정
    }
}


