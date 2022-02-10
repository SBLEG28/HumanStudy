package com.yeon.cvd.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yeon.cvd.common.DataSource;
import com.yeon.cvd.notice.service.NoticeMapper;
import com.yeon.cvd.notice.service.NoticeService;
import com.yeon.cvd.notice.service.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	private SqlSession session = DataSource.dataSource().openSession(true);
	private NoticeMapper map = session.getMapper(NoticeMapper.class);

	@Override
	public List<NoticeVO> noticeSelectList() {
		return map.noticeSelectList();
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(NoticeVO vo) {
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeDelete(NoticeVO vo) {
		return map.noticeDelete(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {
		return map.noticeUpdate(vo);
	}

	@Override
	public void noticeHitUpdate(int id) {
		map.noticeHitUpdate(id);
	}

	@Override
	public List<NoticeVO> noticeSearch(String key, String str) {
		return map.noticeSearch(key, str);
	}

}
