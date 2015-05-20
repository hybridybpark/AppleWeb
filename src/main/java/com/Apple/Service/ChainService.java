package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.ChainDao;
import com.Apple.Model.Chain;
import com.Apple.controller.ShopInfoController;

@Service
public class ChainService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	ChainDao chainDao;
	
	Logger log = Logger.getLogger(ChainService.class);
	
//	public DataSource getDataSource() {
//		return dataSource;
//	}
//	public void setDataSource(DataSource dataSource) {
//		this.dataSource = dataSource;
//	}
//	public ChainDao getChainDao() {
//		return chainDao;
//	}
//	public void setChainDao(ChainDao chainDao) {
//		this.chainDao = chainDao;
//	}
	
	public List<Chain> selectAll(){
		List<Chain> list = chainDao.selectAll();
		
		return list;
	}
	
	public void insert(Chain chain){
		chainDao.insert(chain);
	}
	
	public Chain selectOneChain(String chainname){
		Chain c = chainDao.selectOneChain(chainname);
		log.info("###################### chain service"+c.getName());
		return c;
	}
	public List<Chain> selectChainByCategory(String category){
		return chainDao.selectChainByCategory(category);
	}
	
	
}
