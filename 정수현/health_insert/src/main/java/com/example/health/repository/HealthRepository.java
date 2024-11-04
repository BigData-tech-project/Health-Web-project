package com.example.health.repository;

import java.util.Map;

public interface HealthRepository {
    Map<String, Object> findHealthDataByUserId(String userId);
}
