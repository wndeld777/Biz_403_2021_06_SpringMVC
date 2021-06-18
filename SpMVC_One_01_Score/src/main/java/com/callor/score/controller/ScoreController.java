package com.callor.score.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/scores")
@Controller
public class ScoreController {

	@RequestMapping(value= {"/",""},method=RequestMethod.GET)
	public String scores() {
		log.debug("Scores Root");
		return "scores/list";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String insert() {
		return "scores/input";
	}
	
}
