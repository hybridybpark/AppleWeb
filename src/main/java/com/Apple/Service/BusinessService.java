package com.Apple.Service;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.BusinessDao;
import com.Apple.Model.Menu;
import com.Apple.Model.ShopInfo;

@Service
public class BusinessService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	BusinessDao businessdao;
	
	// DB insert 입력
	public void insertMenu(Menu menu){
		businessdao.insertMenu(menu);
	}
	
	public void insertShopInfo(ShopInfo shopinfo){
		businessdao.insertShopInfo(shopinfo);
	}
}
