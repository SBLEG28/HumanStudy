package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.member.service.Covid19MemberService;
import com.yeon.cvd.member.service.Covid19MemberVO;
import com.yeon.cvd.serviceImpl.Covid19MemberServiceImpl;

public class JoinController implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입
		Covid19MemberService covid19memberDAO = new Covid19MemberServiceImpl();
		Covid19MemberVO vo = new Covid19MemberVO();
		
		vo.setName(request.getParameter("name"));
		vo.setBirthday(request.getParameter("birthday"));
		vo.setGender(request.getParameter("gender"));
		vo.setPhoneNumber(request.getParameter("phoneNumber"));
		vo.setPassword(request.getParameter("password"));
		vo.setAddress(request.getParameter("address"));
		vo.setStartDate(request.getParameter("startDate"));
		vo.setAuthority(request.getParameter("authority"));
		
		int n = covid19memberDAO.memberInsert(vo);
		
		if(n != 0) {
			request.setAttribute("message", vo.getName() + "님 재택치료자로 등록되었습니다.");
		} else {
			request.setAttribute("message", "Error");
		}
		return "covid19member/memberJoinResult";
	}

}
