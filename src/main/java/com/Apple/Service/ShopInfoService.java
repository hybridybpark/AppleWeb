package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.Apple.Dao.ShopInfoDao;
import com.Apple.Model.ShopInfo;

@Service
public class ShopInfoService {
	@Autowired
	DataSource dataSource;
	
	@Autowired
	ShopInfoDao shopInfoDao;
	
	public List<ShopInfo> selectAll(){
		return shopInfoDao.selectAll();
	}
	
	public List<ShopInfo> selectAllOrderByMark(){
		return shopInfoDao.selectAllOrderByMark();
	}	
	
	public List<ShopInfo> selectListByChain(String shopchainname){
		return shopInfoDao.selectListByChain(shopchainname);
	}
	
	public List<ShopInfo> selectListByCategory(String shopcategory){
		return shopInfoDao.selectListByCategory(shopcategory);
	}
	
	
}
