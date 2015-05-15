package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.MenuDao;
import com.Apple.Dao.MenuOptionDao;
import com.Apple.Model.Menu;
import com.Apple.Model.MenuOption;


@Service
public class MenuOptionService {

	@Autowired
	DataSource dataSource;
	
	@Autowired
	MenuOptionDao menuopdao;
	
	//출력
	public List<MenuOption> selectAll(){
		List<MenuOption> list = menuopdao.selectAll();
		
		return list;
	}

	//입력
	public void insert(MenuOption menuop) {
		menuopdao.insert(menuop);
	}
}
