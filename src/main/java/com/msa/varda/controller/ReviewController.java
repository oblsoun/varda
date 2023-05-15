package com.msa.varda.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
/*import org.jsoup.Jsoup;
import org.jsoup.safety.Safelist;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msa.varda.model.ProductVO;
/*import com.example.myapp.board.model.Board;
import com.example.myapp.board.model.BoardCategory;
import com.example.myapp.board.model.BoardUploadFile;*/
import com.msa.varda.model.ReviewVO;
import com.msa.varda.service.IReviewService;
import com.msa.varda.service.ReviewService;

//import lombok.RequiredArgsConstructor;

@Controller
public class ReviewController {
	static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	//DI 의존성 주입 생성자 메서드 주입방식(컨트롤러에서 서비스 클래스로 호출하고 가야됨)
	@Autowired IReviewService reviewService;
	
	
	
//	public ReviewController(ReviewService reviewService) {
//		this.reviewService = reviewService;
//	}

	
	
//	@GetMapping("board/index")
//	public String index() {
//		return "board/index";
//	}
//	
//	@GetMapping("board/reviewForm")
//	public String reviewForm() {
//		return "board/reviewForm";
//	}
	 
//	   void scoreReview(ReviewVO reviewVO); //라디오 버튼 점수 계산하기
//	   void writeReview(ReviewVO reviewVO); //전체적인 후기 글쓰기
//	   List<ReviewVO> getReviewList(String pdId); //해당 상품에 대한 리뷰 리스트 조회하기

//	리뷰 폼으로 이동   mypage/orderList------------------!!!!!!!!!!!!!OrderController로 이동!!
//	@RequestMapping(value="mypage/orderList", method=RequestMethod.GET)
//	 public String writeReviewForm(ProductVO productVO, Model model) { //상품명 정보 담아서 리뷰 폼으로 보내기
//	      /*void getPdInfo(); //리뷰 작성할때 구매한 상품 이미지, 상품명 갖고오기
//	       * List<BoardCategory> categoryList = categoryService.selectAllCategory();
//	       * model.addAttribute("categoryList", categoryList);
//	       * model.addAttribute("categoryId", categoryId);
//	       */
//	      return "mypage/orderList";
//	   }
		
	//리뷰 작성폼 @ModelAttribute로 jsp의 name과 ReviewVO의 필드명이 동일하면 스프링이 
	//해당하는 필드에 대한 setter를 알아서 호출을 하면서 ReviewVO의 필드에 담겨진 값을 setter메서드로 각각 담아줌
	@RequestMapping(value="mypage/orderList", method=RequestMethod.POST)
	public String writeReview(String pdId, String sessionId, Model model) {
		List<ReviewVO> reviewVO = reviewService.writeReview(sessionId,pdId);
		model.addAttribute(reviewVO);
		return "mypage/review/reviewForm";
	}
	
	
	
//	리뷰 작성하고 보내기
//	@RequestMapping(value="review/reviewForm", method=RequestMethod.POST)
//	public String writeReviewPro(ReviewVO reviewVO) {
//		
//		reviewService.writeReview(reviewVO);
//		
//		return"review/reviewList";
//	}
	
//	게시글 입력 폼
//	@RequestMapping(value="mypage/review/{pdid}", method=RequestMethod.GET)
//	   public String writeReview(@PathVariable int pdId, Model model) {
//	      /*
//	       * List<BoardCategory> categoryList = categoryService.selectAllCategory();
//	       * model.addAttribute("categoryList", categoryList);
//	       * model.addAttribute("categoryId", categoryId);
//	       */
//	      return "review/reviewForm";
//	   }
//	   

	
//	게시글 폼으로 이동
//	@RequestMapping(value="/board/write/{categoryId}", method=RequestMethod.GET)
//	public String writeArticle(@PathVariable int categoryId, Model model) {
//		List<BoardCategory> categoryList = categoryService.selectAllCategory();
//		model.addAttribute("categoryList", categoryList);
//		model.addAttribute("categoryId", categoryId);
//		return "board/write";
//	}
	
	//게시글 작성
	@RequestMapping(value="mypage/review/reviewForm", method=RequestMethod.POST)
	public String writeArticle(Model model, @ModelAttribute ReviewVO reviewVO) {
		model.addAttribute("reviewVO", reviewVO);
//		reviewService.save(reviewVO);
		
		//reviewService.writeReview(reviewVO);
		//		logger.info("/board/write : " + board.toString());
//		try{
//			board.setContent(board.getContent().replace("\r\n", "<br>"));
//			board.setTitle(Jsoup.clean(board.getTitle(), Safelist.basic()));
//			board.setContent(Jsoup.clean(board.getContent(), Safelist.basic()));
//			MultipartFile mfile = board.getFile();
//			if(mfile!=null && !mfile.isEmpty()) {
//				BoardUploadFile file = new BoardUploadFile();
//				file.setFileName(mfile.getOriginalFilename());
//				file.setFileSize(mfile.getSize());
//				file.setFileContentType(mfile.getContentType());
//				file.setFileData(mfile.getBytes());
//				boardService.insertArticle(board, file);
//			}else {
//				boardService.insertArticle(board);
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//			redirectAttrs.addFlashAttribute("message", e.getMessage());
//		}
		return "mypage/review/reviewForm";
				//"product/productList/"+ reviewVO.getPdId();
	}
	
	// 리뷰 페이지 조회
//	@RequestMapping(value = "product/productList/{pdId}/{pdSubImg}")
//	 	public String getPdInfo(ProductVO productVO, @PathVariable(value = "pdId") String pdId, @PathVariable(value = "pdSubImg") String pdSubImg) {
//	      return "redirect:product/productList/" + pdId + "/" + pdSubImg;
//	   }
	
	//리뷰 리스트
//	@RequestMapping(value="product/reviewList", method=RequestMethod.GET)
//	public List<ReviewVO> getReviewList(String pdId) {
//		return reviewService.getReviewList(pdId);
//	}

	//리뷰 리스트 
	@RequestMapping(value="mypage/review/reviewList", method=RequestMethod.POST)
	public String getReviewList(Model model) {
		//logger.info("getBoardDetails ");
		
//		List<ReviewVO> reviewList = reviewService.getReviewList(null);
//		model.addAttribute("title", "회원목록조회");
//		model.addAttribute("reviewList", reviewList);
//		session.setAttribute("page", page);
//		model.addAttribute("categoryId", categoryId);
//
//		List<Board> boardList = boardService.selectArticleListByCategory(categoryId, page);
//		model.addAttribute("boardList", boardList);
//
//		int bbsCount = boardService.selectTotalArticleCountByCategoryId(categoryId);
//		int totalPage = 0;
//		if(bbsCount > 0) {
//			totalPage= (int)Math.ceil(bbsCount/10.0);
//		}
//		int totalPageBlock = (int)(Math.ceil(totalPage/10.0));
//		int nowPageBlock = (int) Math.ceil(page/10.0);
//		int startPage = (nowPageBlock-1)*10 + 1;
//		int endPage = 0;
//		if(totalPage > nowPageBlock*10) {
//			endPage = nowPageBlock*10;
//		}else {
//			endPage = totalPage;
//		}
//		model.addAttribute("totalPageCount", totalPage);
//		model.addAttribute("nowPage", page);
//		model.addAttribute("totalPageBlock", totalPageBlock);
//		model.addAttribute("nowPageBlock", nowPageBlock);
//		model.addAttribute("startPage", startPage);
//		model.addAttribute("endPage", endPage);
		return "mypage/review/reviewList";
	}

//	public void getPdInfo() {
//		reviewService.getPdInfo();
//	}
//
//	public void scoreReview(ReviewVO reviewVO) {
//		reviewService.scoreReview(reviewVO);
//	}
//
//	public void writeReview(ReviewVO reviewVO) {
//		reviewService.writeReview(reviewVO);
//	}


	

//	@RequestMapping("/board/cat/{categoryId}")
//	public String getListByCategory(@PathVariable int categoryId, HttpSession session, Model model) {
//		return getListByCategory(categoryId, 1, session, model);
//	}
}
