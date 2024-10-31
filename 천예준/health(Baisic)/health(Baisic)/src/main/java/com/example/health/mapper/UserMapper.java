package com.example.health.mapper;

import com.example.health.model.UserVo;

public interface UserMapper {
	
	// = select =
	
	UserVo getUserById(String id);
	
	// = insert = 
	
	void insertUser(UserVo userVo);
	
	// = update = 
	
	
	// = delete = 
	
	
}
