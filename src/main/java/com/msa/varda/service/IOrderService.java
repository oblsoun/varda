package com.msa.varda.service;

import java.util.List;

import com.msa.varda.model.OrderMasterVO;

public interface IOrderService {

	   void setOrderDetail(String pdId); //OrderDetail테이블에 값 입력하기
	   void setOrderMaster(String sessionId,OrderMasterVO odmtVO); //OrderMaster테이블에 값 입력하기
	   void deleteOrderPd(String pdId, String sessionId); //주문한 상품은 장바구니에서 지워주기
	   List<OrderMasterVO> getOrderList(String sessionId); //지정한 고객이 주문한 상품목록 조회하기

	
}
