package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.Account;

public interface AccountDao {
	
	public List<Account> selectAll();
	
	public void insert(Account account);
	
	public List<Account> checkAccount(Account account);
	
}
