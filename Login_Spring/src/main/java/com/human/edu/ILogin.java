package com.human.edu;

public interface ILogin {
	UserInfo getUser(String id);
	void insertUser(String id, String psw, String name, String gender, String inter1, String inter2, String inter3);
	void updatetUser1(String id);
	void updatetUser2(String id);
}
