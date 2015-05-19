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
import com.Apple.Model.QnA;
import com.Apple.Model.QnAResult;
import com.Apple.Service.QnAService;

@Controller
public class QnAController {
	
	Logger log = Logger.getLogger(QnAController.class);
	
	private QnAService mainService;
	
	@Autowired
	ApplicationContext applicationContext;
	
	@RequestMapping(value="/qnapage", method=RequestMethod.GET)
	public String qnaGET(){
		log.info("############################QNA GET");		
		
		return "QnA/QnA";
	}
	
	@RequestMapping(value="/qna/write", method=RequestMethod.GET)
	public String qnaWrite(Model model){
		log.info("############################QNA Write");		
		
		return "QnA/QnAWriting";
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
//	@RequestMapping(value="/QnA.do", method=RequestMethod.POST)	
//	public @ResponseBody QnAResult insertQnA(@RequestParam Map<String, Object> paramMap){
//		QnAService service = applicationContext.getBean(QnAService.class);
//		QnA qna = new QnA(); 
//		
//		qna.setTitle(paramMap.get("title").toString());
//		
//		qna.setContent(paramMap.get("content").toString());
//		
//		qna.setName(paramMap.get("pname").toString());
//		
//		qna.setPhone(paramMap.get("phone").toString());
//		
//		qna.setPassword(paramMap.get("password").toString());
//		
//		Date date = new Date();
//		
//		qna.setWdate(date.toString());
//		
//		service.insert(qna);		
//		
//		QnAResult result = new QnAResult();
//		result.setQnA(qna);
//		result.setStatus(true);
//		result.setStatusText("QNAWRITE!!");
//				
//		return result;
//	}
	@RequestMapping(value="/QnA.do", method=RequestMethod.POST)	
	public @ResponseBody QnAResult insertQnA2(@RequestBody QnA qna){
		QnAService service = applicationContext.getBean(QnAService.class);		
		
		Date date = new Date();
		
		qna.setWdate(date.toString());
		
		service.insert(qna);		
		
		QnAResult result = new QnAResult();
		result.setQnA(qna);
		result.setStatus(true);
		result.setStatusText("QNAWRITE!!");
				
		return result;
	}
	
	// 게시글 삭제
	@RequestMapping("/QnA.delete")
	public String deleteQnA(@RequestParam Map<String, Object> paramMap) {
		
		QnAService service = applicationContext.getBean(QnAService.class);
		
		QnA qna = new QnA();
		
		qna.setPassword(paramMap.get("password").toString());
		
		qna.setTitle(paramMap.get("title").toString());
		
		service.delete(qna);
		
		return "redirect:/Apple/qna";
		
	}
	
	@RequestMapping(value="/QnA.delete2/{sid}.{password}", method=RequestMethod.POST)
	public @ResponseBody QnAResult deleteQnA2(@PathVariable String sid,@PathVariable String password) {
		
		QnAService service = applicationContext.getBean(QnAService.class);
		
		QnA qna = new QnA();
		
		log.info("##################### password : "+password);
		
		qna.setPassword(password);
		
		qna.setSid(Integer.parseInt(sid));
		
		log.info("##################### sid : "+qna.getSid());
		service.delete(qna);
		
		QnAResult result = new QnAResult();
		result.setQnA(qna);
		result.setStatus(true);
		result.setStatusText("delete success!!");
		
		return result;
		
	}
	
	// 수정
	
	
}
