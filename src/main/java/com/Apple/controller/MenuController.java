package com.Apple.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Menu;
import com.Apple.Service.MenuService;

@Controller
public class MenuController {
Logger log = Logger.getLogger(IndexController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
//	@RequestMapping(value="/menu", method=RequestMethod.GET)
//	public String index(){
//		log.info("############################index");
//		return "/AppleViews/Shop/Menu";
//	}
	
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
		
			
		//출력
		@ResponseBody
		@RequestMapping(value="/Menu/list.json")
		public List<Menu> getMenuList(){
			MenuService service = applicationContext.getBean(MenuService.class);
			
			List<Menu> list = service.selectAll();
			
			return list;
		}
		
		
		@ResponseBody
		@RequestMapping(value="/Menucategory/list.json")
		public List<Menu> getCategoryList(){
			MenuService service = applicationContext.getBean(MenuService.class);
			
			List<Menu> list = service.selectcategory();
			
			return list;
		}
		

		
}
