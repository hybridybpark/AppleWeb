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
public class BusinessController {
	
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
}