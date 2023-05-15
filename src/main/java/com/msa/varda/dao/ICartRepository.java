package com.msa.varda.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.msa.varda.model.CartVO;

@Repository
@Mapper
public interface ICartRepository {
	List<CartVO> getCartList(String sessionId);
	void addCart(CartVO cartVO);
	void deleteCart(String sessionId, String pdId);
}
