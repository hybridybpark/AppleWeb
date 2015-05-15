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
import com.Apple.Model.QnA;
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
		
		Menu m = new Menu();
		
		m.setMname("asd");
		m.setMprice(Integer.parseInt("123"));
		m.setMimage("12313");
		m.setMdesc("adfs");
		m.setMcategory("asdfs");
		m.setSname("q");
		m.setBnumber(Integer.parseInt("1231"));

//		service.insert(m);
		
		List<Menu> list = service.selectAll();
		
		for (Menu c : list) {
			log.info(c.Mname);
			log.info(c.Mprice);
			log.info(c.Mimage);
			log.info(c.Mdesc);
			log.info(c.Mcategory);
			log.info(c.Bnumber);
			log.info(c.Sname);
			
		}
		
	}

}
