package com.msa.varda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msa.varda.dao.ICartRepository;
import com.msa.varda.model.CartVO;

@Service
public class CartService implements ICartService{

	@Autowired
	ICartRepository cartRepository ;
	
	@Override
	public List<CartVO> getCartList(String sessionId) {
		return cartRepository.getCartList(sessionId);
	}

	@Override
	public void addCart(CartVO cartVO) {
		cartRepository.addCart(cartVO);
	}

	@Override
	public void deleteCart(String sessionId, String pdId) {
		cartRepository.deleteCart(sessionId, pdId);
	}

}
