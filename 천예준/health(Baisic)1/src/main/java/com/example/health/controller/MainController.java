package com.example.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.health.model.UserVo;

@Controller
@RequestMapping(value = "/")
public class MainController {
	
	@GetMapping("/main")
	public String mainPage(HttpSession session, Model model) {		
		UserVo user = (UserVo) session.getAttribute("user");
		
		if(user != null) {
			model.addAttribute("user", user);
		}
		
		return "main";
	}
}