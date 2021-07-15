package com.honjal.honjal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class ReadController {

	@RequestMapping(value="/read",method=RequestMethod.POST)
	public String insert(Model model) {
		
		return "home";
		
	}
}
