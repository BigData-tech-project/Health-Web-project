package com.example.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user_data")
public class UserDataController {

    @PostMapping("/insertData")
    public String insertData(HttpServletRequest request, Model model) {
        // 입력받은 데이터를 변수에 저장
        String maxpressure = request.getParameter("maxpressure");
        String minpressure = request.getParameter("minpressure");
        String sugar = request.getParameter("sugar");
        String rate = request.getParameter("rate");
        String temp = request.getParameter("temp");
        String weight = request.getParameter("weight");

        // 데이터베이스에 데이터를 저장하는 로직을 여기에 추가
        // 예시: healthService.saveHealthData(...);

        // 데이터 저장 후 성공 페이지로 이동
        model.addAttribute("message", "데이터가 성공적으로 입력되었습니다.");
        return "successPage"; // 성공 메시지를 보여줄 JSP 페이지
    }
}
