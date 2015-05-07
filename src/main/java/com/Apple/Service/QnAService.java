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
	
	// DB List 출력
	public List<QnA> selectAll() {
		List<QnA> list = qnadao.selectAll();
		
		return list;
		
	}
	
	// DB insert 입력
	public void insert(QnA qna){
		qnadao.insert(qna);
	}
	
	// DB delete 삭제
	public void delete(String password){
		qnadao.delete(password);
	}
	
	// DB update 수정
	public void update(QnA qna){
		qnadao.update(qna);
	}
	
}
