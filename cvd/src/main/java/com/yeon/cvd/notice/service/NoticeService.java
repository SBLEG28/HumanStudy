package com.yeon.cvd.notice.service;

import java.util.List;

public interface NoticeService {
	List<NoticeVO> noticeSelectList();
	NoticeVO noticeSelect(NoticeVO vo);
	int noticeInsert(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	
	void noticeHitUpdate(int id); //조회수 증가
	List<NoticeVO> noticeSearch(String key, String str);

}
