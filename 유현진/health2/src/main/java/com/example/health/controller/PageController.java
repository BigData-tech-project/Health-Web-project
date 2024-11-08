package com.example.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//    public String home(HttpSession session, Model model) {
//    	String id = (String) session.getAttribute("id");
//    	if(id != null) {
//    		model.addAttribute("id",id);
//    	}else {
//    		return "main";
//    	}
//        return "main";
//    }
	

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
    
    @RequestMapping(value = "/healthinfo/high_temperature", method = RequestMethod.GET)
    public String high_temperature() {
        return "healthinfo/high_temperature";
    }
    
    @RequestMapping(value = "/healthinfo/low_temperature", method = RequestMethod.GET)
    public String low_temperature() {
        return "healthinfo/low_temperature";
    }
    
    @RequestMapping(value = "/healthinfo/high_diabetes", method = RequestMethod.GET)
    public String high_diabetes() {
        return "healthinfo/high_diabetes";
    }
    
    @RequestMapping(value = "/healthinfo/low_diabetes", method = RequestMethod.GET)
    public String low_diabetes() {
        return "healthinfo/low_diabetes";
    }
    
    @RequestMapping(value = "/healthinfo/high_bloodpressure", method = RequestMethod.GET)
    public String high_bloodpressure() {
        return "healthinfo/high_bloodpressure";
    }
    
    @RequestMapping(value = "/healthinfo/low_bloodpressure", method = RequestMethod.GET)
    public String low_bloodpressure() {
        return "healthinfo/low_bloodpressure";
    }
    
    @RequestMapping(value = "/healthinfo/high_heartrate", method = RequestMethod.GET)
    public String high_heartrate() {
        return "healthinfo/high_heartrate";
    }
    
    @RequestMapping(value = "/healthinfo/low_heartrate", method = RequestMethod.GET)
    public String low_heartrate() {
        return "healthinfo/low_heartrate";
    }
    
    @RequestMapping(value = "/healthinfo/overweight", method = RequestMethod.GET)
    public String overweight() {
        return "healthinfo/overweight";
    }
    
    @RequestMapping(value = "/healthinfo/underweight", method = RequestMethod.GET)
    public String underweight() {
        return "healthinfo/underweight";
    }
}