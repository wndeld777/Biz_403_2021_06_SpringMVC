package com.callor.score.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.callor.score.model.ScoreDTO;
import com.callor.score.service.ScoreService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/score")
public class ScoreController {
	
	protected final ScoreService scService;

	@RequestMapping(value= {"/",""},method=RequestMethod.GET)
	public String scoreList(Model model) {
		List<ScoreDTO> scoreList = scService.scoreAllList();
		log.debug("Score{}",scoreList.toString());
		model.addAttribute("SCORES",scoreList);
		
		model.addAttribute("BODY","SCORE_VIEW");
		return "home";
	}
	
	@ResponseBody
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public Map<String,Object> score(){
		Map<String,Object> maps = scService.selectMaps();
		
		return maps;
		
	}
}
