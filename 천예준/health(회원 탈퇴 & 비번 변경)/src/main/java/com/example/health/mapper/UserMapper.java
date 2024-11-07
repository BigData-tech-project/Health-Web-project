package com.example.health.mapper;

import org.apache.ibatis.annotations.Param;

import com.example.health.model.UserVo;

public interface UserMapper {
	
	// = select =
	
	UserVo getUserById(String id);
	UserVo getUserPw(String pw);
	
	// = insert = 
	
	void insertUser(UserVo userVo);
	
	// = update = 
	void updatePw(@Param("id") String id, @Param("cPw") String cPw);
	
	// = delete = 
	void deleteUser(String id);
	
}