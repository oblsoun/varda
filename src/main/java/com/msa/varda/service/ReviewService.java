package com.msa.varda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.msa.varda.dao.IReviewRepository;
import com.msa.varda.model.ReviewVO;
//Service에서 Dao패키지에 Mapper인터페이스에 정의된 메소드 실행
@Service
public class ReviewService implements IReviewService{
	//DI 의존성 주입 생성자 메서드 주입방식
	@Autowired //Mapper.xml에 있는 sql문을 ReviewService로 읽어와서 의존성주입하여 객체생성 한것.
	IReviewRepository reviewRepository;

	public void save(ReviewVO reviewVO) {
		reviewRepository.save(reviewVO);
	}

	public List<ReviewVO> getReviewList() {
		List<ReviewVO> list = (List<ReviewVO>) reviewRepository.getReviewList(null);
		
		return list;
	}

	@Transactional
	public List<ReviewVO> writeReview(String sessionId, String pdId) {
		List<ReviewVO> reviewVO = reviewRepository.writeReview(sessionId, pdId);
		return reviewVO;
	}

	//경로 : ReviewController -> IReviewService(I) -> ReviewServiceImpl ->
	//		 ReviewMapper(I) -> boardMapper.xml
}
