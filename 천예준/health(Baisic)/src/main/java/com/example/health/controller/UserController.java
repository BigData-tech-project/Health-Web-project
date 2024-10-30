package com.example.health.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.health.model.UserVo;
import com.example.health.service.UserService;
import com.example.health.util.JScript;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
@RequestMapping("/views/*")
public class UserController {

	private UserService userService;
	
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}

	@GetMapping("/login")
    public String loginForm() {
    	System.out.println("loginForm() ȣ��");
    	return "views/login";
    }
	
	@PostMapping("/login")
	public ResponseEntity<String> login(
			 String id
			,String pw
			,boolean rememberMe
			,HttpServletResponse response
			,HttpSession session
			){
		
		System.out.println("id : " + id + "pw : " + pw + "rememberMe : " + rememberMe);
		// 1. id ���翩��
		UserVo dbUserVo = userService.getUserById(id);
		
		if(dbUserVo == null) { // �������� �ʴ� ���̵�
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("���̵� �������� �ʽ��ϴ�.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 2. ��й�ȣ üũ
		Boolean isPwRight = BCrypt.checkpw(pw, dbUserVo.getPw());
		
		if(isPwRight == false) { // ��й�ȣ�� Ʋ��
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 3. �α��� ���� üũ Ȯ��
		if(rememberMe == true) { // �α��� üũ ��
			//��Ű ���
			Cookie cookie = new Cookie("userId", id);
			cookie.setMaxAge(60*60*24*7); // ��Ű ���� ����(�ʴ���)
			cookie.setPath("/"); // �����
			
			response.addCookie(cookie);
			
		}
		
		// 4. ���� ���
		session.setAttribute("id", id);
		
		// 5. �α��� ���� �޼��� ����, ����ȭ������ �̵�
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = JScript.href("�α��� ����", "/views/main");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
	
	@GetMapping("/join")
	public String joinForm() {
		System.out.println("joinForm() ȣ��");
		return "views/join";
	}
	
	@PostMapping("/join")
	public ResponseEntity<String> join(UserVo userVo, String pwCheck){		
		
		// 1. ���̵� �ߺ�üũ
		String id = userVo.getId();
		
		UserVo dbUserVo = userService.getUserById(id);
		System.out.println("dbUserVo : " + dbUserVo);
		
		if(dbUserVo != null) { // �̹� �����ϴ� ���̵�
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("�̹� �����ϴ� ���̵��Դϴ�.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 2. ��й�ȣ, ��й�ȣ Ȯ�� ���� ������ üũ
		String pw = userVo.getPw();
		
		if (pw.equals(pwCheck) == false) { //��й�ȣ ���� �ٸ���
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("��й�ȣ�� ���� �ٸ��ϴ�.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}		
		// ���̵� üũ, ��й�ȣ �ߺ��˻� ��� ������� ��
		System.out.println("���� �� userVo : " + userVo);
		
		// ��й�ȣ ��ȣȭ�ϱ�
		String hashPw = BCrypt.hashpw(pw, BCrypt.gensalt());
		
		userVo.setPw(hashPw);
		
		System.out.println("���� �� userVo : " + userVo);
		
		// 3. DB�� ���
		
		userService.insertUser(userVo);
		
		// 4. ȸ������ �Ϸ� �޼����� ����, �α��� ȭ�� �̵�
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = JScript.href("ȸ������ �Ϸ�", "/views/login");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
}





















