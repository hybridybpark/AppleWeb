package com.Apple.controller;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class IndexController {
	
	Logger log = Logger.getLogger(IndexController.class);
	
	@RequestMapping(value="/in", method=RequestMethod.GET)
	public String index(){
		log.info("############################index");
		return "/Main/index";
	}
}
