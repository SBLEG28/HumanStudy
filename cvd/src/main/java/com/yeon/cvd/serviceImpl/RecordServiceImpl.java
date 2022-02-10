package com.yeon.cvd.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yeon.cvd.common.DataSource;
import com.yeon.cvd.record.service.RecordMapper;
import com.yeon.cvd.record.service.RecordService;
import com.yeon.cvd.record.service.RecordVO;

public class RecordServiceImpl implements RecordService {
	private SqlSession session = DataSource.dataSource().openSession(true);
	private RecordMapper map = session.getMapper(RecordMapper.class);

	

	@Override
	public RecordVO recordSelect(RecordVO vo) {
		return map.recordSelect(vo);
	}

	@Override
	public int recordInsert(RecordVO vo) {
		return map.recordInsert(vo);
	}

	@Override
	public int recordDelete(RecordVO vo) {
		return map.recordDelete(vo);
	}

	@Override
	public int recordUpdate(RecordVO vo) {
		return map.recordUpdate(vo);
	}

	@Override
	public List<RecordVO> recordSearch(String key, String str) {
		return map.recordSearch(key, str);
	}

	@Override
	public List<RecordVO> recordSelectList(String key, String str) {
		return map.recordSelectList(key, str);
	}

}
