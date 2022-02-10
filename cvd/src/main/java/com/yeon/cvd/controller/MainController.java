package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;

public class MainController implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 처음 시작 화면
		return "main/main";
	}}
