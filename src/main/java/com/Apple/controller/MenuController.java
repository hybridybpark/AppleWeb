package com.Apple.controller;

import java.util.Date;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Apple.Model.Menu;
import com.Apple.Model.QnA;
import com.Apple.Service.MenuService;
import com.Apple.Service.QnAService;

@Controller
public class MenuController {
Logger log = Logger.getLogger(IndexController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/menu", method=RequestMethod.GET)
	public String index(){
		log.info("############################index");
		return "/Menu/Menu";
	}
	
	//입력
		@RequestMapping("/Menu.do")
		public String insertMenu(@RequestParam Map<String, Object> paramMap){
			MenuService service = applicationContext.getBean(MenuService.class);
			
			Menu menu = new Menu(); 
			
			menu.setMname(paramMap.get("mname").toString());
			menu.setMprice((Integer) paramMap.get("mprice"));
			menu.setMimage(paramMap.get("mimage").toString());
			menu.setMdesc(paramMap.get("mdesc").toString());
			menu.setMcategory(paramMap.get("mcategory").toString());
			menu.setSname(paramMap.get("sname").toString());
			menu.setBnumber((Integer) paramMap.get("bnumber"));
			
			service.insert(menu);		
			
			return "redirect:/Apple/Business/BusinessMemberRegistrationManagementPage";
		}
}
