package com.Apple.controller;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Chain;
import com.Apple.Model.ChainResult;
import com.Apple.Model.Post;
import com.Apple.Model.PostResult;
import com.Apple.Model.ShopInfo;
import com.Apple.Service.ChainService;
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
	
	@RequestMapping(value="/shopinfo",method=RequestMethod.POST)
	public @ResponseBody ChainResult getChain(@RequestBody String chainname){
		ChainService service = applicationContext.getBean(ChainService.class);
		
		ChainResult result = new ChainResult();
		
		result.setChain(service.selectOneChain(chainname));
		
		log.info("#########################"+result.getChain().name);
		
		return result;
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
	
	@RequestMapping(value="/shopinfo/review", method=RequestMethod.POST)	
	public @ResponseBody PostResult review_input(@RequestBody Post post){
		log.info("############################ shopinfo-review input");
		
		PostService service = applicationContext.getBean(PostService.class);
		post.setWRITEDATE(new Date().toString());
		
		
		PostResult result = new PostResult();
		result.setPost(post);
		
		try{
			service.insert(post);
			result.setStatus(true);
			result.setStatusText("OK");
			
		}catch(DataAccessException e){
			
			result.setStatus(false);
			result.setStatusText(e.getMessage());
		}
		
		
		return result;
	}
	
	@RequestMapping(value="/shopinfo/review_list/{businessNumber},{shopname}", method=RequestMethod.GET)
	@ResponseBody
	public List<Post> reviewList(@PathVariable String shopname,@PathVariable String businessNumber){
		log.info("############################ shopinfo-review");
		
		PostService service= applicationContext.getBean(PostService.class);
		
		ShopInfo shopinfo = new ShopInfo();
		
		shopinfo.setBUSINESSNUMBER(Integer.parseInt(businessNumber));
		shopinfo.setSHOPNAME(shopname);
		
		List<Post> list = service.selectShopPost(shopinfo);
		
		return list;
	}
}
