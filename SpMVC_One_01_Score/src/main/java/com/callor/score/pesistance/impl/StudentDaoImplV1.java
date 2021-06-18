package com.callor.score.pesistance.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.callor.score.model.StudentVO;
import com.callor.score.pesistance.StudentDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository("studentDaoV1")
public class StudentDaoImplV1 implements StudentDao{
	protected final JdbcTemplate jdbcTemplate;
	public StudentDaoImplV1(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	 }
	
	@Override
	public int insert(StudentVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(StudentVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String pk) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<StudentVO> selectAll() {
		// TODO Auto-generated method stub
		String sql = " SELECT * FROM tbl_student ";
		
		List<StudentVO> students = jdbcTemplate.query(sql, new BeanPropertyRowMapper<StudentVO>(StudentVO.class));
		log.debug("SELECT {}",students.toString());
		return null;
	}

	@Override
	public StudentVO findByName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StudentVO findByNum() {
		// TODO Auto-generated method stub
		return null;
	}

}
