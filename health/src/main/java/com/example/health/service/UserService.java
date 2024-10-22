package com.example.health.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    public boolean validateUser(String username, String password) {
        // 실제 로그인 검증 로직 구현
        return "user".equals(username) && "password".equals(password);
    }
}
