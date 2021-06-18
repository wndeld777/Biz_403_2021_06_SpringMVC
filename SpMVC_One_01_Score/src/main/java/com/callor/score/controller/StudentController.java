package com.callor.score.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/students")
@Controller
public class StudentController {

	@RequestMapping(value= {"/",""},method=RequestMethod.GET)
	public String students() {
		log.debug("Students Root");
		return "students/list";
	}
	
	@RequestMapping(value= {"/",""},method=RequestMethod.GET)
	public String insert() {
		return "students/input";
	}
}
