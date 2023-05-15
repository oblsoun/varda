package com.msa.varda.service;

import java.util.List;
import java.util.Map;

import com.msa.varda.model.CartVO;

public interface ICartService {
	List<CartVO> getCartList(String sessionId); // 지정한 고객의 장바구니 목록 조회
	
	void addCart(CartVO cartVO); // 장바구니 DB에 추가
	
	void deleteCart(String sessionId, String pd_id); // 장바구니 DB 삭제
}
