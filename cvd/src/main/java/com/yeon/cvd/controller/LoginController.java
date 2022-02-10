package com.yeon.cvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ResponseBody;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.member.service.Covid19MemberService;
import com.yeon.cvd.member.service.Covid19MemberVO;
import com.yeon.cvd.serviceImpl.Covid19MemberServiceImpl;

public class LoginController implements Command {

	@ResponseBody
	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("application/x-www-form-urlencoded; charset=UTF-8"); 
		String path = "";

		// 로그인 기능
		Covid19MemberService covid19memberDAO = new Covid19MemberServiceImpl();
		Covid19MemberVO vo = new Covid19MemberVO();

		// 세션 객체 가져오기
		HttpSession session = request.getSession();

		vo.setPhoneNumber(request.getParameter("phoneNumber"));
		vo.setPassword(request.getParameter("password"));
		vo = covid19memberDAO.memberSelectOne(vo);

		if (vo != null) {
			// 로그인 후 세션값 담기
			session.setAttribute("phoneNumber", vo.getPhoneNumber()); 
			session.setAttribute("name", vo.getName()); 
			session.setAttribute("startDate", vo.getStartDate());
			session.setAttribute("authority", vo.getAuthority()); 

			path = "ajax:0," + vo.getPhoneNumber() + "," + vo.getName() + "," + vo.getStartDate() + "," + vo.getAuthority();
		} else {
			path = "ajax:1";
		}

		return path;
	}
}
