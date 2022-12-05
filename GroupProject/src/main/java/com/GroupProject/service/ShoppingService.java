package com.GroupProject.service;

import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dao.ShoppingDao;
import com.GroupProject.dto.BasketDto;
import com.GroupProject.dto.GoodsDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.OrderListDto;
import com.GroupProject.dto.OrderinfoDto;
import com.GroupProject.dto.PayDto;
import com.google.gson.Gson;


@Service
public class ShoppingService {
	
	@Autowired
	private HttpSession session;

	@Autowired
	private ShoppingDao spdao;
	private ModelAndView mav;
	

	// 쇼핑몰 페이지 이동
	public ModelAndView selectGoodsList(String loginId) {
		System.out.println("ShoppingService.selectGoodsList() 호출");
		ModelAndView mav = new ModelAndView();
		
		//돈 자릿수 표기
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		//상품 정보 조회
		ArrayList<GoodsDto> goodsList = spdao.selectGoodsList(loginId);
		
		for(int i = 0; i < goodsList.size(); i++) {
			System.out.println(formatter.format(goodsList.get(i).getGoods_price()));
			goodsList.get(i).setGoods_price_string(formatter.format(goodsList.get(i).getGoods_price()));
			
		}
		
		System.out.println(goodsList);
		
		mav.addObject("goodsList", goodsList);
		
		return mav;
	}
	
	// 장바구니 상품 추가 - ajax
	public void shoppingBasketAjax(BasketDto basket) {
		System.out.println("ShoppingService.shoppingBasketAjax() 호출");
		
		//회원이 선택한 상품의 장바구니 유무 확인
		BasketDto bk = spdao.selectMyBasket(basket);
		
		if(bk == null) {
			//새로운 상품을 장바구니 추가
			spdao.insertOderInfoBasketState(basket);
			
			
		} else {
			//장바구니 수량 +1 update
			spdao.updateBasketGamount(basket);
			
			
		}
		
	}
	
	// 장바구니 상품 추가 - 페이지 이동
	public void shoppingBasket(BasketDto basket) {
		System.out.println("ShoppingService.shoppingBasket() 호출");
		ModelAndView mav = new ModelAndView();
		
		System.out.println(basket);
		//회원이 선택한 상품의 장바구니 유무 확인
		BasketDto bk = spdao.selectMyBasket(basket);
		
		if(bk == null) {
			//새로운 상품을 장바구니 추가
			spdao.insertOderInfoBasketState(basket);
			
			
		} else {
			//장바구니 수량 +1 update
			spdao.updateBasketGamount(basket);
			
			
		}
		
	}
	
	// 장바구니 페이지 이동
	public ModelAndView shoppingBasketPage() {
		
		ModelAndView mav = new ModelAndView();
		
		String loginId = (String)session.getAttribute("loginId");
		
		System.out.println(loginId);
		
		ArrayList<BasketDto> basketinfo = spdao.selectOrderInfoBasket(loginId);
		
		System.out.println(basketinfo);
		
		mav.addObject("basketinfo", basketinfo);
		
		mav.setViewName("shopping/ShoppingBasketList");
		
		return mav;
	}

	// 장바구니 회원 정보 조회
	public String orderMemberSearch(String loginId) {
		System.out.println(loginId);
		
		MembersDto memberinfo = spdao.selectBasketMemberInfo(loginId);
		
		// 이메일 분리
		String member_address = memberinfo.getMember_address();
		
		if(member_address != null)
		{
			String[] member_address_arr = member_address.split("_");
			if(member_address_arr.length >=4)
			{
				memberinfo.setMember_postcode(member_address_arr[0]);
				memberinfo.setMember_addr(member_address_arr[1]);
				memberinfo.setMember_detailaddr(member_address_arr[2]);
				memberinfo.setMember_extraaddr(member_address_arr[3]);
			}
		}
		
		Gson gson = new Gson();
		String memberinfo_json = gson.toJson(memberinfo);
		
		return memberinfo_json;
	}
	
	// 
	public String basketAmountModify(String basket_gcode, int basket_gamount, String loginId) {
		int basketAmountModify = spdao.updateBasketAmount(basket_gcode, basket_gamount, loginId);
		return basketAmountModify + "";
	}
	
	// 장바구니 상품 삭제 처리
	public String basketDel(String loginId, String basket_gcode) {
		int basketDel = spdao.deleteBasketList(loginId, basket_gcode);
		System.out.println(loginId);
		return basketDel+"";
	}

	// 결제 테이블 생성
	public String payInfoList(PayDto paydto) {
		
		int payInfoList = spdao.insertPayInfoList(paydto);
		
		System.out.println(paydto);
		
		return payInfoList+"";
		
	}

	// 장바구니 리스트 모두 삭제
	public String basketListDel(String loginId) {
		int basketListDel = spdao.deleteBasketListAll(loginId);
		
	
		
		return basketListDel + "";
	}
	
	// 주문 내역 테이블 생성
	public String orderList(OrderListDto orderinfoList) {
		System.out.println(orderinfoList.getOrderInfoList().size());
		System.out.println(orderinfoList.getOrderInfoList().get(0).getOrder_gcode());
		
		int orderInfoList =0;
		
		for(int i = 0; i < orderinfoList.getOrderInfoList().size(); i++)
		{
			orderInfoList = spdao.insertOrderInfoList(orderinfoList.getOrderInfoList().get(i));
			orderinfoList.getOrderInfoList().get(i);
			System.out.println(orderinfoList.getOrderInfoList().get(i));
		}
		
		
		return orderInfoList + "";
	}

	

	
//이하 조미정님 서비스
	

	public ModelAndView shoppingOrderListPage(String order_mid) {
		System.out.println("ShoppingService.shoppingOrderListPage() 호출");
		
		ModelAndView mav = new ModelAndView();
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		ArrayList<OrderinfoDto> OrderList = spdao.selectGoodsOrderList(order_mid);
		for (int i = 0; i < OrderList.size(); i++) {
		if(OrderList.get(i).getOrder_state() == 0) {
			
			OrderList.get(i).setOrder_statename("결제취소승인");

		}else if(OrderList.get(i).getOrder_state() == 1) {
			
			OrderList.get(i).setOrder_statename("결제완료");
			
		}else if(OrderList.get(i).getOrder_state() == 2) {
			
			OrderList.get(i).setOrder_statename("결제취소요청");
		
		}else if(OrderList.get(i).getOrder_state() == 3) {
			
			OrderList.get(i).setOrder_statename("결제취소반려");
		
		}else if(OrderList.get(i).getOrder_state() == 4) {
			
			OrderList.get(i).setOrder_statename("배송준비");
		
		}else if(OrderList.get(i).getOrder_state() == 5) {
			
			OrderList.get(i).setOrder_statename("배송중");
		
		}else if(OrderList.get(i).getOrder_state() == 6) {
			
			OrderList.get(i).setOrder_statename("배송완료");
		
	
		}
		
		if(OrderList.get(i).getOrder_type().equals("GW001")) {
			
			OrderList.get(i).setOrder_typename("목줄");
			
		}else if(OrderList.get(i).getOrder_type().equals("GW002")) {
			
			OrderList.get(i).setOrder_typename("하네스");
			
		}else if(OrderList.get(i).getOrder_type().equals("GW003")) {
			
			OrderList.get(i).setOrder_typename("장난감");
			
		}else if(OrderList.get(i).getOrder_type().equals("GW004")) {
			
			OrderList.get(i).setOrder_typename("기타");
		}
		
		
		System.out.println(OrderList.get(i).getOrder_price());
		OrderList.get(i).setOrder_price_string(formatter.format(OrderList.get(i).getOrder_price()));
		
		
		System.out.println(OrderList.get(i).getOrder_totalprice());
		OrderList.get(i).setOrder_totalprice_string(formatter.format(OrderList.get(i).getOrder_totalprice()));
		
		String order_middate = OrderList.get(i).getOrder_mid()+OrderList.get(i).getOrder_date();
		
		
		
		
		
		
		OrderList.get(i).setOrder_class(order_middate);
		
		
		}
		
		
		
		
		mav.addObject("OrderList",OrderList);
		mav.setViewName("shopping/ShoppingOrderList");
		
		return mav;
	}



	public String shoppingCancellation(RedirectAttributes ra,String order_mid, String order_date, int order_state) {
		System.out.println("ShoppingService.shoppingCancellation() 호출");
		System.out.println("order_mid : "+order_mid);
		System.out.println("order_state : "+order_state);
		System.out.println("order_date : "+order_date );
		
		int updateGoodsCancellation = spdao.updateGoodsCancellation(order_mid,order_date,order_state);
		System.out.println("updateGoodsCancellation : "+updateGoodsCancellation);
		if(updateGoodsCancellation > 0) {
			
			ra.addFlashAttribute("msg", "결제취소 요청처리 되었습니다.");
			
		}
		
		
		
		
		
		
		
		
		
		
		return updateGoodsCancellation+"";
	}



	

	
}
