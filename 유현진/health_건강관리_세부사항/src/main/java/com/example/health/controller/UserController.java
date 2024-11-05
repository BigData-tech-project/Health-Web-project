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
    	System.out.println("loginForm() 호출");
    	return "/user/login";
    }
	
	@PostMapping("/login")
	public String login(String id, String pw, HttpSession session) {
		UserVo dbUserVo= userService.getUserById(id);		
		// id 확인
		if(dbUserVo == null) {
			System.out.println("ID가 존재하지 않음");
			return "redirect:/user/login";
		}		
		
		// pw 확인
		if(pw == null || pw.isEmpty() || !pw.equals(dbUserVo.getPw())) {
			System.out.println("비밀번호가 일치하지 않음");
			return "redirect:/user/login";
		}
		
		// 세션저장
		session.setAttribute("id", dbUserVo.getId());
		
		// 로그인 후 메인페이지 이동
		System.out.println("로그인 성공");
		return "redirect:../";
	}
	
	@GetMapping("/join")
	public String joinForm() {
		System.out.println("joinForm() 호출");
		return "/user/join";
	}
	
	@PostMapping("/join")
	public String join(UserVo userVo, String pw, String pwCheck) {
		String id = userVo.getId();
				
		// id 중복검사
		UserVo dbUserId= userService.getUserById(id);
		if(dbUserId != null) {
			System.out.println("아이디 중복");
			return "redirect:/user/join";
		}
		
		// pw 검사
		if(pw.equals("pwCheck")) {
			System.out.println("비밀번호 불일치");
			return "redirect:/user/join";
		}
		
		userVo.setPw(pw);
		
		// db에 넣기
		userService.insertUser(userVo);
		
		// 가입 완료 후 로그인페이지 이동
		System.out.println("가입 성공");
		return "/user/login";
	}
	
	@GetMapping("/logout")
	public String logOut(HttpSession session) {
		session.invalidate();
		
		return "redirect:../";
		
	}
	
}