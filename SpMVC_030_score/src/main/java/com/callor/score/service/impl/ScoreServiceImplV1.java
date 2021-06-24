package com.callor.score.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.callor.score.dao.ext.ScoreDao;
import com.callor.score.model.ScoreDTO;
import com.callor.score.model.ScoreVO;
import com.callor.score.service.ScoreService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("scoreServiceV1")
public class ScoreServiceImplV1 implements ScoreService{

	protected final ScoreDao scDao;
	@Override
	public List<ScoreDTO> scoreAllList() {
		// TODO Auto-generated method stub
		List<ScoreDTO> scoreList = scDao.selectViewAll();
		log.debug("Score{}",scoreList.toString());
		return scoreList;
	}

	@Override
	public Map<String, Object> selectMaps() {
		// TODO Auto-generated method stub
		List<ScoreDTO> scViewList = scDao.selectViewAll();
		Map<String,Object> maps = new HashMap<String,Object>();
		maps.put("점수", scViewList);
		return maps;
	}

}
