package com.example.health.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class UserVo {
	private String id;
	private String pw;
	private String name;
	private String gender;
	private int age;
	
	
}
