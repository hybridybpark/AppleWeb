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
import com.Apple.Model.MenuOption;
import com.Apple.Model.QnA;
import com.Apple.Service.MenuOptionService;
import com.Apple.Service.MenuService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/beans.xml")
public class MenuOptionTest {
	
	@Autowired
	ApplicationContext factory;
	
	static Logger log = Logger.getLogger(MenuOptionTest.class);

	@Test
	public void testSelectAll() {
		log.info("##############testSelectAll()###########");
		
		MenuOptionService service = factory.getBean(MenuOptionService.class);
		
		MenuOption m = new MenuOption();
		
		m.setOPTIONNAME("asdd");
		m.setMENUNAME("asd");
		m.setMENUSID(Integer.parseInt("1231"));
		m.setOPTIONPRICE(Integer.parseInt("1234"));

		service.insert(m);
		
		List<MenuOption> list = service.selectAll();
		
		for (MenuOption c : list) {
			log.info(c.getOPTIONNAME());
			log.info(c.getMENUNAME());
			log.info(c.getMENUSID());
			log.info(c.getOPTIONPRICE());
			
		}
		
	}

}
