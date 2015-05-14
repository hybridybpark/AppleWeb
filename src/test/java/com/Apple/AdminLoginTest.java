package com.Apple;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.Apple.Model.AdminLogin;
import com.Apple.Model.Chain;
import com.Apple.Model.QnA;
import com.Apple.Service.AdminLoginService;
import com.Apple.Service.ChainService;
import com.Apple.Service.QnAService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/beans.xml")
public class AdminLoginTest {
	
	@Autowired
	ApplicationContext factory;
	
	static Logger log = Logger.getLogger(AdminLoginTest.class);
	
	@Test
	public void testSelectAll() throws Exception {
		log.info("############################################### testSelectAll");		
		
		AdminLoginService service = factory.getBean(AdminLoginService.class);
		
		AdminLogin q = new AdminLogin();
		
		List<AdminLogin> list = service.selectAll();
		
		for(AdminLogin c : list){
			log.info(c.getAdminid());
			log.info(c.getAdminpassword());
			
		}
		
	}

}
