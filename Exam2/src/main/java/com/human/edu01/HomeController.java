package com.human.edu01;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		Menu menu = sqlSession.getMapper(Menu.class);
//		System.out.println(menu.getMenu());
//		model.addAttribute("alMenu", menu.getMenu());
		
		Room room = sqlSession.getMapper(Room.class);
		model.addAttribute("alRoom", room.getRoom());
		
		System.out.println(room.getRoom());
		return "home";
	}
	/*
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Locale locale, HttpServletRequest request) {
		Menu menu = sqlSession.getMapper(Menu.class);
		System.out.println("123");
		System.out.println(request.getParameter("name") + Integer.parseInt(request.getParameter("price")));
		
		menu.addMenu(request.getParameter("name"), Integer.parseInt(request.getParameter("price")));
		
		return "Redirect:/";
	}*/

	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public String del(Locale locale, HttpServletRequest request) {
		Room room = sqlSession.getMapper(Room.class);

		room.delRoom(Integer.parseInt(request.getParameter("code")));

		return "Redirect:/";
	}
}
