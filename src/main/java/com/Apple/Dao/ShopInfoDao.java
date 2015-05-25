package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.ShopInfo;

public interface ShopInfoDao {
	public List<ShopInfo> selectAll();
	
	public List<ShopInfo> selectAllOrderByMark();	
	
	public List<ShopInfo> selectListByChain(String shopchainname);
	
	public List<ShopInfo> selectListByCategory(String shopcategory);
	
	public List<ShopInfo> selectListByName(String shopname);
	
	public List<ShopInfo> selectListByBusinessnumber(String businessnumber);

	public void insertShopInfo(ShopInfo shopinfo);
	
	
}
