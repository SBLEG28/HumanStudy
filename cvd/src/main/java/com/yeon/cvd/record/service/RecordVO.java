package com.yeon.cvd.record.service;

public class RecordVO {
	private String name;
	private String phoneNumber;
	private double temperature;
	private int oxygenSaturation;
	private String symptom;
	private String recordTime;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public double getTemperature() {
		return temperature;
	}
	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}
	public int getOxygenSaturation() {
		return oxygenSaturation;
	}
	public void setOxygenSaturation(int oxygenSaturation) {
		this.oxygenSaturation = oxygenSaturation;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
	@Override
	public String toString() {
		return "RecordVO [name=" + name + ", phoneNumber=" + phoneNumber + ", temperature=" + temperature
				+ ", oxygenSaturation=" + oxygenSaturation + ", symptom=" + symptom + ", recordTime=" + recordTime
				+ "]";
	}
}
