package com.Apple.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/login")
public class loginController {
	Logger log = Logger.getLogger(loginController.class);
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		
		return "login";
	}
}
