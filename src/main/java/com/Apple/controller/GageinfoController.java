package com.Apple.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class GageinfoController {
	
	
	@RequestMapping(value="/gage", method=RequestMethod.GET)
	public String InfoGET(Model model){
		
		return "Menu/gageinfo";
	}

}
