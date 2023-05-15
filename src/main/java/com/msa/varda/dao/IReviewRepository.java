package com.msa.varda.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.msa.varda.model.ReviewVO;

@Repository
@Mapper
public interface IReviewRepository {
	
	void writeReview(ReviewVO reviewVO); //리뷰 작성할때 상품정보에 대한 값을 갖고오기
	List<ReviewVO> getReviewList(String pdId); //해당 상품에 대한 리뷰 리스트 조회하기
	
	List<ReviewVO> writeReview(String sessionId,String pdId);
	void save(ReviewVO reviewVO);
	
}
