package com.GroupProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.service.AdminMemberService;

@Controller
public class AdminMemberController {
	
	private ModelAndView mav;
	
	@Autowired
	private AdminMemberService amsvc;
	
	// 회원관리페이지이동요청
	@RequestMapping(value="/adminMemberListPage")
	public ModelAndView AdminMemberList() {
		System.out.println("관리자 회원 관리 페이지 이동 요청");
		ModelAndView mav = amsvc.adminMemberList();
		
		return mav;
		
	}
	
	// 회원상태변화
	@RequestMapping(value="/adminMemberState")
	public @ResponseBody String adminMemberState(String member_id, int member_state) {
		System.out.println("관리자 회원 관리 상태 변경");
		String updateMemberState = amsvc.adminMemberState(member_id,member_state);
		

		
		
		return updateMemberState;
		
		
	}
	
	
	

}
