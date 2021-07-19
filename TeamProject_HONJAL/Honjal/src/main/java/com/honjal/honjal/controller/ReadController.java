package com.honjal.honjal.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.honjal.honjal.model.CommentVO;
import com.honjal.honjal.model.ContentVO;
import com.honjal.honjal.model.MemberVO;
import com.honjal.honjal.service.CommentService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/read")
public class ReadController {

	protected final CommentService commentService;
	
	@RequestMapping(value= {"/",""},method=RequestMethod.POST)
	public String insert(Model model) {
		
		return "home";
		
	}
	
	
}
