package com.Apple.Model;


public class QnAResult {
	QnA qna;

	public QnA getQnA() {
		return qna;
	}

	public void setQnA(QnA qna) {
		this.qna = qna;
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