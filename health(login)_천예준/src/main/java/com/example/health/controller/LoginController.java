package com.example.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

//@Controller
public class LoginController {

//    @GetMapping("/login")
//    public String loginPage() {
//        return "login";
//    }
//
//    @PostMapping("/login")
//    public String loginProcess(@RequestParam("id") String id,
//                               @RequestParam("password") String password,
//                               HttpSession session, Model model) {
//        // �α��� Ȯ��
//        if ("id".equals(id) && "password".equals(password)) {
//            session.setAttribute("id", id);
//            return "redirect:/mypage";
//        } else {
//            model.addAttribute("error", "�α��� ����");
//            return "login";
//        }
//    }
}
