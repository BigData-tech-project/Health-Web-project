package com.example.health.model;

import java.sql.Timestamp;

public class HealthVo {
    private String userId;
    private int maxpressure;
    private int minpressure;
    private int sugar;
    private int rate;
    private float temp;
    private float weight;
    private Timestamp dateCreated;
    private String gender; // 성별 추가
    private int age;       // 나이 추가

    public HealthVo() {}

    public HealthVo(String userId, int maxpressure, int minpressure, int sugar, int rate, float temp, float weight, String gender, int age) {
        this.userId = userId;
        this.maxpressure = maxpressure;
        this.minpressure = minpressure;
        this.sugar = sugar;
        this.rate = rate;
        this.temp = temp;
        this.weight = weight;
        this.gender = gender;
        this.age = age;
    }

    // Getter 및 Setter 메서드
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getMaxpressure() {
        return maxpressure;
    }

    public void setMaxpressure(int maxpressure) {
        this.maxpressure = maxpressure;
    }

    public int getMinpressure() {
        return minpressure;
    }

    public void setMinpressure(int minpressure) {
        this.minpressure = minpressure;
    }

    public int getSugar() {
        return sugar;
    }

    public void setSugar(int sugar) {
        this.sugar = sugar;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public float getTemp() {
        return temp;
    }

    public void setTemp(float temp) {
        this.temp = temp;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public Timestamp getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Timestamp dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "HealthVo [userId=" + userId + ", maxpressure=" + maxpressure + ", minpressure=" + minpressure
                + ", sugar=" + sugar + ", rate=" + rate + ", temp=" + temp + ", weight=" + weight 
                + ", dateCreated=" + dateCreated + ", gender=" + gender + ", age=" + age + "]";
    }
}
