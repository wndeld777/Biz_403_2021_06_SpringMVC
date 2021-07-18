package com.honjal.honjal.service;

import java.util.List;

import com.honjal.honjal.model.CommentVO;

public interface CommentService {

	public List<CommentVO> selectAll(CommentVO commentVO) throws Exception;
	
	public CommentVO findByIdComment_num(Integer comment_num) throws Exception;
	
	public void insert(CommentVO commentVO) throws Exception;
	
	public void update(CommentVO contentVO) throws Exception;
	
	public void delete(Integer content_num) throws Exception;
}
