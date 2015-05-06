package com.Apple.Dao;

import java.util.List;
import com.Apple.Model.Chain;

public interface ChainDao {
	public List<Chain> selectAll();
	
	public List<Chain> selectOneChain(String chainname);
	
	public void insert(Chain chain);
}
