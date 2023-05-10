package com.msa.varda.model;
 
import java.util.Date;

public class OrdermasterVO {
	private String odNum;
	private String cId;
	private int odSum;
	private Date odDate;
	public OrdermasterVO() {
		super();
	}
	public OrdermasterVO(String odNum, String cId, int odSum, Date odDate) {
		super();
		this.odNum = odNum;
		this.cId = cId;
		this.odSum = odSum;
		this.odDate = odDate;
	}
	public String getOdNum() {
		return odNum;
	}
	public void setOdNum(String odNum) {
		this.odNum = odNum;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public int getOdSum() {
		return odSum;
	}
	public void setOdSum(int odSum) {
		this.odSum = odSum;
	}
	public Date getOdDate() {
		return odDate;
	}
	public void setOdDate(Date odDate) {
		this.odDate = odDate;
	}
	@Override
	public String toString() {
		return "OrdermasterVO [odNum=" + odNum + ", cId=" + cId + ", odSum=" + odSum + ", odDate=" + odDate + "]";
	}
}
