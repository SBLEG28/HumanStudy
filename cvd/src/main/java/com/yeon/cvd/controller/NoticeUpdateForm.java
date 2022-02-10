package com.yeon.cvd.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.notice.service.NoticeVO;
import com.yeon.cvd.serviceImpl.NoticeServiceImpl;

public class NoticeUpdateForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 수정
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("id")));
	
		request.setAttribute("notice", noticeDao.noticeSelect(vo));
		
	
		return "notice/noticeUpdateForm";
	}

}