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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Apple.Dao.QnADao;
import com.Apple.Model.QnA;
import com.Apple.Service.QnAService;

@Controller
@RequestMapping("/")
public class QnAController {
	
	Logger log = Logger.getLogger(QnAController.class);
	
	private QnAService mainService;
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/qna", method=RequestMethod.GET)
	public String qnaGET(Model model){
		log.info("############################QNA GET");		
		
		return "QnA/QnA";
	}
	
	// 출력
	@ResponseBody
	@RequestMapping(value="/qna/list.json")
	public List<QnA> getQnAList(){
		QnAService service = applicationContext.getBean(QnAService.class);
		
		List<QnA> list = service.selectAll();
		
		return list;
	}
	
	//입력
	@RequestMapping("/QnA.do")
	public String insertQnA(@RequestParam Map<String, Object> paramMap){
		QnAService service = applicationContext.getBean(QnAService.class);
		
		QnA qna = new QnA();
		
		qna.setTitle(paramMap.get("title").toString());
		
		qna.setContent(paramMap.get("content").toString());
		
		qna.setName(paramMap.get("pname").toString());
		
		qna.setPhone(paramMap.get("phone").toString());
		
		qna.setPassword(paramMap.get("password").toString());
		
		Date date = new Date();
		
		qna.setWdate(date.toString());
		
		service.insert(qna);
		
		return "redirect:/Apple/qna";
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
