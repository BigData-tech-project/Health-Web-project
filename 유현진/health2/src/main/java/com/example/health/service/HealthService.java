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
    
    // 사용자 ID에 해당하는 모든 Health 데이터를 가져오는 메서드
    public List<HealthVo> getAllDataByUserId(String userId) {
        return healthMapper.findAllByUserId(userId);
    }
    
    // userinfo 테이블에서 사용자 정보(성별, 나이)를 가져오는 메서드
    public HealthVo getUserInfoById(String id) {
        return healthMapper.getUserInfoById(id);
    }
}
