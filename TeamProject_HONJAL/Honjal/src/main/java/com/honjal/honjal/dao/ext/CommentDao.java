package com.honjal.honjal.dao.ext;

import com.honjal.honjal.dao.GenericDao;
import com.honjal.honjal.model.CommentVO;
import com.honjal.honjal.model.ContentVO;

public interface CommentDao extends GenericDao<CommentVO, String>{

	public CommentVO findByIdComment_num(Integer comment_num);
}
