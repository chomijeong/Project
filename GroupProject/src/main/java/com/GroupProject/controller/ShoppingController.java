package com.GroupProject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dto.BasketDto;
import com.GroupProject.dto.OrderListDto;
import com.GroupProject.dto.PayDto;
import com.GroupProject.service.ShoppingService;


@Controller
public class ShoppingController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ShoppingService spvc;


	// 쇼핑몰 페이지 이동
	@RequestMapping(value="/shoppingListPage")
	public ModelAndView shoppingListPage() {
		System.out.println("산책용품 쇼핑 페이지 이동 요청");
		
		ModelAndView mav = new ModelAndView();
		
		String loginId = (String)session.getAttribute("loginId");
		
		mav = spvc.selectGoodsList(loginId);
		
		mav.setViewName("shopping/ShoppingList");
		
		return mav;
		
	} 
	
	//메세지를 띄우기 위한 우회 서블릿
	@RequestMapping(value="/shoppingListPage_redirect")
	public ModelAndView shoppingListPage_redirect(@RequestParam(value = "msg", defaultValue = "") String msg, RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();
		System.out.println("전달할 메세지--"+msg);
		ra.addFlashAttribute("msg",msg);
		String loginId = (String)session.getAttribute("loginId");
		mav.addObject("loginId",loginId);
		mav.setViewName("redirect:/shoppingOrderListPage");
		
		return mav;
		
	} 
	
	// 장바구니 상품 추가 - ajax
	@RequestMapping(value="/shoppingBasketAjax")
	public @ResponseBody void shoppingBasketAjax(BasketDto basket) {
		System.out.println("장바구니에 상품 담기 요청 - ajax");
		
		System.out.println(basket);
		spvc.shoppingBasketAjax(basket);
		
	}
	
	// 장바구니 상품 추가 - 페이지 이동
	@RequestMapping(value="/shoppingBasket")
	public ModelAndView shoppingBasket(BasketDto basket,RedirectAttributes ra) {
		System.out.println("장바구니에 상품 추가 후 장바구니로 이동 요청");
		ModelAndView mav = new ModelAndView();
		System.out.println(basket);
		spvc.shoppingBasket(basket);
		
		String loginId = (String)session.getAttribute("loginId");
		if(loginId == null) {
			ra.addFlashAttribute("msg","로그인 후 이용해주세요");
			mav.setViewName("redirect:/shoppingListPage");
		}else {
			
			mav.addObject("basket_id", loginId);
			mav.setViewName("redirect:/shoppingBasketListPage");
		}
		
		return mav;
		
	} 
	
	// 장바구니 페이지 이동
	@RequestMapping(value="/shoppingBasketListPage")
	public ModelAndView shoppingBasketListPage() {
		System.out.println("장바구니 페이지 이동");
		ModelAndView mav = new ModelAndView();
		mav = spvc.shoppingBasketPage();
		return mav;
	}
	
	// 장바구니 회원 정보 조회
	@RequestMapping(value="/orderMemberSearch")
	public @ResponseBody String orderMemberSearch(String loginId) {
		String orderMemberSearch = spvc.orderMemberSearch(loginId);
		
		return orderMemberSearch;
	}
	
	// 장바구니 상품 갯수 업데이트 처리
	@RequestMapping(value="/basketAmountModify")
	public @ResponseBody String basketAmountModify(String basket_gcode, int basket_gamount, String loginId) {
		String basketAmountModify = spvc.basketAmountModify(basket_gcode, basket_gamount, loginId);
		return basketAmountModify;
	}
	
	// 장바구니 상품 삭제 처리
	@RequestMapping(value="/basketDel")
	public @ResponseBody String basketDel(String loginId, String basket_gcode) {
		String basketDel = spvc.basketDel(loginId, basket_gcode);
		
		return basketDel;
	}
	
	// 결제 테이블 생성
	@RequestMapping(value="/payInfoList")
	public @ResponseBody String payInfoList(PayDto paydto) {
		String payInfoList = spvc.payInfoList(paydto);
		return payInfoList;
	}
	
	// 장바구니 리스트 모두 삭제
	@RequestMapping(value="/basketListDel")
	public @ResponseBody String basketListDel(String loginId) {
		String basketListDel = spvc.basketListDel(loginId);
		
		
		
		
		return basketListDel;
	}
	
	// 주문 내역 테이블 생성
	@RequestMapping(value="/orderInfoList")
	public @ResponseBody String orderInfoList(OrderListDto orderinfoList) {
		//String orderInfoList = spvc.orderInfoList(orderinfoList);
		//return orderInfoList;
		System.out.println(orderinfoList.getOrderInfoList().size());
		System.out.println(orderinfoList.getOrderInfoList().get(0).getOrder_gcode());
		
		String orderInfoList = spvc.orderList(orderinfoList);
		
		
		return orderInfoList;
	}
	
	//이하 조미정님 컨트롤러 
	@RequestMapping(value="shoppingOrderListPage")
	public ModelAndView shoppingPurchaseListPage(String loginId) {
		
		System.out.println("주문내역목록 페이지 이동 요청");
		
		String order_mid =(String)session.getAttribute("loginId");
		
		
		
		ModelAndView mav = spvc.shoppingOrderListPage(order_mid);
		
		return mav;
		
	}
	
	
	@RequestMapping(value="shoppingCancellation")
	public @ResponseBody String shoppingCancellation(RedirectAttributes ra,String order_mid, String order_date, int order_state) {
		System.out.println("결제취소 요청");
		
		String updateGoodsCancellation = spvc.shoppingCancellation(ra,order_mid,order_date,order_state);
		
		return updateGoodsCancellation;
	}
	
}