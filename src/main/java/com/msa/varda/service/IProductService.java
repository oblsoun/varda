package com.msa.varda.service;

import java.util.List;

import com.msa.varda.model.ProductVO;

public interface IProductService {
	
	List<ProductVO> getProductList(int categoryNum); //해당하는 카테고리에 따른 상품목록 조회하기
	ProductVO getProductInfo(String pdId); //지정한 상품의 모든 정보 조회하기
	String makeProductId(int gender,int skinType,int pdType); //상품의 아이디를 만들어주기
	void insertProduct(ProductVO  productVO); // 상품 등록하기

}
