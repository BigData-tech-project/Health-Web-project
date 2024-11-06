package com.example.health.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
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
        // 세션에서 사용자 ID와 이름 가져오기
        String userId = (String) session.getAttribute("id");
        String username = (String) session.getAttribute("username");
        if (userId == null) {
            return "redirect:/user/login";
        }

        // HealthVo 객체 생성 및 사용자 ID와 현재 날짜 설정
        HealthVo healthVo = new HealthVo();
        healthVo.setUserId(userId);
        healthVo.setDateCreated(new Timestamp(System.currentTimeMillis())); // 현재 날짜 설정

        // 파라미터에서 입력된 데이터 가져오기
        String maxPressureStr = request.getParameter("maxPressure");
        String minPressureStr = request.getParameter("minPressure");
        String sugarStr = request.getParameter("sugar");
        String rateStr = request.getParameter("rate");
        String tempStr = request.getParameter("temp");
        String weightStr = request.getParameter("weight");

        // 값 설정 (CamelCase로 수정)
        healthVo.setMaxpressure((maxPressureStr != null && !maxPressureStr.isEmpty()) ? Integer.parseInt(maxPressureStr) : 120);
        healthVo.setMinpressure((minPressureStr != null && !minPressureStr.isEmpty()) ? Integer.parseInt(minPressureStr) : 80);
        healthVo.setSugar((sugarStr != null && !sugarStr.isEmpty()) ? Integer.parseInt(sugarStr) : 100);
        healthVo.setRate((rateStr != null && !rateStr.isEmpty()) ? Integer.parseInt(rateStr) : 70);
        healthVo.setTemp((tempStr != null && !tempStr.isEmpty()) ? Float.parseFloat(tempStr) : 36.5f);
        healthVo.setWeight((weightStr != null && !weightStr.isEmpty()) ? Float.parseFloat(weightStr) : 70.0f);

        // 데이터 삽입
        healthService.insertHealth(healthVo);

        // 현재 날짜와 요일 설정
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
        SimpleDateFormat dayFormat = new SimpleDateFormat("EEEE", Locale.KOREA);
        String currentDate = dateFormat.format(new Date());
        String currentDay = dayFormat.format(new Date());

        // 모델에 데이터 추가하여 view에서 사용
        model.addAttribute("maxpressure", healthVo.getMaxpressure());
        model.addAttribute("minpressure", healthVo.getMinpressure());
        model.addAttribute("bloodsugar", healthVo.getSugar());
        model.addAttribute("rate", healthVo.getRate());
        model.addAttribute("temperature", healthVo.getTemp());
        model.addAttribute("weight", healthVo.getWeight());
        model.addAttribute("currentDate", currentDate);
        model.addAttribute("currentDay", currentDay);

        return "user_data/data"; // data.jsp로 이동
    }

    @GetMapping("/data")
    public String showDataPage() {
        return "user_data/data"; // /WEB-INF/views/user_data/data.jsp 파일로 매핑
    }
    
    @GetMapping("/showData")
    public String showAllData(HttpSession session, Model model) {
        String userId = (String) session.getAttribute("id");
        if (userId != null) {
            List<HealthVo> dataList = healthService.getAllDataByUserId(userId);
            model.addAttribute("dataList", dataList);
        }
        return "user_data/showData"; // showData.jsp로 이동
    }
}
