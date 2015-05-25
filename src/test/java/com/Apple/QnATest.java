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
import com.Apple.Model.QnA;
import com.Apple.Service.ChainService;
import com.Apple.Service.QnAService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/beans.xml")
public class QnATest {
	
	@Autowired
	ApplicationContext factory;
	
	static Logger log = Logger.getLogger(QnATest.class);
	
	@Test
	public void testSelectAll() throws Exception {
		log.info("############################################### testSelectAll");		
		
		QnAService service = factory.getBean(QnAService.class);
		
		QnA q = new QnA();
		
		q.setName("asd");
		q.setContent("q");
		q.setPassword("asdf");
		q.setPhone("adfs");
		q.setRdate("asdfs");
		q.setReplycontent("q");
		q.setTitle("asdfsa");
		q.setWdate("asdj");
		
//		service.insert(q);
		
		
		List<QnA> list = service.selectAll();
		
		for(QnA c : list){
			log.info(c.getName());
			log.info(c.getPhone());
			log.info(c.getTitle());
			log.info(c.getWdate());
			log.info(c.getContent());
			log.info(c.getPassword());
			log.info(c.getReplycontent());
			log.info(c.getRdate());
			
		}
		
		//service.delete("asdfsa");
		
		list = service.selectAll();
		
		for(QnA c : list){
			log.info(c.getName());
			log.info(c.getPhone());
			log.info(c.getTitle());
			log.info(c.getWdate());
			log.info(c.getContent());
			log.info(c.getPassword());
			log.info(c.getReplycontent());
			log.info(c.getRdate());
		}
	}

}
