package com.Apple.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MenuController {
	
	Logger log = Logger.getLogger(MenuController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/menu", method=RequestMethod.GET)
	public String chainList(){
		log.info("############################index");
		return "/Menu/Menu";
	}
	

}
