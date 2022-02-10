package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.record.service.RecordService;
import com.yeon.cvd.record.service.RecordVO;
import com.yeon.cvd.serviceImpl.RecordServiceImpl;

public class RecordDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 증상기록 삭제 관리자
		RecordService recordDao = new RecordServiceImpl();
		RecordVO vo = new RecordVO();
	
		String temp = request.getParameter("temparam");
		System.out.println(request.getParameter("temparam"));
		
		String [] temp1 = temp.split("/");
		for(int i=0; i < temp1.length; i++)
		{
			System.out.println("----------------------");
			System.out.println("1. " + temp1[i].split("&")[0] + " " + temp1[i].split("&")[1]);

			vo.setPhoneNumber(temp1[i].split("&")[0]);
			vo.setRecordTime(temp1[i].split("&")[1]);
			
			System.out.println("2. " + vo.getRecordTime() + " " + vo.getPhoneNumber());
			
			recordDao.recordDelete(vo);
		}

		return "ajax:0";
	}

}
