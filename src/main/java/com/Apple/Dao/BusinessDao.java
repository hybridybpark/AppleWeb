package com.Apple.Dao;

import com.Apple.Model.Menu;
import com.Apple.Model.ShopInfo;

public interface BusinessDao {
	
	public void insertMenu(Menu menu);
	
	public void insertShopInfo(ShopInfo shopinfo);
	
	public void selectMenuInfo(Menu menu);
	
	public void selectShopInfo(ShopInfo shopinfo);
	
}
