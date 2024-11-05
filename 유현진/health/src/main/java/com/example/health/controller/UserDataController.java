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
        // ����� �Է� ������ �� ���� ID ��������
        String userId = (String) session.getAttribute("id");
        if (userId == null) {
            return "redirect:/user/login"; // �α������� ���� ��� �α��� �������� �����̷�Ʈ
        }

        HealthVo healthVo = new HealthVo();
        healthVo.setId(userId);
        healthVo.setMaxpressure(Integer.parseInt(request.getParameter("maxpressure")));
        healthVo.setMinpressure(Integer.parseInt(request.getParameter("minpressure")));
        healthVo.setSugar(Integer.parseInt(request.getParameter("sugar")));
        healthVo.setRate(Integer.parseInt(request.getParameter("rate")));
        healthVo.setTemp(Integer.parseInt(request.getParameter("temp")));
        healthVo.setWeight(Float.parseFloat(request.getParameter("weight")));

        // �����ͺ��̽��� ����
        healthService.insertHealth(healthVo);

        // ���� �޽����� �Բ� ���� �������� �̵�
        model.addAttribute("message", "�����Ͱ� ���������� �ԷµǾ����ϴ�.");
        return "successPage"; // ���� �޽����� ������ JSP ������
    }
}
