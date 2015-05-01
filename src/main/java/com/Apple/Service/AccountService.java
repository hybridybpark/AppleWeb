package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.AccountDao;
import com.Apple.Model.Account;



@Service
public class AccountService {
	
	@Autowired
	DataSource dataSource;
	@Autowired
	AccountDao accountDao;
	
	
	public List<Account> selectAll() {
		
		List<Account> list = accountDao.selectAll();
				
		
		return list;
		
		
	}
}
