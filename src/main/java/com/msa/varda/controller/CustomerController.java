package com.msa.varda.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.msa.varda.model.CustomerVO;
import com.msa.varda.service.ICustomerService;


@Controller
public class CustomerController {

   @Autowired
   ICustomerService customerService;

   //로그인 1)로그인 폼으로
   @RequestMapping(value="customer/login", method = RequestMethod.GET)
   public String login() {
      return "customer/loginForm";
   }
   
   //로그인폼에서 2-1)회원가입 폼으로
   @RequestMapping(value="customer/loginForm/join", method=RequestMethod.GET)
   public String joinCustomer() {
      return "redirect:/customer/joinForm";
   }
   
   //회원가입폼에서 2-2)회원가입 성공폼으로
   @RequestMapping(value="customer/joinForm", method = RequestMethod.POST)
   public String joinCustomer(CustomerVO customerVO, HttpSession session, Model model) {
       // 아이디 중복 검사
       boolean isDuplicate = customerService.isDuplicateId(customerVO.getcId());
       if (isDuplicate) {
           // 중복된 아이디인 경우
           model.addAttribute("errorMessage", "이미 사용 중인 아이디입니다.");
           return "customer/joinForm";
       } else {
           // 중복되지 않은 아이디인 경우 회원가입 처리
           customerService.joinCustomer(customerVO);
           session.invalidate();
           return "customer/joinSuccess";
       }
   }
      
   
   //로그인폼에서 3)로그인 후
   @RequestMapping(value="customer/loginForm", method = RequestMethod.POST)
   public String login(CustomerVO customerVO, @RequestParam("id") String id, @RequestParam("pwd") String pwd, HttpSession session, Model model) {
      CustomerVO logInCustomer = customerService.login(id, pwd);
      
      if(logInCustomer !=null) {
         //로그인 성공한 경우, ID, PW저장
         session.setAttribute("loginId", logInCustomer.getcId());
         session.setAttribute("loginPW", logInCustomer.getcPwd());
         return   "redirect:/main/loginMain";
      }else {
         // 로그인 실패한 경우
            model.addAttribute("errorMessage", "아이디 또는 비밀번호가 올바르지 않습니다.");
            return "customer/loginForm";
      }
   }
   
   //로그아웃하기
   @RequestMapping(value="customer/logout", method = RequestMethod.GET)
   public String logout(HttpSession session, Model model) {
      session.invalidate(); //로그아웃
      return   "redirect:/main/logoutMain";
   }
   
   //회원정보 수정하기 1)폼으로
   @RequestMapping(value="mypage/update", method = RequestMethod.GET)
   public String updateCustomerInfo(HttpSession session, Model model) {
      return "/mypage/update";
   }
   
   //2)로그인 메인폼으로
   @RequestMapping(value="mypage/update", method = RequestMethod.POST)
   public String updateCustomerInfo(CustomerVO customerVO, HttpSession session, Model model) {
      return "redirect:/main/loginMain";
   }
}