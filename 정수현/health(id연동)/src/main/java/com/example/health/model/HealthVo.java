package com.example.health.model;

public class HealthVo {
    private String userId;  // �α����� ������� ID
    private int maxPressure;
    private int minPressure;
    private int sugar;
    private int rate;
    private float temp;
    private float weight;
    
    // �⺻ ������
    public HealthVo() {}

    // ��� �ʵ带 �����ϴ� ������
    public HealthVo(String userId, int maxPressure, int minPressure, int sugar, int rate, float temp, float weight) {
        this.userId = userId;
        this.maxPressure = maxPressure;
        this.minPressure = minPressure;
        this.sugar = sugar;
        this.rate = rate;
        this.temp = temp;
        this.weight = weight;
    }
    
    // Getter �� Setter �޼���
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public int getMaxPressure() {
        return maxPressure;
    }
    public void setMaxPressure(int maxPressure) {
        this.maxPressure = maxPressure;
    }
    public int getMinPressure() {
        return minPressure;
    }
    public void setMinPressure(int minPressure) {
        this.minPressure = minPressure;
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

    @Override
    public String toString() {
        return "HealthVo [userId=" + userId + ", maxPressure=" + maxPressure + ", minPressure=" + minPressure 
                + ", sugar=" + sugar + ", rate=" + rate + ", temp=" + temp + ", weight=" + weight + "]";
    }
}
