package com.human.cafe;

public class Menu {
	private int code;
	private String name;
	private int price;
	
	public Menu(int code, String name, int price) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
	}
	
	public Menu() {
		super();
	}

	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
