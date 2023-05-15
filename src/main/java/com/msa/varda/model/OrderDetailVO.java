package com.msa.varda.model;

public class OrderDetailVO {
	
	private int odNum;
	private int odOder;
	private String pdId;
	private int odPrice;
	
	
	public OrderDetailVO() {
		super();
	}


	public OrderDetailVO(int odNum, int odOder, String pdId, int odPrice) {
		super();
		this.odNum = odNum;
		this.odOder = odOder;
		this.pdId = pdId;
		this.odPrice = odPrice;
	}


	public int getOdNum() {
		return odNum;
	}


	public void setOdNum(int i) {
		this.odNum = i;
	}


	public int getOdOder() {
		return odOder;
	}


	public void setOdOder(int i) {
		this.odOder = i;
	}


	public String getPdId() {
		return pdId;
	}


	public void setPdId(String pdId) {
		this.pdId = pdId;
	}


	public int getOdPrice() {
		return odPrice;
	}


	public void setOdPrice(int odPrice) {
		this.odPrice = odPrice;
	}


	@Override
	public String toString() {
		return "OrderDetailVO [odNum=" + odNum + ", odOder=" + odOder + ", pdId=" + pdId + ", odPrice=" + odPrice
				+ "]";
	}
	
	
	
	
	

}
