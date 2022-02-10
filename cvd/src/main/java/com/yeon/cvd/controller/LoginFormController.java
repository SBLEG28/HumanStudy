package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;

public class LoginFormController implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 폼 화면
		return "covid19member/memberLoginForm";
	}

}
