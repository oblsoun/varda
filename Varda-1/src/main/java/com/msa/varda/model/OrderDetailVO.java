package com.msa.varda.model;

public class OrderDetailVO {
	
	private String odNum;
	private String odOder;
	private String pdItem;
	private int odPrice;
	
	
	public OrderDetailVO() {
		super();
	}


	public OrderDetailVO(String odNum, String odOder, String pdItem, int odPrice) {
		super();
		this.odNum = odNum;
		this.odOder = odOder;
		this.pdItem = pdItem;
		this.odPrice = odPrice;
	}


	public String getOdNum() {
		return odNum;
	}


	public void setOdNum(String odNum) {
		this.odNum = odNum;
	}


	public String getOdOder() {
		return odOder;
	}


	public void setOdOder(String odOder) {
		this.odOder = odOder;
	}


	public String getPdItem() {
		return pdItem;
	}


	public void setPdItem(String pdItem) {
		this.pdItem = pdItem;
	}


	public int getOdPrice() {
		return odPrice;
	}


	public void setOdPrice(int odPrice) {
		this.odPrice = odPrice;
	}


	@Override
	public String toString() {
		return "OrderDetailVO [odNum=" + odNum + ", odOder=" + odOder + ", pdItem=" + pdItem + ", odPrice=" + odPrice
				+ "]";
	}
	
	
	
	
	

}
