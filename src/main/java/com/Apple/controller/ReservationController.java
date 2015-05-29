package com.Apple.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.dao.DataAccessException;
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
import com.Apple.Model.ReservationResult;
import com.Apple.Service.QnAService;
import com.Apple.Service.ReservationService;

@Controller
public class ReservationController {
	
	Logger log = Logger.getLogger(ReservationController.class);
	
	
	
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
	@RequestMapping("/reservation")
	public String reservation(){		
		log.info("######## RESERVATION ############");
		return "Shop/yeyak";
	}
	
	@ResponseBody
	@RequestMapping(value="/reservation",method = RequestMethod.POST)
	public ReservationResult postReservation(@RequestBody Reservation reservation){
		ReservationService rservice = applicationContext.getBean(ReservationService.class);
		
		ReservationResult result = new ReservationResult();
		
		result.setRes(reservation);
		
		try{
			rservice.insert(reservation);
			result.setStatus(true);
			result.setStatusText("OK");
		}catch(DataAccessException e){
			result.setStatus(false);
			result.setStatusText(e.getMessage());			
		}
		
		return result;
	}
	
}
