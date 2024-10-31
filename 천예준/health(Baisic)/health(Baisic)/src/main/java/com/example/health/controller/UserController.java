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
		// 1. id 議댁옱�뿬遺�
		UserVo dbUserVo = userService.getUserById(id);
		
		if(dbUserVo == null) { // 議댁옱�븯吏� �븡�뒗 �븘�씠�뵒
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("�븘�씠�뵒媛� 議댁옱�븯吏� �븡�뒿�땲�떎.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 2. 鍮꾨�踰덊샇 泥댄겕
		Boolean isPwRight = BCrypt.checkpw(pw, dbUserVo.getPw());
		
		if(isPwRight == false) { // 鍮꾨�踰덊샇媛� ��由�
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("鍮꾨�踰덊샇媛� ���졇�뒿�땲�떎.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 3. 濡쒓렇�씤 �쑀吏� 泥댄겕 �솗�씤
		if(rememberMe == true) { // 濡쒓렇�씤 泥댄겕 �떆
			//荑좏궎 �벑濡�
			Cookie cookie = new Cookie("userId", id);
			cookie.setMaxAge(60*60*24*7); // 荑좏궎 �닔紐� �꽕�젙(珥덈떒�쐞)
			cookie.setPath("/"); // 紐⑤뱺寃쎈줈
			
			response.addCookie(cookie);
			
		}
		
		// 4. �꽭�뀡 �벑濡�
		session.setAttribute("id", id);
		
		// 5. 濡쒓렇�씤 �꽦怨� 硫붿꽭吏� �쓣�슦怨�, 硫붿씤�솕硫댁쑝濡� �씠�룞
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = JScript.href("濡쒓렇�씤 �꽦怨�", "/views/main");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
	
	@GetMapping("/join")
	public String joinForm() {
		System.out.println("joinForm() �샇異�");
		return "views/join";
	}
	
	@PostMapping("/join")
	public ResponseEntity<String> join(UserVo userVo, String pwCheck){		
		
		// 1. �븘�씠�뵒 以묐났泥댄겕
		String id = userVo.getId();
		
		UserVo dbUserVo = userService.getUserById(id);
		System.out.println("dbUserVo : " + dbUserVo);
		
		if(dbUserVo != null) { // �씠誘� 議댁옱�븯�뒗 �븘�씠�뵒
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("�씠誘� 議댁옱�븯�뒗 �븘�씠�뵒�엯�땲�떎.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}
		
		// 2. 鍮꾨�踰덊샇, 鍮꾨�踰덊샇 �솗�씤 �꽌濡� 媛숈�吏� 泥댄겕
		String pw = userVo.getPw();
		
		if (pw.equals(pwCheck) == false) { //鍮꾨�踰덊샇 �꽌濡� �떎瑜쇰븣
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			String str = JScript.back("鍮꾨�踰덊샇媛� �꽌濡� �떎由낅땲�떎.");
			
			return new ResponseEntity<String>(str, headers, HttpStatus.OK);
		}		
		// �븘�씠�뵒 泥댄겕, 鍮꾨�踰덊샇 以묐났寃��궗 紐⑤몢 �넻怨쇳뻽�쓣 �븣
		System.out.println("�닔�젙 �쟾 userVo : " + userVo);
		
		// 鍮꾨�踰덊샇 �븫�샇�솕�븯湲�
		String hashPw = BCrypt.hashpw(pw, BCrypt.gensalt());
		
		userVo.setPw(hashPw);
		
		System.out.println("�닔�젙 �썑 userVo : " + userVo);
		
		// 3. DB�뿉 �벑濡�
		
		userService.insertUser(userVo);
		
		// 4. �쉶�썝媛��엯 �셿猷� 硫붿꽭吏�瑜� �쓣�슦怨�, 濡쒓렇�씤 �솕硫� �씠�룞
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = JScript.href("�쉶�썝媛��엯 �셿猷�", "/views/login");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
}
