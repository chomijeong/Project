package com.GroupProject.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dto.GoodsDto;
import com.GroupProject.dto.OrderinfoDto;
import com.GroupProject.service.AdminShoppingService;

@Controller
public class AdminShoppingController {
	

	private ModelAndView mav;
	
	@Autowired
	private AdminShoppingService assvc;
	
	// 관리자 상품 목록 페이지
	@RequestMapping(value="/adminGoodsListPage")
	public ModelAndView adminGoodsList() {
		System.out.println("관리자 상품 목록 페이지 이동요청");
		
		
		ModelAndView mav = assvc.adminGoodsListPage();
		

		return mav;
		
		
		
	}
	// 관리자 상품 상세 정보 요청
	@RequestMapping(value="adminGoodsViewModal")
	public @ResponseBody String adminGoodsViewModal(String goods_code) {
		System.out.println("관리자 상품 상세 정보 요청");
		
		String Goods = assvc.adminGoodsViewModal(goods_code);
		
		return Goods;
		
	}
	
	// 관리자 상품 상세 수정 처리
	@RequestMapping(value="adminGoodsModify")
	public ModelAndView adminGoodsModify(RedirectAttributes ra,GoodsDto goods) throws IllegalStateException, IOException {
		System.out.println("관리자 상품 상세 수정 처리 요청");
		
		
		ModelAndView mav = assvc.adminGoodsModify(ra,goods);
		
		
		return mav;
		
		
		
	}
	
	
	
	
	
	// 관리자 상품 상태 변경
	@RequestMapping(value="/adminGoodsState")
	public @ResponseBody String adminGoodsState(String goods_code, int goods_state) {
		System.out.println("관리자 상품 상태 변경");
		
		String updateGoodsState = assvc.adminGoodsState(goods_code,goods_state);
		
		
		return updateGoodsState;
		
		
		
	}
	
	// 관리자 상품 등록 페이지
	@RequestMapping(value="/adminGoodsWritePage")
	public String adminGoodsWritePage() {
		System.out.println("관리자 상품 등록 페이지 이동 요청");
		
		
		
		
		
		return "admin/adminShopping/AdminGoodsWrite";
		
	}
	
	// 상품 등록 처리
	@RequestMapping(value="/adminInsertGoods")
	public ModelAndView adminInsertGoods(RedirectAttributes ra, GoodsDto goods) throws IllegalStateException, IOException {
		
		System.out.println("상품 등록 처리 요청");
		
		ModelAndView mav = assvc.adminInsertGoods(ra,goods);
	
		
		return mav;
	}

	// 관리자 구매 목록 페이지 
	@RequestMapping(value="/adminOrderListPage")
	public ModelAndView adminOrderListPage() {
		System.out.println("관리자 구매 목록 페이지 이동 요청");
		
		ModelAndView mav = assvc.adminOrderListPage();
		
		return mav;
	}
	
	
	// 관리자 구매 상태 변경
	@RequestMapping(value="/adminOrderState")
	public @ResponseBody String adminOrderState(String order_mid,String order_date, int order_state) {
		System.out.println("관리자 구매 상태 변경");
		
		String updateOrderState = assvc.adminOrderState(order_mid,order_date,order_state);
		
		
		return updateOrderState;
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
