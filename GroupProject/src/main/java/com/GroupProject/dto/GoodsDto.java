package com.GroupProject.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class GoodsDto {
	
	private String goods_code; //상품코드 
	private String goods_name; //상품명
	private int goods_price; //상품가격
	private int goods_amount; //재고
	private String goods_type; //상품종류 - 목줄 : GW001 , 하네스 : GW002 , 장난감 : GW003 , 기타용품 : GW004
 	private int goods_state; //상품 상태
	private String goods_image; //상품이미지
	private String goods_introduce; //상품설명
	
	private String goods_price_string; //상품가격 - 금액 자릿수 표기 된 값 저장
	private String goods_typename; // 상품종류코드 -> 상품종류한글로 변환 
	
	private MultipartFile goods_imagefile; // 이미지
	
	private String goods_statename; // 상품상태여부
	
	public String getGoods_code() {
		return goods_code;
	}

	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public int getGoods_amount() {
		return goods_amount;
	}

	public void setGoods_amount(int goods_amount) {
		this.goods_amount = goods_amount;
	}

	public String getGoods_type() {
		return goods_type;
	}

	public void setGoods_type(String goods_type) {
		this.goods_type = goods_type;
	}

	public int getGoods_state() {
		return goods_state;
	}

	public void setGoods_state(int goods_state) {
		this.goods_state = goods_state;
	}

	public String getGoods_image() {
		return goods_image;
	}

	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}

	public String getGoods_introduce() {
		return goods_introduce;
	}

	public void setGoods_introduce(String goods_introduce) {
		this.goods_introduce = goods_introduce;
	}

	public String getGoods_price_string() {
		return goods_price_string;
	}

	public void setGoods_price_string(String goods_price_string) {
		this.goods_price_string = goods_price_string;
	}

	@Override
	public String toString() {
		return "GoodsDto [goods_code=" + goods_code + ", goods_name=" + goods_name + ", goods_price=" + goods_price
				+ ", goods_amount=" + goods_amount + ", goods_type=" + goods_type + ", goods_state=" + goods_state
				+ ", goods_image=" + goods_image + ", goods_introduce=" + goods_introduce + ", goods_price_string="
				+ goods_price_string + "]";
	}
	
	
}
