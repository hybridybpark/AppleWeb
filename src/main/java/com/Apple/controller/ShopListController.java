package com.Apple.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopListController {
	
	Logger log = Logger.getLogger(ShopListController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/shoplist", method=RequestMethod.GET)
	public String shoplist(){
		log.info("############################index");
		return "/Main/ShopList";
	}	
}
