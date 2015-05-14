package com.Apple.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Apple.Model.Account;
import com.Apple.Model.QnA;
import com.Apple.Service.AccountService;
import com.Apple.Service.QnAService;

@Controller
public class AdminController {
	
	@RequestMapping(value="/admin")
	public String admin(){
		return "Admin/Admin";
	}
	@RequestMapping(value="/admin/qna")
	public String adminqna(){
		return "Admin/QnA";
	}
	
	@RequestMapping(value="/admin/adminpage")
	public String adminpage(){
		return "Admin/AdminPage";
	}
	
	@RequestMapping(value="/admin/member")
	public String member(){
		return "Admin/MemberPage";
	}
	
	@RequestMapping(value="/admin/neighbor")
	public String neighbor(){
		return "Admin/NeighborPage";
	}
	
	@Autowired
	ApplicationContext applicationContext;
	
	// 출력
	@ResponseBody
	@RequestMapping(value="/admin/list.json")
	public List<Account> getQnAList(){
		AccountService service = applicationContext.getBean(AccountService.class);
		
		List<Account> list = service.selectAll();
		
		return list;
	}
	
	
}
