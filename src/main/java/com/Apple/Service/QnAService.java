package com.Apple.Service;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.QnADao;
import com.Apple.Model.QnA;

@Service
public class QnAService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	QnADao qnadao;
	
//	public DataSource getDataSource() {
//		return dataSource;
//		
//	}
//	public void setDataSource(DataSource dataSource) {
//		this.dataSource = dataSource;
//	}
//	public QNADao getQnaDao() {
//		return qnadao;
//		
//	}
//	public void setQNADao (QNADao qnadao) {
//		this.qnadao = qnadao;
//	}
	
	public List<QnA> selectAll() {
		List<QnA> list = qnadao.selectAll();
		
		return list;
		
	}
	
	public void insert(QnA qna){
		qnadao.insert(qna);
	}
	
	public void delete(String title){
		qnadao.delete(title);
	}
	
}
