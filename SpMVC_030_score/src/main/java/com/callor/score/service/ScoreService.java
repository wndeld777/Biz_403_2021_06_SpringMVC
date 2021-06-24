package com.callor.score.service;

import java.util.List;
import java.util.Map;

import com.callor.score.model.ScoreDTO;

public interface ScoreService {

	
	public List<ScoreDTO> scoreAllList();
	public Map<String,Object> selectMaps();
}
