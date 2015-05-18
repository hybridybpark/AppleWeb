package com.Apple.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Apple.Model.MenuOption;
import com.Apple.Service.MenuOptionService;

@Controller
public class MenuOptionController {
	
	Logger log = Logger.getLogger(IndexController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/menuoption", method=RequestMethod.GET)
	public String index(){
		log.info("############################index");
		return "/Menu/Menu";
	}
	
	//입력
		@RequestMapping("/MenuOption.do")
		public String insertMenuOption(@RequestParam Map<String, Object> paramMap){
			MenuOptionService service = applicationContext.getBean(MenuOptionService.class);
			
			MenuOption menuop = new MenuOption(); 
			
			menuop.setOPTIONNAME(paramMap.get("optionname").toString());
			menuop.setMENUNAME(paramMap.get("menuname").toString());
			menuop.setMENUSID((Integer) paramMap.get("menusid"));
			menuop.setOPTIONPRICE((Integer) paramMap.get("optionprice"));
			
			service.insert(menuop);		
			
			return "redirect:/Apple/Business/BusinessMemberRegistrationManagementPage";
		}
}
