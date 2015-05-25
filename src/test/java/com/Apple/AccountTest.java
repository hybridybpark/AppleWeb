package com.Apple;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.Apple.Model.Account;
import com.Apple.Model.Chain;
import com.Apple.Service.AccountService;
import com.Apple.Service.ChainService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/beans.xml")
public class AccountTest {

	@Autowired
	ApplicationContext factory;
	
	static Logger log = Logger.getLogger(AccountTest.class);
	
	
	@Test
	public void testSelectAll() {
		
		
		log.info("#########testSelectAll########");
		
		
		
		AccountService service = factory.getBean(AccountService.class);
		
		List<Account> list = service.selectAll();
		
		for(Account c : list){
			log.info(c.BUSINESSNUMBER);
			log.info(c.PASSWORD);
			log.info(c.PHONE);
			log.info(c.EMAIL);
			log.info(c.EMAILACCEPT);
			log.info(c.SMSACCEPT);
	}
}
}
