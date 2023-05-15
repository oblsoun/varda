package com.msa.varda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.msa.varda.model.CartVO;
import com.msa.varda.service.ICartService;

@Controller
public class CartController {
	

	@Autowired 
	ICartService cartService;
	
	// 장바구니 목록 조회
	@RequestMapping(value="cart/cartList")
	public String getCartList(CartVO cartVO, Model model, HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		// 세션에 저장된 아이디 확인
		String sessionId = (String)session.getAttribute("sessionId");
		// 로그인 상태라면
		if(sessionId!=null) {
			// 로그인된 아이디(sessionID)의 리스트
			List<CartVO> list = cartService.getCartList(sessionId);
			
			map.put("getCartList",list);
			map.put("count", list.size());
			
			model.addAttribute("map",map);
			//model.addAttribute("list",list);
		}
		return "cart/cartList";
	}
	
	//장바구니 상품 추가
	@RequestMapping(value="product/productInfo/{categoryNum}/{pdId}")
	public String addCart(@PathVariable(value = "categoryNum") int categoryNum,  
						  @PathVariable(value = "pdId") String pdId,  
						  @RequestParam boolean goCart, CartVO cartVO, HttpSession session ) {
		
		// 세션에 저장된 아이디 확인
		String sessionId = (String)session.getAttribute("sessionId");
		
		// 로그아웃 상태라면
		if(sessionId!=null) {
			// 세션에 categoryNum, pdId를 가지고 옴
			session.setAttribute("categoryNum", categoryNum);
			session.setAttribute("pdId", pdId);
			
			// cart 테이블에 저장
			cartVO.setcId(sessionId);
			cartService.addCart(cartVO);
			return "product/productInfo/"+categoryNum +"/"+pdId; 
		} else return "redirect:/customer/loginForm";
		
		
		
	  }
	 
	// 장바구니 삭제
	@RequestMapping(value="cart/delete")
	public String deleteCart(@RequestParam CartVO cartVO, HttpSession session) {
		String sessionId = (String)session.getAttribute("sessionId");
		if(sessionId!=null) {
			cartService.deleteCart(sessionId, cartVO.getPdItem());
			return "cart/cartList";
		} else return "redirect:/customer/loginForm";
	}
	

	
	/*
	 * //------------------
	 * 
	 * @RequestMapping(value = {"/cart"}, method = {RequestMethod.POST}) public int
	 * cart(HttpSession session, HttpServletRequest request, HttpServletResponse
	 * response, CartVO cartVO) throws Exception { logger.info("itemno=" +
	 * cartVO.getCart_item_no()); Cookie cookie = WebUtils.getCookie(request,
	 * "cartCookie");
	 * 
	 * //비회원장바구니 첫 클릭시 쿠키생성 if (cookie == null && session.getAttribute("member") ==
	 * null) { String ckid = RandomStringUtils.random(6, true, true); Cookie
	 * cartCookie = new Cookie("cartCookie", ckid); cartCookie.setPath("/");
	 * cartCookie.setMaxAge(60 * 60 * 24 * 1); response.addCookie(cartCookie);
	 * cartVO.setCart_ckid(ckid); this.mainService.cartInsert(cartVO);
	 * 
	 * //비회원 장바구니 쿠키생성 후 상품추가 } else if (cookie != null &&
	 * session.getAttribute("member") == null) {
	 * 
	 * String ckValue = cookie.getValue(); cartVO.setCart_ckid(ckValue); //장바구니 중복제한
	 * if(mainService.cartCheck(cartVO) != 0) { return 2; } //쿠키 시간 재설정해주기
	 * cookie.setPath("/"); cookie.setMaxAge(60 * 60 * 24 * 1);
	 * response.addCookie(cookie);
	 * 
	 * mainService.cartInsert(cartVO);
	 * 
	 * //회원 장바구니 상품추가 } else if(session.getAttribute("member") != null){ MemberVO
	 * memberVO = (MemberVO) session.getAttribute("member");
	 * cartVO.setCart_mem_no(memberVO.getMEM_NO());
	 * if(mainService.cartMemCheck(cartVO) != 0) { return 2; }
	 * mainService.cartInsert(cartVO); } return 1; }
	 */

	
	
}
