package com.example.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.health.mapper.HealthMapper;
import com.example.health.model.HealthVo;

@Service
@Transactional
public class HealthService {
    
    private final HealthMapper healthMapper;
    
    @Autowired
    public HealthService(HealthMapper healthMapper) {
        this.healthMapper = healthMapper;
    }
    
    public HealthVo getHealthById(String id) {
        return healthMapper.getHealthById(id);
    }
    
    public void insertHealth(HealthVo healthVo) {
        healthMapper.insertHealth(healthVo);
    }
    
    // ����� ID�� �ش��ϴ� ��� �����͸� �������� �޼��� ����
    public List<HealthVo> getAllDataByUserId(String userId) {
        return healthMapper.findAllByUserId(userId);
    }
}
