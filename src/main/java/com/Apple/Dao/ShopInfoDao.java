package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.ShopInfo;

public interface ShopInfoDao {
	public List<ShopInfo> selectAll();
	
	public List<ShopInfo> selectListByChain(String shopchainname);
}
