package com.example.health.service;

import org.springframework.stereotype.Component;

@Component
public class CacheClearTask {

    public void clearCache() {
        System.out.println("캐시가 삭제되었습니다.");
        // 캐시 삭제 로직이 여기에 추가됩니다.
    }
}