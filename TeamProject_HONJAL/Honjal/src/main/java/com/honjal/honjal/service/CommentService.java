package com.honjal.honjal.service;

import java.util.List;

import com.honjal.honjal.model.CommentVO;

public interface CommentService {

	public List<CommentVO> selectAll();
	
	public CommentVO findByIdComment_num(Integer comment_num) throws Exception;
	
	public void insert(CommentVO commentVO) throws Exception;
	
	public void update(CommentVO commentVO) throws Exception;
	
	public void delete(Integer comment_num) throws Exception;
}
