package com.example.health.model;

public class HealthVo {
	private String id;
	private int maxpressure;
	private int minpressure;
	private int sugar;
	private int rate;
	private int temp;
	private int weight;
	
	public HealthVo(String id, int maxpressure, int minpressure, int sugar, int rate, int temp, int weight) {
		super();
		this.id = id;
		this.maxpressure = maxpressure;
		this.minpressure = minpressure;
		this.sugar = sugar;
		this.rate = rate;
		this.temp = temp;
		this.weight = weight;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public int getTemp() {
		return temp;
	}
	public void setTemp(int temp) {
		this.temp = temp;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	@Override
	public String toString() {
		return "HealthVo [id=" + id + ", maxpressure=" + maxpressure + ", minpressure=" + minpressure + ", sugar="
				+ sugar + ", rate=" + rate + ", temp=" + temp + ", weight=" + weight + "]";
	}
	
}
