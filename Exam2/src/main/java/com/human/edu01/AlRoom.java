package com.human.edu01;

public class AlRoom {
	private int roomcode;
	private String name;
	private int howmuch;
	private int howmany;
	private int type;
	
	public AlRoom(int roomcode, String name, int howmuch, int howmany, int type) {
		super();
		this.roomcode = roomcode;
		this.name = name;
		this.howmuch = howmuch;
		this.howmany = howmany;
		this.type = type;
	}
	
	public AlRoom() {
		super();
	}
	
	public int getRoomcode() {
		return roomcode;
	}
	public void setRoomcode(int roomcode) {
		this.roomcode = roomcode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHowmuch() {
		return howmuch;
	}
	public void setHowmuch(int howmuch) {
		this.howmuch = howmuch;
	}
	public int getHowmany() {
		return howmany;
	}
	public void setHowmany(int howmany) {
		this.howmany = howmany;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
