package com.yeon.cvd.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.notice.service.NoticeVO;
import com.yeon.cvd.serviceImpl.NoticeServiceImpl;

public class NoticeUpdate implements Command {
	private String viewPage;
	
	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 글 수정하기
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("id")));
		vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeContent(request.getParameter("noticeContent"));
		
		int n = noticeDao.noticeUpdate(vo);
		
		if(n != 0) {
			viewPage = "noticeList.do";
		} else {
			request.setAttribute("message", "공지사항 변경에 실패했습니다.");
			viewPage = "notice/noticeError";
		}
		
		return viewPage;
	}

}
