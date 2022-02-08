package com.human.edu01;

import java.util.ArrayList;

public interface Room {
	ArrayList<AlRoom> getRoom();
	void delRoom(int code);
	void addRoom(String name, int price, int hmp, int type);
	void editRoom(int code, String name, int price, int hmp, int type);
}
