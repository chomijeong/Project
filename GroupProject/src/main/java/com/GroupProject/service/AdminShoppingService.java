package com.GroupProject.service;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.UUID;

import com.GroupProject.dao.AdminShoppingDao;
import com.GroupProject.dto.GoodsDto;
import com.GroupProject.dto.OrderinfoDto;
import com.google.gson.Gson;


@Service
public class AdminShoppingService {

	@Autowired
	private AdminShoppingDao asdao;

	//저장경로 설정
	private String savePath="C:\\Users\\user\\Spring\\GroupProject4\\src\\main\\webapp\\resources\\fileUpload";	

	public ModelAndView adminGoodsListPage() {
		System.out.println("adminShoppingService.adminGoodsListPage() 호출");

		ModelAndView mav = new ModelAndView();

		DecimalFormat formatter = new DecimalFormat("###,###");
		
		ArrayList<GoodsDto> GoodsList = asdao.selectGoodsList();

		for (int i = 0; i < GoodsList.size(); i++) {
			
			
			if (GoodsList.get(i).getGoods_state() == 0) {

				GoodsList.get(i).setGoods_statename("매진상태");
			} else if (GoodsList.get(i).getGoods_state() == 1) {

				GoodsList.get(i).setGoods_statename("판매중");
			} else if (GoodsList.get(i).getGoods_state() == 5) {

				GoodsList.get(i).setGoods_statename("삭제완료");

			}
			
			if(GoodsList.get(i).getGoods_type().equals("GW001")) {
				
				
				GoodsList.get(i).setGoods_typename("목줄");
				
			} else if(GoodsList.get(i).getGoods_type().equals("GW002")) {
				
				GoodsList.get(i).setGoods_typename("하네스");
				
			} else if(GoodsList.get(i).getGoods_type().equals("GW003")) {
				
				GoodsList.get(i).setGoods_typename("장난감");
				
			}else if(GoodsList.get(i).getGoods_type().equals("GW004")) {
				
				GoodsList.get(i).setGoods_typename("기타");
				
			}
			
			
			GoodsList.get(i).setGoods_price_string(formatter.format(GoodsList.get(i).getGoods_price()));

		}
		
		
		
		
		

		mav.addObject("GoodsList", GoodsList);
		mav.setViewName("admin/adminShopping/AdminGoodsList");

		return mav;
	}
	
	public String adminGoodsViewModal(String goods_code) {
		System.out.println("AdminShoppingService.adminGoodsViewModal() 호출");
		GoodsDto Goods = asdao.selectGoodsViewInfo(goods_code);
		Gson gson = new Gson();
		String Goods_Json = gson.toJson(Goods);
		System.out.println(Goods_Json);
		
		
		
		return Goods_Json;
	}
	
	public ModelAndView adminGoodsModify(RedirectAttributes ra,GoodsDto goods) throws IllegalStateException, IOException {
		System.out.println("AdminShoppingService.adminGoodsModify() 호출");
		
		ModelAndView mav = new ModelAndView();
		
		MultipartFile goods_imagefile = goods.getGoods_imagefile();
		
		String goods_image = "";
		System.out.println(!goods_imagefile.isEmpty());
		
		if(!goods_imagefile.isEmpty()) {
				// isEmpty() : 비어있는지 확인 / !가 붙었기 때문에 있는지 확인.
				// 첨부 파일 있을 때만 실행.
				System.out.println("첨부파일 있음");
				UUID uuid = UUID.randomUUID();
				// 1. 파일명 생성
				goods_image = uuid.toString()+"_"+goods_imagefile.getOriginalFilename();
				
				// 3. 프로필 이미지 파일 저장
				goods_imagefile.transferTo(new File(savePath, goods_image));
		}else {
			System.out.println("첨부파일 없음");
			
			
			
			
		goods_image = ""; //원래가지고있던 파일명 
			
		
		ArrayList<GoodsDto> goodsfile = asdao.selectimagefile(goods);
		
		System.out.println("goodsfile :"+goodsfile);
		
			for(int i = 0; i < goodsfile.size(); i++) {
			
	
			
			

			goods_image = goodsfile.get(i).getGoods_image();
			
			
			
				
					
				
	
			}
	
		
		
		}
		
		
		System.out.println(goods_image);
		goods.setGoods_image(goods_image);
		
		int updateGoodsModifyResult = asdao.updateGoodsModify(goods);
		if(updateGoodsModifyResult > 0 ) {
			
			ra.addFlashAttribute("msg", "상품이 수정되었습니다.");
			
		}
			
		mav.setViewName("redirect:/adminGoodsListPage");
		

		return mav;
	}


	

	public String adminGoodsState(String goods_code, int goods_state) {
		System.out.println("adminShoppingService.adminGoodsState() 호출");
		System.out.println("goods_code : " + goods_code);
		System.out.println("goods_state : " + goods_state);

		int updateGoodsStateResult = asdao.updateGoodsState(goods_code, goods_state);
		System.out.println("updateGoodsStateResult : " + updateGoodsStateResult);
		
		
		

		return updateGoodsStateResult + "";
	}
	
	
	
	
	
	public ModelAndView adminInsertGoods(RedirectAttributes ra, GoodsDto goods) throws IllegalStateException, IOException {
		System.out.println("adminShoppingService.adminInsertGoods() 호출");
		
		ModelAndView mav = new ModelAndView();
		

		// 상품 코드
		// 1. 상품코드 생성 (select)
		String goods_code = "GD";
		String maxGoods_code = asdao.getMaxGoods_code();
		
		if(maxGoods_code == null) {
			goods_code = goods_code + "001";
			
		}else {
			maxGoods_code = maxGoods_code.substring(2);
			int GdcodeNum = Integer.parseInt(maxGoods_code) + 1;
			
			if(GdcodeNum < 10) {
				goods_code = goods_code+ "00" + GdcodeNum;
			}else if(GdcodeNum < 100){
				goods_code = goods_code + "0" + GdcodeNum;
			}else {
				goods_code = goods_code + GdcodeNum;
			}
		}
		
		goods.setGoods_code(goods_code);
		
		
		MultipartFile goods_imagefile = goods.getGoods_imagefile();

		
		String goods_image = "";
		if(!goods_imagefile.isEmpty()) {
				// isEmpty() : 비어있는지 확인 / !가 붙었기 때문에 있는지 확인.
				// 첨부 파일 있을 때만 실행.
				System.out.println("첨부파일 있음");
				UUID uuid = UUID.randomUUID();
				// 1. 파일명 생성
				goods_image = uuid.toString()+"_"+goods_imagefile.getOriginalFilename();
				
				// 3. 프로필 이미지 파일 저장
				goods_imagefile.transferTo(new File(savePath, goods_image));
			
		}	
			System.out.println(goods_image);
			goods.setGoods_image(goods_image);
			
		asdao.insertGoods(goods);
		

	ra.addFlashAttribute("msg", "상품이 등록되었습니다.");
	mav.setViewName("redirect:/adminGoodsListPage");

	return mav;

}
	// 관리자 주문 페이지 
	public ModelAndView adminOrderListPage() {
		System.out.println("AdminShoppingService.adminOrderListPage() 호출");
		
		ModelAndView mav = new ModelAndView();
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		ArrayList<OrderinfoDto> OrderList = asdao.selectOrderList();
		
		for(int i = 0; i < OrderList.size(); i++ ) {
			
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
			
			
			String order_middate = OrderList.get(i).getOrder_mid()+OrderList.get(i).getOrder_date();
		
			
			OrderList.get(i).setOrder_class(order_middate);
			
			OrderList.get(i).setOrder_price_string(formatter.format(OrderList.get(i).getOrder_price()));
			
		}


		
		
		
		
		mav.addObject("OrderList", OrderList);
		mav.setViewName("admin/adminShopping/AdminOrderList");
		
		
		return mav;
	}
	// 관리자 주문상태 변경
	public String adminOrderState(String order_mid, String order_date, int order_state) {
		System.out.println("AdminShoppingService.adminOrderState() 호출");
		System.out.println("order_mid : "+order_mid);
		System.out.println("order_state : "+order_state);
		
		
		
		
		
		System.out.println("order_date "+order_date);
		int updateOrderStateResult = asdao.updateOrderState(order_mid,order_date,order_state);
		
		

		System.out.println("updateOrderStateResult : "+updateOrderStateResult );
		
		
		
		
		
		
		return updateOrderStateResult+"";
	}






	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	}
