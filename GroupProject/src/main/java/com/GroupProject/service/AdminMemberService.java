package com.GroupProject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.dao.AdminMemberDao;
import com.GroupProject.dto.MembersDto;

@Service
public class AdminMemberService {
	
	@Autowired
	private AdminMemberDao amdao;
	
	public ModelAndView adminMemberList() {
		System.out.println("AdminMemberService.adminMemberList() 호출");
		
		ModelAndView mav = new ModelAndView();
		
		ArrayList<MembersDto> MemberList = amdao.selectMemberList();

	

		for(int i = 0; i< MemberList.size(); i++) {
			if(MemberList.get(i).getMember_state() == 0) {
				
				MemberList.get(i).setMember_statename("자진계정탈퇴");
			}else if(MemberList.get(i).getMember_state() == 1) {
				
				MemberList.get(i).setMember_statename("계정사용");
			}else if(MemberList.get(i).getMember_state() == 5){
				
				MemberList.get(i).setMember_statename("계정정지");
				
			}

			
		}
		
		System.out.println("MemberList : "+MemberList);
		mav.addObject("MemberList",MemberList);
		mav.setViewName("admin/AdminMemberList");
		
		return mav;
	}
	

	public String adminMemberState(String member_id, int member_state) {
		System.out.println("AdminMemberService.adminMemberState() 호출");
		System.out.println("member_id : "+member_id);
		System.out.println("member_state : "+member_state);
		
		int updateMemberStateResult = amdao.updateMemberState(member_id,member_state);
		System.out.println("updateMemberStateResult : "+updateMemberStateResult);
		

		return updateMemberStateResult+"";
	}

}
