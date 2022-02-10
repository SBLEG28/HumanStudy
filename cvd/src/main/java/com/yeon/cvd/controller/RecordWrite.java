package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.record.service.RecordService;
import com.yeon.cvd.record.service.RecordVO;
import com.yeon.cvd.serviceImpl.RecordServiceImpl;

public class RecordWrite implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 증상 기록
		RecordService recordDao = new RecordServiceImpl();
		RecordVO vo = new RecordVO();
		
		vo.setName(request.getParameter("name"));
		vo.setPhoneNumber(request.getParameter("phoneNumber"));
		vo.setTemperature(Double.parseDouble(request.getParameter("temperature")));
		vo.setOxygenSaturation(Integer.parseInt(request.getParameter("oxygenSaturation")));
		vo.setSymptom(request.getParameter("symptom"));
		vo.setRecordTime(request.getParameter("recordTime"));
		
		String viewPage = null;
		
		int n = recordDao.recordInsert(vo);
		
		if(n != 0) {
			viewPage = "recordList.do";
		} else {
			request.setAttribute("message", "글 등록에 실패 했습니다.");
			viewPage = "covid19record/recordError";
		}
		
		return viewPage;
	}

}
