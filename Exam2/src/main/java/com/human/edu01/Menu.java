package com.human.edu01;

import java.util.ArrayList;

public interface Menu {
	ArrayList<AlMenu> getMenu();
	void addMenu(String name, int price);
}
