package com.Apple.Model;

import java.util.Map;

import com.Apple.Dao.QnADao;

public class ChainResult {
	Chain chain;
	public Chain getChain() {
		return chain;
	}
	public void setChain(Chain chain) {
		this.chain = chain;
	}
	boolean status;
	String statusText;
	
	
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getStatusText() {
		return statusText;
	}
	public void setStatusText(String statusText) {
		this.statusText = statusText;
	}	
	
}
