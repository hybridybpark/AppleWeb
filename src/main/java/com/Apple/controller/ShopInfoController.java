package com.Apple.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Post;
import com.Apple.Service.PostService;

@Controller
public class ShopInfoController {
	Logger log = Logger.getLogger(ShopInfoController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/shopinfo", method=RequestMethod.GET)
	public String shopinfo(){
		log.info("############################ shopinfo");
		return "/Shop/ShopInfo";
	}
	
	@RequestMapping(value="/shopinfo/info", method=RequestMethod.GET)
	public String info(){
		log.info("############################ shopinfo");
		return "/Shop/info";
	}
	
	@RequestMapping(value="/shopinfo/menu", method=RequestMethod.GET)
	public String menu(){
		log.info("############################ shopinfo");
		return "/Shop/menu";
	}
	
	@RequestMapping(value="/shopinfo/review", method=RequestMethod.GET)
	public String review(){
		log.info("############################ shopinfo");
		return "/Shop/review";
	}
	
	@RequestMapping(value="/shopinfo/review_input", method=RequestMethod.GET)
	public String review_input(){
		log.info("############################ shopinfo");
		return "/Shop/review_input";
	}
	
	@RequestMapping(value="/shopinfo/review", method=RequestMethod.POST)
	@ResponseBody
	public List<Post> reviewList(){
		log.info("############################ shopinfo-review");
		
		PostService service= applicationContext.getBean(PostService.class);
		
		List<Post> list = service.selectAll();
		
		return list;
	}
}
