package com.yeon.cvd.notice.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface NoticeMapper {
	List<NoticeVO> noticeSelectList();
	NoticeVO noticeSelect(NoticeVO vo);
	int noticeInsert(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	
	void noticeHitUpdate(int id); //조회수 증가
	List<NoticeVO> noticeSearch(@Param("key") String key, @Param("str") String str);
}
