package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yeon.cvd.common.Command;

public class LogOutController implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃 기능
		HttpSession session = request.getSession();
		
		String name = (String) session.getAttribute("name");
		
		session.invalidate(); //session 객체제거
		
		return "main/main";
	}

}
