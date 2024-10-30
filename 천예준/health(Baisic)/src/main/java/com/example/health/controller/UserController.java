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
    	System.out.println("loginForm() 호출");
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
		// 1. id 존재여부
		UserVo dbUserVo = userService.getUserById(id);
		
		if(dbUserVo == null) { // 존재하지 않는 아이디
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("아이디가 존재하지 않습니다.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 2. 비밀번호 체크
		Boolean isPwRight = BCrypt.checkpw(pw, dbUserVo.getPw());
		
		if(isPwRight == false) { // 비밀번호가 틀림
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("비밀번호가 틀렸습니다.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 3. 로그인 유지 체크 확인
		if(rememberMe == true) { // 로그인 체크 시
			//쿠키 등록
			Cookie cookie = new Cookie("userId", id);
			cookie.setMaxAge(60*60*24*7); // 쿠키 수명 설정(초단위)
			cookie.setPath("/"); // 모든경로
			
			response.addCookie(cookie);
			
		}
		
		// 4. 세션 등록
		session.setAttribute("id", id);
		
		// 5. 로그인 성공 메세지 띄우고, 메인화면으로 이동
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = JScript.href("로그인 성공", "/views/main");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
	
	@GetMapping("/join")
	public String joinForm() {
		System.out.println("joinForm() 호출");
		return "views/join";
	}
	
	@PostMapping("/join")
	public ResponseEntity<String> join(UserVo userVo, String pwCheck){		
		
		// 1. 아이디 중복체크
		String id = userVo.getId();
		
		UserVo dbUserVo = userService.getUserById(id);
		System.out.println("dbUserVo : " + dbUserVo);
		
		if(dbUserVo != null) { // 이미 존재하는 아이디
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("이미 존재하는 아이디입니다.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 2. 비밀번호, 비밀번호 확인 서로 같은지 체크
		String pw = userVo.getPw();
		
		if (pw.equals(pwCheck) == false) { //비밀번호 서로 다를때
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("비밀번호가 서로 다릅니다.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}		
		// 아이디 체크, 비밀번호 중복검사 모두 통과했을 때
		System.out.println("수정 전 userVo : " + userVo);
		
		// 비밀번호 암호화하기
		String hashPw = BCrypt.hashpw(pw, BCrypt.gensalt());
		
		userVo.setPw(hashPw);
		
		System.out.println("수정 후 userVo : " + userVo);
		
		// 3. DB에 등록
		
		userService.insertUser(userVo);
		
		// 4. 회원가입 완료 메세지를 띄우고, 로그인 화면 이동
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = JScript.href("회원가입 완료", "/views/login");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
}





















