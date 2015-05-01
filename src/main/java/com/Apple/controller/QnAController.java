package com.Apple.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Apple.Model.QnA;
import com.Apple.Service.QnAService;

@Controller
@RequestMapping("/")
public class QnAController {
	
	Logger log = Logger.getLogger(QnAController.class);
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/qna", method=RequestMethod.GET)
	public String qnaGET(Model model){
		log.info("############################QNA GET");
		
		QnAService service = applicationContext.getBean(QnAService.class);
		
		List<QnA> list = service.selectAll();
		
		model.addAttribute("list", list);
		
		return "QnA";
	}
	
	
}
