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
import com.Apple.Model.Reservation;
import com.Apple.Service.QnAService;
import com.Apple.Service.ReservationService;

@Controller
public class ReservationController {
	
	Logger log = Logger.getLogger(ReservationController.class);
	
	private ReservationService mainService;
	
	@Autowired
	ApplicationContext applicationContext;
	
	// 출력
	@ResponseBody
	@RequestMapping(value="/reservation/list.json{businessnumber}")
	public List<Reservation> getReservationList(@PathVariable String businessnumber){
		ReservationService service = applicationContext.getBean(ReservationService.class);
		
		List<Reservation> list = service.selectAll();
		
		return list;
	}
	
	
}
