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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Apple.Dao.QnADao;
import com.Apple.Model.QnA;
import com.Apple.Service.QnAService;

@Controller
public class AdminLoginController {
	
	Logger log = Logger.getLogger(AdminLoginController.class);
	
	private QnAService mainService;
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/admin/login", method=RequestMethod.GET)
	public String login(Model model){
		log.info("############################AdminLogin GET");
		
		return "Login/AdminLogin";
	}
	
	
}
