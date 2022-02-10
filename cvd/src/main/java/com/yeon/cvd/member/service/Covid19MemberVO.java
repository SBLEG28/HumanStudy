package com.yeon.cvd.member.service;

public class Covid19MemberVO {
	private String name;
	private String birthday;
	private String gender;
	private String phoneNumber;
	private String password;
	private String address;
	private String startDate;
	private String authority;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	@Override
	public String toString() {
		return "Covid19MemberVO [name=" + name + ", birthday=" + birthday + ", gender=" + gender + ", phoneNumber="
				+ phoneNumber + ", password=" + password + ", address=" + address + ", startDate=" + startDate
				+ ", authority=" + authority + "]";
	}
	

		
}
