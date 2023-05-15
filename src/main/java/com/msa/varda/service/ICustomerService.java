package com.msa.varda.service;

import java.util.List;

import com.msa.varda.model.CustomerVO;

public interface ICustomerService {
	void joinCustomer(CustomerVO customerVO);
//	CustomerVO selectCustomerVO(String cId);
//	List<CustomerVO> selectAllCustomerVOs();
	CustomerVO login(String id, String pwd);
	void updateCustomer(CustomerVO customerVO);
	String getcPwd(String cId);
	boolean isDuplicateId(String id);
}
