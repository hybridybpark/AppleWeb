package com.Apple.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

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
import com.Apple.Model.AdminLogin;
import com.Apple.Model.AdminLoginResult;
import com.Apple.Model.QnA;
import com.Apple.Service.AdminLoginService;
import com.Apple.Service.QnAService;

@Controller
public class AdminLoginController {
	
	Logger log = Logger.getLogger(AdminLoginController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/admin/login", method=RequestMethod.GET)
	public String login(Model model){
		log.info("############################AdminLogin GET");
		
		return "Admin/AdminLogin";
	}
	@RequestMapping(value="/admin/login", method=RequestMethod.POST)	
	public @ResponseBody AdminLoginResult loginPOST(@RequestBody AdminLogin admin){
		log.info("############################AdminLogin POST");
		log.info("###########"+admin.getAdminid());
		log.info("###########"+admin.getAdminpassword());
		AdminLoginService service = applicationContext.getBean(AdminLoginService.class);
		
		List<AdminLogin> list = service.selectAll();
		AdminLogin login = list.get(0);
		log.info("###########"+login.getAdminid());
		log.info("###########"+login.getAdminpassword());
		
		AdminLoginResult result = new AdminLoginResult();
		result.setAdminLogin(admin);
		
		if(admin.getAdminid().equals(login.getAdminid())){
			if(admin.getAdminpassword().equals(login.getAdminpassword())){
				result.setStatus(true);
				result.setStatusText("LOGIN!!");
			}else{
				result.setStatus(false);
				result.setStatusText("WORNG PW");
			}			
		}else{
			result.setStatus(false);
			result.setStatusText("WORNG ID");
		}		
		return result;
	}
	
		// 출력
		@ResponseBody
		@RequestMapping(value="/adminlogin/list.json")
		public List<AdminLogin> getAdminLoginList(){
			AdminLoginService service = applicationContext.getBean(AdminLoginService.class);
			
			List<AdminLogin> list = service.selectAll();
			
			return list;
		}
	
}
