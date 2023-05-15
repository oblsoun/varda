package com.msa.varda.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.msa.varda.model.OrderDetailVO;
import com.msa.varda.model.OrderMasterVO;

@Repository
@Mapper
public interface IOrderRepository {
	
	   int selectMaxOdNum(); //OdNum(주문번호) 최대값 불러오기
	   void setOrderDetail(OrderDetailVO oddtVO); //OrderDetail테이블에 값 입력하기
	   int getSumOdPrice(int odNum);
	   void setOrderMaster(OrderMasterVO odmtVO); //OrderMaster테이블에 값 입력하기
	   void deleteOrderPd(String pdId, String sessionId); //주문한 상품은 장바구니에서 지워주기
	   List<OrderMasterVO> getOrderList(String sessionId); //지정한 고객이 주문한 상품목록 조회하기


}
