package com.Apple;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.Apple.Model.Menu;
import com.Apple.Service.MenuService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/beans.xml")
public class MenuTest {
	
	@Autowired
	ApplicationContext factory;
	
	static Logger log = Logger.getLogger(MenuTest.class);

	@Test
	public void testSelectAll() {
		log.info("##############testSelectAll()###########");
		
		MenuService service = factory.getBean(MenuService.class);
		
		List<Menu> list = service.selectAll();
		
		for (Menu m : list) {
			log.info(m.Mname);
			log.info(m.Mprice);
			log.info(m.Mimage);
			log.info(m.Mdesc);
			log.info(m.Mcategory);
			log.info(m.Bnumber);
			log.info(m.Sname);
		}
		
	}

}
