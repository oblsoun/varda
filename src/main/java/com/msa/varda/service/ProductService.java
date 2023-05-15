package com.msa.varda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msa.varda.dao.IOrderRepository;
import com.msa.varda.dao.IProductRepository;
import com.msa.varda.model.ProductVO;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	IProductRepository productRepository;

	@Override
	public List<ProductVO> getProductList(int categoryNum) {
		List<ProductVO> products = productRepository.getProductList(categoryNum);
		return products;
	}

	@Override
	public ProductVO getProductInfo(String pdId) {
		ProductVO productVO = productRepository.getProductInfo(pdId);
		return productVO;
	}

	@Override
	public void insertProduct(ProductVO productVO) {
		productRepository.insertProduct(productVO);
		
	}

	@Override
	public String makeProductId(int gender, int skinType, int pdType) {
		
		String pdId1 = String.valueOf(gender);
		String pdId2 = String.valueOf(skinType);
		String pdId3 = String.valueOf(pdType);
		String pdIdLast = String.valueOf(productRepository.makeProductId());

		return (pdId1 + pdId2 + pdId3 + pdIdLast);
	}
	
	

}
