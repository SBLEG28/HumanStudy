package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;

public class RecordWriteForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		// 증상기록 폼 화면
		return "covid19record/recordWriteForm";
	}

}
