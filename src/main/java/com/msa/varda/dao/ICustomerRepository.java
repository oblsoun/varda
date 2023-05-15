package com.msa.varda.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.msa.varda.model.CustomerVO;

@Repository
@Mapper
public interface ICustomerRepository {
	void joinCustomer(CustomerVO customerVO); // 회원가입 정보 가져오기
	// CustomerVO selectCustomerVO(String cId);
	// List<CustomerVO>selectAllCustomerVOs();
	CustomerVO login(String id, String pwd); //로그인한 회원 정보가쟈오기
	void updateCustomer(CustomerVO customerVO); // 회원업데이트 정보 가져오기
	String getcPwd(String cId);
}
