package com.yeon.cvd.record.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface RecordMapper {
	
	List<RecordVO> recordSelectList(@Param("key") String key, @Param("str") String str);
	RecordVO recordSelect(RecordVO vo);
	int recordInsert(RecordVO vo);
	int recordDelete(RecordVO vo);
	int recordUpdate(RecordVO vo);

	List<RecordVO> recordSearch(@Param("key") String key, @Param("str") String str);

}
