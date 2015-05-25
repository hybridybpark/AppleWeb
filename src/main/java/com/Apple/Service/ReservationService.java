package com.Apple.Service;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.QnADao;
import com.Apple.Dao.ReservationDao;
import com.Apple.Model.QnA;
import com.Apple.Model.Reservation;

@Service
public class ReservationService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	ReservationDao reservationdao;
	
	// DB List 출력
	public List<Reservation> selectAll() {
		List<Reservation> list = reservationdao.selectAll();
		
		return list;
		
	}
	
	// DB insert 입력
	public void insert(Reservation reservation){
		reservationdao.insert(reservation);
	}
	
	// DB delete 삭제
	public void delete(Reservation reservation){
		reservationdao.delete(reservation);
	}
	
	// DB update 수정
	public void update(Reservation reservation){
		reservationdao.update(reservation);
	}
	
}
