package com.example.health.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    public boolean validateUser(String username, String password) {
        // ���� �α��� ���� ���� ����
        return "user".equals(username) && "password".equals(password);
    }
}
