package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.serviceImpl.NoticeServiceImpl;

public class NoticeList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 목록
		NoticeService noticeDao = new NoticeServiceImpl();
		request.setAttribute("notice", noticeDao.noticeSelectList());
		
		return "notice/noticeList";
	}

}
