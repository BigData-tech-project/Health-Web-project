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
        // �Է¹��� �����͸� ������ ����
        String maxpressure = request.getParameter("maxpressure");
        String minpressure = request.getParameter("minpressure");
        String sugar = request.getParameter("sugar");
        String rate = request.getParameter("rate");
        String temp = request.getParameter("temp");
        String weight = request.getParameter("weight");

        // �����ͺ��̽��� �����͸� �����ϴ� ������ ���⿡ �߰�
        // ����: healthService.saveHealthData(...);

        // ������ ���� �� ���� �������� �̵�
        model.addAttribute("message", "�����Ͱ� ���������� �ԷµǾ����ϴ�.");
        return "successPage"; // ���� �޽����� ������ JSP ������
    }
}
