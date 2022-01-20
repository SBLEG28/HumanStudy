package com.human.cafe;

import java.util.ArrayList;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		iCafe cafe = sqlSession.getMapper(iCafe.class);
		
		model.addAttribute("alMenu", cafe.getMenuList());
		return "home";
	}
	
	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	public String list() {
		iCafe cafe = sqlSession.getMapper(iCafe.class);
		ArrayList<Menu> m = cafe.getMenuList();
		
//		System.out.println("----------------------");
		
		JSONArray j = new JSONArray();
		JSONObject jo;
		
		for(int i = 0; i < m.size(); i++) {
			jo = new JSONObject();
			jo.put("code", m.get(i).getCode());
			jo.put("name", m.get(i).getName());
			jo.put("price", m.get(i).getPrice());
//			System.out.println("asddsaasdassda" + jo);
			j.add(jo);
		}
		
		return j.toString();
	}
}
