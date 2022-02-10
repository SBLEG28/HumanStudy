package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.record.service.RecordService;
import com.yeon.cvd.serviceImpl.RecordServiceImpl;

public class RecordList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 기록 차트 화면 출력
		HttpSession session = request.getSession();
		
		System.out.println((String)session.getAttribute("authority") + " " + (String)session.getAttribute("phoneNumber"));
		
		RecordService recordDao = new RecordServiceImpl();
		request.setAttribute("record", recordDao.recordSelectList((String)session.getAttribute("authority"), (String)session.getAttribute("phoneNumber")));
		
		return "covid19record/recordList";
	}

}
