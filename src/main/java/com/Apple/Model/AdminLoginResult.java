package com.Apple.Model;

import java.util.Map;

import com.Apple.Dao.QnADao;

public class AdminLoginResult {
	AdminLogin adminLogin;
	public AdminLogin getAdminLogin() {
		return adminLogin;
	}
	public void setAdminLogin(AdminLogin adminLogin) {
		this.adminLogin = adminLogin;
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
