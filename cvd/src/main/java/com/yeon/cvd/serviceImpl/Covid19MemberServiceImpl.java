package com.yeon.cvd.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yeon.cvd.common.DataSource;
import com.yeon.cvd.member.service.Covid19MemberMapper;
import com.yeon.cvd.member.service.Covid19MemberService;
import com.yeon.cvd.member.service.Covid19MemberVO;

public class Covid19MemberServiceImpl implements Covid19MemberService{
	private SqlSession sqlSession = DataSource.dataSource().openSession(true); //오토커밋
	private Covid19MemberMapper map = sqlSession.getMapper(Covid19MemberMapper.class);
	
	@Override
	public List<Covid19MemberVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public Covid19MemberVO memberSelectOne(Covid19MemberVO vo) {
		return map.memberSelectOne(vo);
	}

	@Override
	public int memberInsert(Covid19MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(Covid19MemberVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(Covid19MemberVO vo) {
		return map.memberDelete(vo);
	}

}
