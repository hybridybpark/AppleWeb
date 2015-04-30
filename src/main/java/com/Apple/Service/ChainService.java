package com.Apple.Service;

import java.util.List;

import javax.sql.DataSource;

import com.Apple.Dao.ChainDao;
import com.Apple.Model.Chain;

public class ChainService {
	DataSource dataSource;
	ChainDao chaindao;
	
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public ChainDao getChaindao() {
		return chaindao;
	}
	public void setChaindao(ChainDao chaindao) {
		this.chaindao = chaindao;
	}
	
	public List<Chain> selectAll(){
		List<Chain> list = chaindao.selectAll();
		
		return list;
	}
	
	
}
