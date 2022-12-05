package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.BasketDto;
import com.GroupProject.dto.GoodsDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.OrderinfoDto;
//import com.GroupProject.dto.OrderListDto;
//import com.GroupProject.dto.OrderinfoDto;
import com.GroupProject.dto.PayDto;

public interface ShoppingDao {

	//상품 정보 select
	ArrayList<GoodsDto> selectGoodsList(String loginId);
	
	//장바구니 insert
	void insertOderInfoBasketState(BasketDto basket);

	//회원이 선택한 상품의 장바구니 유무 확인
	BasketDto selectMyBasket(BasketDto basket);

	//장바구니 수량 +1 update
	void updateBasketGamount(BasketDto basket);
		
	// 장바구니 페이지 이동
	ArrayList<BasketDto> selectOrderInfoBasket(String loginId);

	// 장바구니 회원 정보 조회
	MembersDto selectBasketMemberInfo(String loginId);

	// 장바구니 상품 개수 수정 처리
	int updateBasketAmount(@Param("basket_gcode")String basket_gcode, @Param("basket_gamount")int basket_gamount, @Param("loginId")String loginId);

	// 장바구니 상품 삭제 처리
	int deleteBasketList(@Param("loginId")String loginId, @Param("basket_gcode")String basket_gcode);

	// 결제 테이블 생성
	int insertPayInfoList(PayDto paydto);

	// 장바구니 리스트 모두 삭제
	int deleteBasketListAll(String loginId);

	// 주문 내역 테이블 생성
	int insertOrderInfoList(OrderinfoDto orderinfoDto);

//이하 조미정님 dao
	ArrayList<OrderinfoDto> selectGoodsOrderList(String order_mid);

	int updateGoodsCancellation(@Param("order_mid") String order_mid, @Param("order_date") String order_date, @Param("order_state") int order_state);

	
	
}
