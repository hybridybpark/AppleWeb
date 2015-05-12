package com.Apple.Model;

public class Account {
	public Integer BUSINESSNUMBER;
	public String PASSWORD;
	public String EMAIL;
	public Integer PHONE;
	public String EMAILACCEPT;
	public String SMSACCEPT;
	public String BUSINESSNAME;
	
	public String getBUSINESSNAME() {
		return BUSINESSNAME;
	}
	public void setBUSINESSNAME(String bUSINESSNAME) {
		BUSINESSNAME = bUSINESSNAME;
	}
	public Integer getBUSINESSNUMBER() {
		return BUSINESSNUMBER;
	}
	public void setBUSINESSNUMBER(Integer bUSINESSNUMBER) {
		BUSINESSNUMBER = bUSINESSNUMBER;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public Integer getPHONE() {
		return PHONE;
	}
	public void setPHONE(Integer pHONE) {
		PHONE = pHONE;
	}
	public String getEMAILACCEPT() {
		return EMAILACCEPT;
	}
	public void setEMAILACCEPT(String eMAILACCEPT) {
		EMAILACCEPT = eMAILACCEPT;
	}
	public String getSMSACCEPT() {
		return SMSACCEPT;
	}
	public void setSMSACCEPT(String sMSACCEPT) {
		SMSACCEPT = sMSACCEPT;
	}
	
	
	
}
