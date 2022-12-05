package com.GroupProject.dto;

import java.util.ArrayList;

import lombok.Data;
@Data
public class OrderListDto {

	private ArrayList<OrderinfoDto> orderInfoList;

	public ArrayList<OrderinfoDto> getOrderInfoList() {
		return orderInfoList;
	}

	public void setOrderInfoList(ArrayList<OrderinfoDto> orderInfoList) {
		this.orderInfoList = orderInfoList;
	}
	
	
	private String order_gcode;			// 주문상품코드
	private int order_gamount;			// 주문수량
	private String order_mid;			// 구매자아이디
	private String order_date;			// 주문일
	private String order_address;		// 배송주소
	
	private String order_type; // 상품종류
	private String order_typename; // 상품종류코드 -> 상품종류한글로 변환
	private String order_name; // 주문상품명
	private String order_tel; // 구매자연락처 
	
	private int order_price; // 상품가격
	
	private String order_price_string; // 상품가격 콤마
	
	private String order_image; // 상품이미지를 저장할 필드
	
	private int order_totalprice;
	
	private String order_totalprice_string;
	
	private String order_class; // 아이 + 주문일 합치는 필드 
	
	
	private int order_state;		// 결제상태 및 승인
	private String order_statename; // 결제상태표시
}
