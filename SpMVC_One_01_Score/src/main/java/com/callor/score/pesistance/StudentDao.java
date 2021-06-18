package com.callor.score.pesistance;

import java.util.List;

import com.callor.score.model.StudentVO;

public interface StudentDao extends GenericDao<StudentVO, String>{

	// 전체 리스트 조회
	public List<StudentVO> selectAll();
	
	// 학생이름으로 찾기
	public StudentVO findByName();
	
	// 학번으로 찾기
	public StudentVO findByNum();
	
}
