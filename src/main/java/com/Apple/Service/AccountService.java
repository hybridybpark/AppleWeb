package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.AccountDao;
import com.Apple.Model.Account;
import com.Apple.Model.QnA;



@Service
public class AccountService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	AccountDao accountdao;
	
	
	//DB 출력
	public List<Account> selectAll() {
		
		List<Account> list = accountdao.selectAll();
				
		
		return list;
	}

	// DB insert 입력
	public void insert(Account account){
		accountdao.insert(account);
	}
	
	
}
