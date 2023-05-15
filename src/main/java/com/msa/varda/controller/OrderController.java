package com.msa.varda.controller;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.msa.varda.model.CartVO;
import com.msa.varda.model.CustomerVO;
import com.msa.varda.model.OrderDetailVO;
import com.msa.varda.model.OrderMasterVO;
import com.msa.varda.service.IOrderService;

@Controller
public class OrderController {
	
	@Autowired IOrderService orderservice;
	
	
	//주문 작성폼으로
	@RequestMapping(value="order/cartOrder", method=RequestMethod.POST)
	public String getOrder(List<String> checkPdList) { 
		//orderservice.setOrderDetail(checkPdList);
		return "redirect:order/orderForm";
	}
	
	//주문 하기 
	@RequestMapping(value="order/orderForm", method=RequestMethod.POST)
	public String insertPd(HttpSession session, OrderMasterVO odmtVO, Model model) {
		String sessionId=(String)session.getAttribute("loginId");
		orderservice.setOrderMaster(sessionId,odmtVO);
		/* orderservice.deleteOrderPd(checkPd, sessionId); */
		return "redirect:order/orderSuccess";
	}
	
	//주문 목록 조회하기
	@RequestMapping(value="mypage/orderList", method=RequestMethod.GET)
	public String getOrderList(HttpSession session, Model model) {
		String sessionId=(String)session.getAttribute("loginId");
		List orderList = orderservice.getOrderList(sessionId);
		model.addAttribute("orderList", orderList);
		return "mypage/orderList";
	}
	

}
