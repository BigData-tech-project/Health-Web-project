package com.example.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.health.repository.HealthRepository;

import java.util.Map;

@Service
public class HealthService {

    @Autowired
    private HealthRepository healthRepository;

    public Map<String, Object> getHealthDataByUserId(String userId) {
        return healthRepository.findHealthDataByUserId(userId);
    }
}
