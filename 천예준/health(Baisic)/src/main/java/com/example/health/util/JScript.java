package com.example.health.util;

public class JScript {
	public static String href(String alertMessage, String locationPath) {
		StringBuilder sb = new StringBuilder();
		sb.append("<scipt>");
		sb.append("alert('"+ alertMessage + "');");
		sb.append("location.href = '" + locationPath + "';");
		sb.append("</scipt>");
		return sb.toString();
	}
	public static String back(String alertMessage) {
		StringBuilder sb = new StringBuilder();
		sb.append("<scipt>");
		sb.append("alert('"+ alertMessage + "');");
		sb.append("history.back();"); //�ڷΰ���
		sb.append("</scipt>");
		return sb.toString();
	}
}
