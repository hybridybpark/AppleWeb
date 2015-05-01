package com.Apple.Dao;

import java.util.List;

import com.Apple.Model.Chain;
import com.Apple.Model.QnA;

public interface QnADao {
	public List<QnA> selectAll();
	
	public void insert(QnA qna);
	
	public void delete(String title);
}
