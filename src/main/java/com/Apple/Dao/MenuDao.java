package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.Menu;
import com.Apple.Model.QnA;

public interface MenuDao {
	
	public List<Menu> selectAll();
	
	public void insert(Menu menu);
	
	public void delete(Menu menu);

	public void insertMenu(Menu menu);

}
