package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;

public class HomeDeliveryPage implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 홈배달 화면 출력
		return "homedelivery/homeDeliveryPage";
	}

}
