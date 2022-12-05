package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.GoodsDto;
import com.GroupProject.dto.OrderinfoDto;


public interface AdminShoppingDao {

	ArrayList<GoodsDto> selectGoodsList();
	
	GoodsDto selectGoodsViewInfo(String goods_code);
	
	ArrayList<GoodsDto> selectimagefile(GoodsDto goods);
	
	int updateGoodsModify(GoodsDto goods);

	int updateGoodsState( @Param("goods_code") String goods_code, @Param("goods_state") int goods_state);
	
	String getMaxGoods_code();

	ArrayList<GoodsDto> GoodsListWrite();

	void insertGoods(GoodsDto goods);

	ArrayList<GoodsDto> Goods_optioncodeList();

	String Maxgoods_optioncode();

	ArrayList<OrderinfoDto> selectOrderList();

	int updateOrderState(@Param("order_mid") String order_mid, @Param("order_date") String order_date, @Param("order_state") int order_state);

	
	

	

	

	

	

	

	


	

	



}
