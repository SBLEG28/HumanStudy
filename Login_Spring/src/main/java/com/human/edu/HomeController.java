package com.human.edu;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;

@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", produces = "application/json;charset=utf-8")
	public String home(Model model, HttpServletRequest req) {
		System.out.println("-- 홈2 -- ");
		model.addAttribute("uid", req.getParameter("id"));

		return "home";
	}

	@RequestMapping(value = "/login", produces = "application/json;charset=utf-8")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/signon", produces = "application/json;charset=utf-8")
	public String singon() {
		return "signon";
	}

	@ResponseBody
	@RequestMapping(value = "/lgin", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public String lgin(HttpServletRequest req) {
		try {
			ILogin login=sqlSession.getMapper(ILogin.class);
			login.updatetUser1(req.getParameter("id"));
			
		} catch(Exception e) {
			System.out.println(e.toString());
			return "fail";
		}
		
		System.out.println("ok");
		return "ok";
	}
	
	@RequestMapping(value = "/lgout", produces = "application/json;charset=utf-8")
	public String lgout(HttpServletRequest req) {
		try {
			System.out.println("LOGOUT");
			System.out.println(req.getParameter("id"));
			
			ILogin login=sqlSession.getMapper(ILogin.class);
			login.updatetUser2(req.getParameter("id"));
			
		} catch(Exception e) {
			System.out.println(e.toString());
		}
		
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value = "/userinfo", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public String login_check(HttpServletRequest req) {
		ILogin login=sqlSession.getMapper(ILogin.class);
		UserInfo info=login.getUser(req.getParameter("id"));
		
		System.out.println("-- 로그인 -- ");	
		JSONObject jo=new JSONObject();
		
		if(info == null) {
			jo.put("id","");
			jo.put("pwd","");
		}
		else {
			jo.put("id",info.getId());
			jo.put("pwd",info.getPassword());
		}
		
		return jo.toString();
	}
	
	@ResponseBody
	@RequestMapping(value = "/signup", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public String signup(HttpServletRequest req) {
		String[] arr = req.getParameterValues("inter");
		
//		System.out.println("-- 회원가입 -- ");		
//		System.out.println(req.getParameter("id") + " " + 
//							req.getParameter("psw")+ " " + 
//							req.getParameter("name")+ " " + 
//							req.getParameter("gender")+ " " + 
//							arr[0]+
//							arr[1]+
//							arr[2]);
		
		try {
			ILogin login=sqlSession.getMapper(ILogin.class);
			login.insertUser(req.getParameter("id"),
							req.getParameter("psw"),
							req.getParameter("name"),
							req.getParameter("gender"),
							arr[0],
							arr[1],
							arr[2]
							);
			
		} catch(Exception e) {
			System.out.println(e.toString());
			return "fail";
		}
		
		System.out.println("ok");
		return "ok";
	}
	
}
