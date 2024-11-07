package com.example.health.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.health.mapper.UserMapper;
import com.example.health.model.UserVo;

@Service
@Transactional
public class UserService {
	
	private UserMapper userMapper;

	
	public UserService(UserMapper userMapper) {
		super();
		this.userMapper = userMapper;
	}
	
	public UserVo getUserById(String id) {
		
		return userMapper.getUserById(id);
	}
	
	public void insertUser(UserVo userVo) {
		userMapper.insertUser(userVo);
	}
	
}