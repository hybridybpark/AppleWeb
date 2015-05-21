package com.Apple.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Apple.Dao.QnADao;
import com.Apple.Model.Account;
import com.Apple.Model.AdminLogin;
import com.Apple.Model.AdminLoginResult;
import com.Apple.Model.Business;
import com.Apple.Model.Menu;
import com.Apple.Model.QnA;
import com.Apple.Model.ShopInfo;
import com.Apple.Service.AccountService;
import com.Apple.Service.AdminLoginService;
import com.Apple.Service.MenuService;
import com.Apple.Service.QnAService;
import com.Apple.Service.ShopInfoService;

@Controller
public class BusinessController {
	
	Logger log = Logger.getLogger(BusinessController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping("/business")
	public String business(){		
		return "Business/BusinessMember";
	}
	
	@RequestMapping("/business/reservation")
	public String reservation(){
		return "Business/BusinessMemberReservationManagementPage";
	}
	
	@RequestMapping("/business/registration")
	public String registration(){
		return "Business/BusinessMemberRegistrationManagementPage";
	}
	
	@RequestMapping("/business/businessshop")
	public String businessshop(){
		return "Business/BusinessMemberShopManagementPage";
	}
	
	@RequestMapping("/business/inquiry")
	public String inquiry(){
		return "Business/BusinessMemberInquiryPage";
	}
	
//	@RequestMapping(value="/business/registration", method=RequestMethod.POST)	
//	public @ResponseBody Business registPOST(@RequestBody Business business){
//		log.info("############################regist POST");
//		log.info("###########"+business.getBaddress());
//		log.info("###########"+business.getBname());
//		log.info("###########"+business.getMdesc());
//		log.info("###########"+business.getMname());
//		log.info("###########"+business.getMprice());
//		
//		BusinessService service = applicationContext.getBean(BusinessService.class);
//		
//		
//		return 
//		
//	}
	
	
	//입력
	@RequestMapping("/Business.do")
	public String insertBusiness(@RequestParam Map<String, Object> paramMap){
		MenuService service1 = applicationContext.getBean(MenuService.class);
		
		ShopInfoService service2 = applicationContext.getBean(ShopInfoService.class);
		
		Menu menu = new Menu();
		
		menu.setMname(paramMap.get("Mname").toString());
		
		String s = paramMap.get("Mprice").toString();
		int a = Integer.parseInt(s);
		
		menu.setMprice(a);
		
		service1.insertMenu(menu);
		//
		
		ShopInfo shopinfo = new ShopInfo();
		
		shopinfo.setSHOPNAME(paramMap.get("SHOPNAME").toString());
		
		shopinfo.setSHOPADDRESS(paramMap.get("SHOPADDRESS").toString());
		
		service2.insertShopInfo(shopinfo);
		
		return "redirect:/Apple/#/business";
	}
	
	//출력
	@ResponseBody
	@RequestMapping(value="/business/menulist.json")
	public List<Menu> getMenuList(){
		MenuService service = applicationContext.getBean(MenuService.class);
		
		
		List<Menu> list = service.selectAll();
		
		return list;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/business/shopinfolist.json")
	public List<ShopInfo> getShopInfoList(){
		ShopInfoService service = applicationContext.getBean(ShopInfoService.class);
		
		List<ShopInfo> list = service.selectAll();
		
		return list;
		
	}
	
	
	
}
