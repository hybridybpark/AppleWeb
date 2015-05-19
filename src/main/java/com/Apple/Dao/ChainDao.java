package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.Chain;

public interface ChainDao {
	public List<Chain> selectAll();
	
	public Chain selectOneChain(String chainname);
	
	public void insert(Chain chain);

	public Chain selectChainByCategory(String category);
}
