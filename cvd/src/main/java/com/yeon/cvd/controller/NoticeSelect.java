package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.notice.service.NoticeVO;
import com.yeon.cvd.serviceImpl.NoticeServiceImpl;

public class NoticeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 내용보기
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		vo = noticeDao.noticeSelect(vo);
		
		// 조회수 증가
		if(vo != null) {
			noticeDao.noticeHitUpdate(vo.getNoticeId());
			request.setAttribute("notice", vo);
		} else {
			request.setAttribute("message", "검색 결과가 없습니다.");
			return "notice/noticeError";
		}
		return "notice/noticeSelect";
	}

}
