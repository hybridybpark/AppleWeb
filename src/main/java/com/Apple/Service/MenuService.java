package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.MenuDao;
import com.Apple.Model.Menu;


@Service
public class MenuService {

	@Autowired
	DataSource dataSource;
	
	@Autowired
	MenuDao menuDao;
	
	//출력
	public List<Menu> selectAll(){
		List<Menu> list = menuDao.selectAll();
		
		return list;
	}

	//입력
	public void insert(Menu menu) {
		menuDao.insert(menu);
	}
}
