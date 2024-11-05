package com.example.health.mapper;

import com.example.health.model.HealthVo;
import com.example.health.model.UserVo;

public interface HealthMapper {
	
	HealthVo getHealthById(String id);
	
	void insertHealth(HealthVo healthVo);
}
