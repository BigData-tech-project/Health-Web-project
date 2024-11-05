package com.example.health.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import com.example.health.model.HealthVo;
import com.example.health.service.HealthService;

@Controller
@RequestMapping("/user_data")
public class UserDataController {

    private final HealthService healthService;

    @Autowired
    public UserDataController(HealthService healthService) {
        this.healthService = healthService;
    }

    @PostMapping("/insertData")
    public String insertData(HttpServletRequest request, HttpSession session, Model model) {
        // 사용자 입력 데이터 및 세션 ID 가져오기
        String userId = (String) session.getAttribute("id");
        if (userId == null) {
            return "redirect:/user/login"; // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
        }

        HealthVo healthVo = new HealthVo();
        healthVo.setId(userId);
        healthVo.setMaxpressure(Integer.parseInt(request.getParameter("maxpressure")));
        healthVo.setMinpressure(Integer.parseInt(request.getParameter("minpressure")));
        healthVo.setSugar(Integer.parseInt(request.getParameter("sugar")));
        healthVo.setRate(Integer.parseInt(request.getParameter("rate")));
        healthVo.setTemp(Integer.parseInt(request.getParameter("temp")));
        healthVo.setWeight(Float.parseFloat(request.getParameter("weight")));

        // 데이터베이스에 저장
        healthService.insertHealth(healthVo);

        // 성공 메시지와 함께 성공 페이지로 이동
        model.addAttribute("message", "데이터가 성공적으로 입력되었습니다.");
        return "successPage"; // 성공 메시지를 보여줄 JSP 페이지
    }
}
