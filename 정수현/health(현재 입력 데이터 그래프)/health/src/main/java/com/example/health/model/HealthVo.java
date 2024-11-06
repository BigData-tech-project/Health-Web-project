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

    public HealthVo() {}

    public HealthVo(String userId, int maxpressure, int minpressure, int sugar, int rate, float temp, float weight) {
        this.userId = userId;
        this.maxpressure = maxpressure;
        this.minpressure = minpressure;
        this.sugar = sugar;
        this.rate = rate;
        this.temp = temp;
        this.weight = weight;
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

    @Override
    public String toString() {
        return "HealthVo [userId=" + userId + ", maxpressure=" + maxpressure + ", minpressure=" + minpressure
                + ", sugar=" + sugar + ", rate=" + rate + ", temp=" + temp + ", weight=" + weight + ", dateCreated="
                + dateCreated + "]";
    }
}