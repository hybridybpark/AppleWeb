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

import com.Apple.Model.Chain;
import com.Apple.Service.ChainService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/beans.xml")
public class ChainTest {
	
	@Autowired
	ApplicationContext factory;
	
	static Logger log = Logger.getLogger(ChainTest.class);
	
	@Test
	public void testSelectAll() throws Exception {
		log.info("############################################### testSelectAll");		
		
		ChainService service = factory.getBean(ChainService.class);
		
		List<Chain> list = service.selectAll();
		
		for(Chain c : list){
			log.info(c.getName());
			log.info(c.getImage());
			log.info(c.getDesc());
		}
		
	}


}
