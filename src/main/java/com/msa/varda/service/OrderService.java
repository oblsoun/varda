package com.msa.varda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.msa.varda.dao.IOrderRepository;
import com.msa.varda.model.OrderDetailVO;
import com.msa.varda.model.OrderMasterVO;

@Service
public class OrderService implements IOrderService {
	
	@Autowired
	IOrderRepository orderRepository;


	//OrderDetail테이블에 값 입력하기
	@Override
	public void setOrderDetail(String pdId) {
//		OrderDetailVO oddtVO = new OrderDetailVO();
//		oddtVO.setOdNum(orderRepository.selectMaxOdNum()+1);
//		for(int i=0;i<checkPd.length;i++) {
//			oddtVO.setOdOder(i+1);
//			oddtVO.setPdId(checkPd[i]);
//			oddtVO.setOdPrice(ProductVO.getPdPrice(checkPd[i]));
//			orderRepository.deleteOrderPd(checkPd[i], sessionId);
//		}
//		orderRepository.setOrderDetail(oddtVO);
	}

	//OrderMaster테이블에 값 입력하기 
	@Override
	public void setOrderMaster(String sessionId,OrderMasterVO odmtVO) {
		OrderMasterVO odmt = new OrderMasterVO();
		odmtVO.setOdNum(orderRepository.selectMaxOdNum());
		odmtVO.setcId(sessionId);
		odmtVO.setOdSum(orderRepository.getSumOdPrice(odmtVO.getOdNum())); //합계를 구하려면 odnum이 같은 oddetail 에 있는 pdid 에 해당하는 odPrice들을 sum 
		orderRepository.setOrderMaster(odmtVO);
	}

	//주문한 상품은 장바구니에서 지워주기
	@Override
	public void deleteOrderPd(String pdId, String sessionId) {
		deleteOrderPd(pdId, sessionId);
	}
	
	//지정한 고객이 주문한 상품목록 조회하기
	@Override
	public List<OrderMasterVO> getOrderList(String sessionId) {
		getOrderList(sessionId);
		return null;
	}
	
	

}
