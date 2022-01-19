package com.human.ncs7;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BBS {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/list")
	public String list(Model model) {
		Ibbs bbs = sqlSession.getMapper(Ibbs.class);
	
		ArrayList<Post> alPost = bbs.getList();
		model.addAttribute("alPost", alPost);
	
		return "list";
	}
	
	@RequestMapping("/view")
	public String view(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		
		Ibbs bbs = sqlSession.getMapper(Ibbs.class);
		
		Post post = bbs.getView(id);
		model.addAttribute("post", post);
	
		return "write";
	}
	
	@RequestMapping("/compose")
	public String compose() {
		return "write";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String list(HttpServletRequest request) {
		String title= request.getParameter("title");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		Ibbs bbs = sqlSession.getMapper(Ibbs.class);
		bbs.writePost(title, name, content);
		
		return "redirect:/list";
	}
}
