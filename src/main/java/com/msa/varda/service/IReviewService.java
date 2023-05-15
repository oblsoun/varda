package com.msa.varda.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.msa.varda.model.ReviewVO;

public interface IReviewService {
	
	  // void scoreReview(ReviewVO reviewVO); //라디오 버튼 점수 계산하기
	   void save(ReviewVO reviewVO); //게시글 저장
	   public List<ReviewVO> getReviewList(); //리뷰 리스트 조회하기
	   
	   
	   List<ReviewVO> writeReview(String sessionId,String pdId); //리뷰 작성하기 (버튼 눌렀을때 c_id, pd_id 먼저 받아오기)
}
