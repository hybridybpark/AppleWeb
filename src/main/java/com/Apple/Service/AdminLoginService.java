package com.Apple.Service;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.AdminLoginDao;
import com.Apple.Dao.QnADao;
import com.Apple.Model.AdminLogin;
import com.Apple.Model.QnA;

@Service
public class AdminLoginService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	AdminLoginDao adminlogindao;
	

	// DB List 출력
	public List<AdminLogin> selectAll() {
		List<AdminLogin> list = adminlogindao.selectAll();
		
		return list;
		
	}
	
	
}
