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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Apple.Dao.QnADao;
import com.Apple.Model.Account;
import com.Apple.Model.AccountResult;
import com.Apple.Model.AdminLogin;
import com.Apple.Model.AdminLoginResult;
import com.Apple.Model.QnA;
import com.Apple.Service.AccountService;
import com.Apple.Service.AdminLoginService;
import com.Apple.Service.QnAService;

@Controller
@RequestMapping("/")
public class AccountController {
	
	Logger log = Logger.getLogger(AccountController.class);
	
	private AccountService mainService;
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String joinGET(Model model){
		log.info("############################Join GET");		
		
		return "Login/Join1";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginGET(Model model){
		log.info("############################Login GET");		
		
		return "Login/login";
	} 
	
	@RequestMapping(value="/login", method=RequestMethod.POST)	
	public @ResponseBody AccountResult loginPOST(@RequestBody Account login){
		log.info("############################Login POST");
		log.info("###########"+login.getBUSINESSNUMBER());
		log.info("###########"+login.getPASSWORD());
		AccountService service = applicationContext.getBean(AccountService.class);
		
		List<Account> list = service.selectAll();
		Account account = list.get(0);
		log.info("###########"+account.getBUSINESSNUMBER());
		log.info("###########"+account.getPASSWORD());
		
		AccountResult result = new AccountResult();
		result.setLogin(account);
		
		if(account.getBUSINESSNUMBER().equals(account.getBUSINESSNUMBER())){
			if(account.getPASSWORD().equals(account.getPASSWORD())){
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
	@RequestMapping(value="/join/list.json")
	public List<Account> getAccountList(){
		AccountService service = applicationContext.getBean(AccountService.class);
		
		List<Account> list = service.selectAll();
		
		return list;
	}
	
	//입력
	@RequestMapping("/Join.do")
	public String insertAccount(@RequestParam Map<String, Object> paramMap){
		AccountService service = applicationContext.getBean(AccountService.class);
		
		Account account = new Account();
		
		account.setBUSINESSNAME(paramMap.get("BUSINESSNAME").toString());
		
		String s = paramMap.get("BUSINESSNUMBER").toString();
		int a = Integer.parseInt(s);
		
		account.setBUSINESSNUMBER(a);
		
		account.setPASSWORD(paramMap.get("PASSWORD").toString());
		
		String s2 = paramMap.get("PHONE").toString();
		int a2 = Integer.parseInt(s2);
		
		account.setPHONE(a2);
		
		account.setEMAIL(paramMap.get("EMAIL").toString());
		
		account.setEMAILACCEPT("asd");
		
		account.setSMSACCEPT("asd");
		
		Date date = new Date();
		
		account.setWDATE(date.toString());
		 
		account.setCONDITION("wait");
		account.setADATE("no date");
		
		service.insert(account);
		
		return "redirect:/Apple/join";
	}
	
	//삭제
//	@RequestMapping("/QnA.do")
//	public String deleteQnA(@RequestParam Map<String, Object> paramMap) {
//		
//		QnAService service = applicationContext.getBean(QnAService.class);
//		
//		return "redirect:/Apple/qna";
//		
//	}
	
	
}
