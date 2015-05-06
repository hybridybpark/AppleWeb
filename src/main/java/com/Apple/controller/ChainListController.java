package com.Apple.controller;

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
	
	@RequestMapping("/chain/list/{chainname}")
	@ResponseBody
	public List<ShopInfo> getShopsByChain(@PathVariable String chainname){
		ShopInfoService infoService = applicationContext.getBean(ShopInfoService.class);
		
		List<ShopInfo> list = infoService.selectListByChain(chainname);
	
		return list;
	}
	
	@RequestMapping("/chain/chain/{chainname}")
	@ResponseBody
	public Chain getChainByName(@PathVariable String chainname){		
		
		ChainService chainService = applicationContext.getBean(ChainService.class);
		
		List<Chain> list = chainService.selectAll();
		
		Chain chain = new Chain();
		
		for(Chain c: list){
			if(c.getName().equals(chainname)){
				chain = c;
			}
		}
		
		return chain;
	}
}
