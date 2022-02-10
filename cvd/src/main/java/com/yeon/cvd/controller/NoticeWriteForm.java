package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;

public class NoticeWriteForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 글쓰기 폼 화면
		return "notice/noticeWriteForm";
	}

}
