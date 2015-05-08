package com.Apple.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Chain;
import com.Apple.Model.ShopInfo;
import com.Apple.Service.ChainService;
import com.Apple.Service.ShopInfoService;

@Controller
@RequestMapping("/chain")
public class ChainListController {
	
	Logger log = Logger.getLogger(ChainListController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(method=RequestMethod.GET)
	public String chainList(){
		log.info("############################index");
		return "/Main/ChainList";
	}		
	
	@RequestMapping(value="/name/{chainname}", method=RequestMethod.GET)
	public String chainList2(@PathVariable String chainname,HttpSession httpSession,HttpServletResponse response,Model model,HttpServletRequest request){
		log.info("############################"+chainname);		
		return "/Main/ChainList";
	}
	
	@RequestMapping(value="/list.json")
	@ResponseBody
	public List<Chain> getChainList(){
		ChainService service = applicationContext.getBean(ChainService.class);
		
		List<Chain> list = service.selectAll();
		
		return list;
	}
	
	@RequestMapping("/list/{chainname}")
	@ResponseBody
	public List<ShopInfo> getShopsByChain(@PathVariable String chainname){
		ShopInfoService infoService = applicationContext.getBean(ShopInfoService.class);
		
		List<ShopInfo> list = infoService.selectListByChain(chainname);
	
		return list;
	}
	
	@RequestMapping("/chain/{chainname}")
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
