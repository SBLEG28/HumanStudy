package com.yeon.cvd.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.notice.service.NoticeVO;
import com.yeon.cvd.serviceImpl.NoticeServiceImpl;

public class NoticeWrite implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 글 등록
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeContent(request.getParameter("noticeContent"));
		vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		
		String viewPage = null;
		
		int n = noticeDao.noticeInsert(vo);
		if(n != 0) {
			viewPage = "noticeList.do";
		} else {
			request.setAttribute("message", "글 등록에 실패 했습니다.");
			viewPage = "notice/noticeError";
		}
		return viewPage;
	}

}
