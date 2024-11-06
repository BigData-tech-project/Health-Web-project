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
        String userId = (String) session.getAttribute("id");
        if (userId == null) {
            return "redirect:/user/login";
        }

        HealthVo healthVo = new HealthVo();
        healthVo.setId(userId);

        String maxPressureStr = request.getParameter("maxpressure");
        String minPressureStr = request.getParameter("minpressure");
        String sugarStr = request.getParameter("sugar");
        String rateStr = request.getParameter("rate");
        String tempStr = request.getParameter("temp");
        String weightStr = request.getParameter("weight");

        healthVo.setMaxpressure((maxPressureStr != null && !maxPressureStr.isEmpty()) ? Integer.parseInt(maxPressureStr) : 120);
        healthVo.setMinpressure((minPressureStr != null && !minPressureStr.isEmpty()) ? Integer.parseInt(minPressureStr) : 80);
        healthVo.setSugar((sugarStr != null && !sugarStr.isEmpty()) ? Integer.parseInt(sugarStr) : 100);
        healthVo.setRate((rateStr != null && !rateStr.isEmpty()) ? Integer.parseInt(rateStr) : 70);
        healthVo.setTemp((tempStr != null && !tempStr.isEmpty()) ? Float.parseFloat(tempStr) : 36.5f);
        healthVo.setWeight((weightStr != null && !weightStr.isEmpty()) ? Float.parseFloat(weightStr) : 70.0f);

        healthService.insertHealth(healthVo);

        model.addAttribute("MaxbloodPressure", healthVo.getMaxpressure());
        model.addAttribute("MinbloodPressure", healthVo.getMinpressure());
        model.addAttribute("bloodSugar", healthVo.getSugar());
        model.addAttribute("rate", healthVo.getRate());
        model.addAttribute("temperature", healthVo.getTemp());
        model.addAttribute("weight", healthVo.getWeight());

        return "user_data/data"; // data.jsp로 리디렉트
    }

}