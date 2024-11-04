package com.example.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "main";
    }

    @RequestMapping(value = "/intro", method = RequestMethod.GET)
    public String intro() {
        return "intro";
    }
    
    @RequestMapping(value = "/healthInfo", method = RequestMethod.GET)
    public String healthInfo() {
        return "healthInfo";
    }
    
    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String mypage() {
        return "mypage";
    }
    
    @RequestMapping(value = "/healthinfo/bloodpressure_info", method = RequestMethod.GET)
    public String bloodpressure() {
        return "healthinfo/bloodpressure_info";
    }
    
    @RequestMapping(value = "/healthinfo/diabetes_info", method = RequestMethod.GET)
    public String diabetes_info() {
        return "healthinfo/diabetes_info";
    }
    
    @RequestMapping(value = "/healthinfo/heartrate_info", method = RequestMethod.GET)
    public String heartrate_info() {
        return "healthinfo/heartrate_info";
    }
    
    @RequestMapping(value = "/healthinfo/temperature_info", method = RequestMethod.GET)
    public String temperature_info() {
        return "healthinfo/temperature_info";
    }
    
    @RequestMapping(value = "/healthinfo/weight_info", method = RequestMethod.GET)
    public String weight_info() {
        return "healthinfo/weight_info";
    }
    
    @RequestMapping(value = "/user_data/insert", method = RequestMethod.GET)
    public String insert() {
        return "user_data/insert";
    }
    
    @RequestMapping(value = "/user_data/data", method = RequestMethod.GET)
    public String data() {
        return "user_data/data";
    }
}
