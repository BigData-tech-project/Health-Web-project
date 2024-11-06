package com.example.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.health.mapper.HealthMapper;
import com.example.health.model.HealthVo;

@Service
@Transactional
public class HealthService {
    
    private HealthMapper healthMapper;
    
    @Autowired
    public HealthService(HealthMapper healthMapper) {  // �Ķ���� �̸��� �ҹ��ڷ� ����
        this.healthMapper = healthMapper;
    }
    
    public HealthVo getHealthById(String id) {
        return healthMapper.getHealthById(id);
    }
    
    public void insertHealth(HealthVo healthVo) {
        healthMapper.insertHealth(healthVo);
    }
}