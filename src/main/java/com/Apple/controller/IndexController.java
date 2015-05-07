package com.Apple.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Chain;
import com.Apple.Model.ShopInfo;
import com.Apple.Service.ChainService;
import com.Apple.Service.ShopInfoService;

@Controller
public class IndexController {
	
	Logger log = Logger.getLogger(IndexController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(){
		log.info("############################index");
		return "/Main/index";
	}
	
	@RequestMapping(value="/list/{category}")
	@ResponseBody
	public List<ShopInfo> allList(@PathVariable String category){
		ShopInfoService infoService = applicationContext.getBean(ShopInfoService.class);
		
		List<ShopInfo> list = new ArrayList<ShopInfo>();
		
		if(category.equals("ALL")){
			list = infoService.selectAll();
		}else{
			list = infoService.selectListByCategory(category);
		}	 
		
		return list;
	}
	
	
}
