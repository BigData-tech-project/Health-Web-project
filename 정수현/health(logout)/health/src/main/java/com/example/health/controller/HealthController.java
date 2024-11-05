package com.example.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.health.model.HealthVo;
import com.example.health.service.HealthService;

@Controller
@RequestMapping("/user_data/*")
public class HealthController {
	
	private HealthService healthService;

	@Autowired
	public HealthController(HealthService healthService) {
		super();
		this.healthService = healthService;
	}
	
	@GetMapping("/insert")
	public String insertHealthForm() {
		return "/user_data/insert";
	}
	
	@PostMapping("/insert")
	public String insert(HttpSession session, HealthVo healthVo) {
		String id = (String) session.getAttribute("id");
		healthVo.setId(id);
		
		healthService.insertHealth(healthVo);
		
		return "redirect:/main";
	}
		
}