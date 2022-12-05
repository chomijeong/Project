package com.GroupProject.dto;

import lombok.Data;

@Data
public class OrderinfoDto {

	private String order_mid;
	private String order_gcode;
	private int order_gamount;
	private String order_date;
	private String order_address;
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
 
	
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public String getOrder_mid() {
		return order_mid;
	}
	public void setOrder_mid(String order_mid) {
		this.order_mid = order_mid;
	}
	public String getOrder_gcode() {
		return order_gcode;
	}
	public void setOrder_gcode(String order_gcode) {
		this.order_gcode = order_gcode;
	}
	public int getOrder_gamount() {
		return order_gamount;
	}
	public void setOrder_gamount(int order_gamount) {
		this.order_gamount = order_gamount;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	@Override
	public String toString() {
		return "OrderinfoDto [order_mid=" + order_mid + ", order_gcode=" + order_gcode + ", order_gamount="
				+ order_gamount + ", order_date=" + order_date + ", order_address=" + order_address + "]";
	}
	
}
