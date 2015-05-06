package com.Apple.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Chain;
import com.Apple.Service.ChainService;

@Controller
public class ChainListController {
	
	Logger log = Logger.getLogger(ChainListController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/chain", method=RequestMethod.GET)
	public String chainList(){
		log.info("############################index");
		return "/Main/ChainList";
	}
	
	@RequestMapping(value="/chain/list.json")
	@ResponseBody
	public List<Chain> getChainList(){
		ChainService service = applicationContext.getBean(ChainService.class);
		
		List<Chain> list = service.selectAll();
		
		return list;
	}
}
