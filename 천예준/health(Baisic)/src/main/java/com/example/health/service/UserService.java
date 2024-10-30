package com.example.health.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.health.mapper.UserMapper;
import com.example.health.model.UserVo;

@Service
@Transactional
public class UserService {
	
	private UserMapper userMapper;

	// 생성자를 만들어 줘야 서비스에서
	// Mapper를 사용하겠다고 스프링에 알려주는거
	// 의존성 주입
	public UserService(UserMapper userMapper) {
		super();
		this.userMapper = userMapper;
	}
	
	public UserVo getUserById(String id) {
		
		
		return userMapper.getUserById(id);
	}
	
	public  void insertUser(UserVo userVo) {
		userMapper.insertUser(userVo);
	}
	
}
