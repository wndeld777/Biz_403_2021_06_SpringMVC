package com.callor.score.service.impl;

import org.springframework.stereotype.Service;

import com.callor.score.pesistance.StudentDao;
import com.callor.score.service.StudentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("studentV1")
public class StudentServiceImplV1 implements StudentService{

	protected final StudentDao studentDao;
	public StudentServiceImplV1(StudentDao studentDao) {
		this.studentDao = studentDao;
		
	}
	@Override
	public void StudentList() {
		// TODO Auto-generated method stub
		studentDao.selectAll();
	}

}
