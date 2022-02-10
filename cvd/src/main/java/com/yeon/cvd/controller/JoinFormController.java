package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;

public class JoinFormController implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 폼 호출
		return "covid19member/memberJoinForm";
	}

}
