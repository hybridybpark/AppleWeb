package com.Apple.Dao;

import java.util.List;
import java.util.Map;

import com.Apple.Model.Chain;
import com.Apple.Model.QnA;
import com.Apple.Model.Reservation;

public interface ReservationDao {
	public List<Reservation> selectAll();
	
	public void insert(Reservation reservation);
	
	public void delete(Reservation reservation);

	public void update(Reservation reservation);
}
