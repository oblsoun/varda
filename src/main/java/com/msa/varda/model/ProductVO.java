package com.msa.varda.model;
 
public class ProductVO {
	private String pdId; 
	private String pdName; 
	private String pdImg; 
	private String pdSubImg; 
	private int pdPrice; 
	private String pdTag;
	private String pdDescrip;
	
	public ProductVO() {
		super();
	}

	public ProductVO(String pdId, String pdName, String pdImg, String pdSubImg, int pdPrice, String pdTag,
			String pdDescrip) {
		super();
		this.pdId = pdId;
		this.pdName = pdName;
		this.pdImg = pdImg;
		this.pdSubImg = pdSubImg;
		this.pdPrice = pdPrice;
		this.pdTag = pdTag;
		this.pdDescrip = pdDescrip;
	}

	public String getPdId() {
		return pdId;
	}

	public void setPdId(String pdId) {
		this.pdId = pdId;
	}

	public String getPdName() {
		return pdName;
	}

	public void setPdName(String pdName) {
		this.pdName = pdName;
	}

	public String getPdImg() {
		return pdImg;
	}

	public void setPdImg(String pdImg) {
		this.pdImg = pdImg;
	}

	public String getPdSubImg() {
		return pdSubImg;
	}

	public void setPdSubImg(String pdSubImg) {
		this.pdSubImg = pdSubImg;
	}

	public int getPdPrice() {
		return pdPrice;
	}

	public void setPdPrice(int pdPrice) {
		this.pdPrice = pdPrice;
	}

	public String getPdTag() {
		return pdTag;
	}

	public void setPdTag(String pdTag) {
		this.pdTag = pdTag;
	}

	public String getPdDescrip() {
		return pdDescrip;
	}

	public void setPdDescrip(String pdDescrip) {
		this.pdDescrip = pdDescrip;
	}

	@Override
	public String toString() {
		return "ProductVO [pdId=" + pdId + ", pdName=" + pdName + ", pdImg=" + pdImg + ", pdSubImg=" + pdSubImg
				+ ", pdPrice=" + pdPrice + ", pdTag=" + pdTag + ", pdDescrip=" + pdDescrip + "]";
	}
	
	
	

	
}
