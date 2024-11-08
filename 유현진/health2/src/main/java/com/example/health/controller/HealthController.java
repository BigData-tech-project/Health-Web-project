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
		this.healthService = healthService;
	}
	
	@GetMapping("/insert")
	public String insertHealthForm() {
		return "/user_data/insert";
	}
	
	@PostMapping("/insert")
	public String insert(HttpSession session, HealthVo healthVo) {
		// 세션에서 사용자 ID 가져오기
		String userId = (String) session.getAttribute("id");
		if (userId != null) {
		    healthVo.setUserId(userId); // setId 대신 setUserId 사용
		    healthService.insertHealth(healthVo);
		}
		
		return "redirect:/main";
	}
}
