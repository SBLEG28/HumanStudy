package com.yeon.cvd;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yeon.cvd.common.Command;
import com.yeon.cvd.controller.HomeDeliveryPage;
import com.yeon.cvd.controller.JoinController;
import com.yeon.cvd.controller.JoinFormController;
import com.yeon.cvd.controller.LogOutController;
import com.yeon.cvd.controller.LoginController;
import com.yeon.cvd.controller.LoginFormController;
import com.yeon.cvd.controller.MainController;
import com.yeon.cvd.controller.NoticeDelete;
import com.yeon.cvd.controller.NoticeList;
import com.yeon.cvd.controller.NoticeSelect;
import com.yeon.cvd.controller.NoticeUpdate;
import com.yeon.cvd.controller.NoticeUpdateForm;
import com.yeon.cvd.controller.NoticeWrite;
import com.yeon.cvd.controller.NoticeWriteForm;
import com.yeon.cvd.controller.RecordDelete;
import com.yeon.cvd.controller.RecordList;
import com.yeon.cvd.controller.RecordWrite;
import com.yeon.cvd.controller.RecordWriteForm;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 초기값 등록 -> 1. 단 한번만 실행
		map.put("/main.do", new MainController()); // 메인화면

		// 로그인
		map.put("/loginForm.do", new LoginFormController());
		map.put("/login.do", new LoginController());
		map.put("/logout.do", new LogOutController());

		// 회원가입
		map.put("/joinForm.do", new JoinFormController());
		map.put("/join.do", new JoinController());

		// 공지사항
		map.put("/noticeList.do", new NoticeList());
		map.put("/noticeSelect.do", new NoticeSelect());
		map.put("/noticeWriteForm.do", new NoticeWriteForm());
		map.put("/noticeWrite.do", new NoticeWrite());
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm());
		map.put("/noticeUpdate.do", new NoticeUpdate());
		map.put("/noticeDelete.do", new NoticeDelete());

		// 증상기록
		map.put("/recordList.do", new RecordList());
		map.put("/recordWriteForm.do", new RecordWriteForm());
		map.put("/recordWrite.do", new RecordWrite());
		map.put("/recordDelete.do", new RecordDelete());
		
		// 홈배달 서비스
		map.put("/homeDeliveryPage.do", new HomeDeliveryPage());
		
		// 코로나 확진 api 요청
		//map.put("covidchart.do", new CovidChart2());
		}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// service 부분 실행 <요청 처리 구간>

		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = map.get(page); // 요청을 map에서 찾아온다
		String viewPage = command.run(request, response); // 요청을 처리하는 command 호출

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) {
				// ajax 처리
				PrintWriter out = response.getWriter();
				out.print(viewPage.substring(5));

				return;

			} else {
				viewPage = viewPage + ".tiles";
			}
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // 서버에서 접속-> 브라우저로 결과 돌림
		dispatcher.forward(request, response);
	}

}
