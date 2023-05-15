package com.msa.varda.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msa.varda.model.ProductVO;
import com.msa.varda.service.IProductService;

@Controller
public class ProductController {
	
	@Autowired IProductService productService;

	// 상품 목록 조회
	@RequestMapping(value = "product/productList/{categoryNum}")
	public String getPdList(
			@RequestParam(value = "categoryNum", required = false, defaultValue = "0") int categoryNum, Model model) {
		List<ProductVO> products = productService.getProductList(categoryNum);
		model.addAttribute("products", products);
		return "redirect:product/productList/"+categoryNum;
	}

	
	// 상품 상세 페이지 조회
	@RequestMapping(value = "product/productList/{categoryNum}/{pdId}")
	public String getPdInfo(ProductVO productVO, @PathVariable(value = "categoryNum") int categoryNum, @PathVariable(value = "pdId") String pdId, Model model) {
		productVO = productService.getProductInfo(pdId);
		model.addAttribute("productVO", productVO);
		return "redirect:product/productList/" + categoryNum + "/" + pdId;
	}
	
	  //상품 등록 폼으로
	  
	  @RequestMapping(value="product/addProduct") 
	  public String addProduct() {
	  return "product/addProductForm"; 
	  }
	  
	 //상품 등록 시 상품 아이디 만들기
	  @RequestMapping(value="product/addProductId", method = RequestMethod.POST)
	  public String addProductId( @RequestParam("gender") int gender,  @RequestParam("skinType") int skinType,  @RequestParam("pdType") int pdType, Model model) {
		  model.addAttribute(productService.makeProductId(gender, skinType, pdType)); //상품 아이디 만드는 서비스
		  return "product/addProductForm";
	  }
	  
	// 상품 등록
	@RequestMapping(value = "product/addProductForm")
	public String insertPd(ProductVO productVO, RedirectAttributes redirectAttributes) {
		productService.insertProduct(productVO);
		redirectAttributes.addFlashAttribute("message", 
				"상품 " + productVO.getPdId() + "의 등록이 완료되었습니다.");
		return "redirect:product/productList";
	}

}
