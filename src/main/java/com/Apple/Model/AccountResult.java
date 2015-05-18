package com.Apple.Model;


public class AccountResult {
	Account Login;

	public Account getLogin() {
		return Login;
	}

	public void setLogin(Account login) {
		this.Login = login;
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
};