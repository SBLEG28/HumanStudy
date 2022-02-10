package com.yeon.cvd.record.service;

import java.util.List;


public interface RecordService {
	List<RecordVO> recordSelectList(String key, String str);
	RecordVO recordSelect(RecordVO vo);
	int recordInsert(RecordVO vo);
	int recordDelete(RecordVO vo);
	int recordUpdate(RecordVO vo);

	List<RecordVO> recordSearch(String key, String str);
}
