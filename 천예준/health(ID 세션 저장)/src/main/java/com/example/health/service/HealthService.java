package com.example.health.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.health.mapper.HealthMapper;
import com.example.health.model.HealthVo;

@Service
@Transactional
public class HealthService {
	
	private HealthMapper healthMapper;

	public HealthService(HealthMapper HealthMapper) {
		super();
		this.healthMapper = healthMapper;
	}
	
	public HealthVo getHealthById(String id) {
		return healthMapper.getHealthById(id);
	}
	
	public void insertHealth(HealthVo healthVo) {
		healthMapper.insertHealth(healthVo);
	}
}
