package com.msa.varda.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msa.varda.dao.ICustomerRepository;
import com.msa.varda.model.CustomerVO;

@Service
public class CustomerService implements ICustomerService{
	
	@Autowired
	ICustomerRepository customerRepository;
	
	@Override
	public void joinCustomer(CustomerVO customerVO) {
		//customerDao.joinCustomer(customerVO);
	}
	
	@Override
	public void updateCustomer(CustomerVO customerVO) {
		//customerDao.updateCustomer(customerVO);
	}
	
//	@Override
//	public CustomerVO selectCustomerVO(String cId) {
//		return CustomerVO.select(cId);
//	}
//	
//	@Override
//	public List<CustomerVO> selectAllCustomerVOs(){
//		return customerDao.selectAllCustomers();
//	}
	
	@Override
	public String getcPwd(String cId) {
		/* return customerDao.getcPwd(cId); */
		return "";
	}

	@Override
	public CustomerVO login(String id, String pwd) {
		return null;
	}

	@Override
	public boolean isDuplicateId(String id) {
		return false;
	}

}
