package com.example.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(HttpSession session, Model model) {
    	String id = (String) session.getAttribute("id");
    	if(id != null) {
    		model.addAttribute("id",id);
    	}else {
    		return "main";
    	}
        return "main";
    }

	@RequestMapping(value = "/intro", method = RequestMethod.GET)
    public String intro(HttpSession session, Model model) {
    	String id = (String) session.getAttribute("id");
    	if(id != null) {
    		model.addAttribute("id",id);
    	}else {
    		return "intro";
    	}
        return "intro";
    }
    
	@RequestMapping(value = "/healthInfo", method = RequestMethod.GET)
    public String healthInfo(HttpSession session, Model model) {
    	String id = (String) session.getAttribute("id");
    	
    	if(id != null) {
    		model.addAttribute("id",id);
    	}else {
    		return "healthInfo";
    	}
        return "healthInfo";
    }
    
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String mypage(HttpSession session, Model model) {
    	String id = (String) session.getAttribute("id");
    	System.out.println(id);
    	
    	if(id != null) {
    		model.addAttribute("id",id);
    	}else {
    		return "redirect:/user/login";
    	}
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
}