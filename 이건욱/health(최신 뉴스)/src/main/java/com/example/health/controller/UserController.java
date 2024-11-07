package com.example.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.health.model.UserVo;
import com.example.health.service.UserService;


@Controller
@RequestMapping("/user/*")
public class UserController {

	private UserService userService;

	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping("/login")
    public String loginForm() {
    	System.out.println("loginForm() ȣ��");
    	return "/user/login";
    }
	
	@PostMapping("/login")
	public String login(String id, String pw, HttpSession session) {
		UserVo dbUserVo= userService.getUserById(id);		
		
		if(dbUserVo == null) {
			System.out.println("ID�� �������� ����");
			return "redirect:/user/login";
		}		
		
		
		if(pw == null || pw.isEmpty() || !pw.equals(dbUserVo.getPw())) {
			System.out.println("��й�ȣ�� ��ġ���� ����");
			return "redirect:/user/login";
		}
		
		
		session.setAttribute("id", dbUserVo);
		
		
		System.out.println("�α��� ����");
		return "redirect:../main";
	}
	
	@GetMapping("/join")
	public String joinForm() {
		System.out.println("joinForm() ȣ��");
		return "/user/join";
	}
	
	@PostMapping("/join")
	public String join(UserVo userVo, String pw, String pwCheck) {
		String id = userVo.getId();
				
		// id �ߺ��˻�
		UserVo dbUserId= userService.getUserById(id);
		if(dbUserId != null) {
			System.out.println("���̵� �ߺ�");
			return "redirect:/user/join";
		}
		
		// pw �˻�
		if(pw.equals("pwCheck")) {
			System.out.println("��й�ȣ ����ġ");
			return "redirect:/user/join";
		}
		
		userVo.setPw(pw);
		
		// db�� �ֱ�
		userService.insertUser(userVo);
		
		// ���� �Ϸ� �� �α��������� �̵�
		System.out.println("���� ����");
		return "/user/login";
	}
}