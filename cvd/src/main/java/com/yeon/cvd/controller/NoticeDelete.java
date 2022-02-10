package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.notice.service.NoticeVO;
import com.yeon.cvd.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {
	

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 삭제 -> 리스트 페이지
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		
		request.setAttribute("notice", noticeDao.noticeDelete(vo));

		return "ajax:0";
	}

}
