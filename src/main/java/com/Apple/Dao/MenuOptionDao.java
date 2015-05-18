package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.Menu;
import com.Apple.Model.MenuOption;
import com.Apple.Model.QnA;

public interface MenuOptionDao {
	
	public List<MenuOption> selectAll();
	
	public void insert(MenuOption menuop);
	
	public void delete(MenuOption menuop);

}
