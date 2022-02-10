package com.yeon.cvd.member.service;

import java.util.List;

public interface Covid19MemberService {
	// 회원 전체조회 R
	List<Covid19MemberVO> memberSelectList();
	
	// 회원 단건조회 R
	Covid19MemberVO memberSelectOne(Covid19MemberVO vo);
	
	// 회원 등록 C
	int memberInsert(Covid19MemberVO vo);
	
	// 회원 수정 U
	int memberUpdate(Covid19MemberVO vo);
	
	// 회원 삭제 D
	int memberDelete(Covid19MemberVO vo);

	
}
