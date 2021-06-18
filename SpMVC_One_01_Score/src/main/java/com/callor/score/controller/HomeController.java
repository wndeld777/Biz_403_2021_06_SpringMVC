package com.callor.score.controller;


import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.score.service.StudentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	protected final StudentService studentService;
	public HomeController(StudentService studentService) {
		// TODO Auto-generated constructor stub
		this.studentService = studentService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		studentService.StudentList();
		
		return "home";
	}
	
}
