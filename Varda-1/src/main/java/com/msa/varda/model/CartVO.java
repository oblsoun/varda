package com.msa.varda.model;

public class CartVO {
	
	private String cId;
	private String pdItem;
	private int pdPrice;
	
	public CartVO() {
		super();
	}

	public CartVO(String cId, String pdItem, int pdPrice) {
		super();
		this.cId = cId;
		this.pdItem = pdItem;
		this.pdPrice = pdPrice;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getPdItem() {
		return pdItem;
	}

	public void setPdItem(String pdItem) {
		this.pdItem = pdItem;
	}

	public int getPdPrice() {
		return pdPrice;
	}

	public void setPdPrice(int pdPrice) {
		this.pdPrice = pdPrice;
	}

	@Override
	public String toString() {
		return "CartVO [cId=" + cId + ", pdItem=" + pdItem + ", pdPrice=" + pdPrice + "]";
	}
	

}
