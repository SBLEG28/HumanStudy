package com.human.edu;

public class UserInfo {
	private String id;
	private String password;
	private String name;
	private String gender;
	private String inter_1;
	private String inter_2;
	private String inter_3;
	private String sign_date;

	public UserInfo(String id, String password, String name, String gender, String inter_1, String inter_2, String inter_3, String sign_date) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.inter_1 = inter_1;
		this.inter_2 = inter_2;
		this.inter_3 = inter_3;
		this.sign_date = sign_date;
	}
	
	public UserInfo() {
		super();
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getInter_1() {
		return inter_1;
	}
	public void setInter_1(String inter_1) {
		this.inter_1 = inter_1;
	}
	public String getInter_2() {
		return inter_2;
	}
	public void setInter_2(String inter_2) {
		this.inter_2 = inter_2;
	}
	public String getInter_3() {
		return inter_3;
	}
	public void setInter_3(String inter_3) {
		this.inter_3 = inter_3;
	}
	
	public String getSign_date() {
		return sign_date;
	}

	public void setSign_date(String sign_date) {
		this.sign_date = sign_date;
	}
}
