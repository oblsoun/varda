package com.msa.varda.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.msa.varda.model.ProductVO;

@Repository
@Mapper
public interface IProductRepository {
	
	List<ProductVO> getProductList(int categoryNum);
	ProductVO getProductInfo(String pdId);
	void insertProduct(ProductVO productVO);
	int makeProductId();

}
