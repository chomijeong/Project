package com.GroupProject.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.dto.HoDto;
import com.GroupProject.service.AdminInfoService;

@Controller
public class AdminInfoController {
	
	@Autowired
	public AdminInfoService adInfosvc;
	
	@RequestMapping(value="/reportBoardListPage")
	public ModelAndView reportBoardListPage(){
		System.out.println("신고된 게시물 페이지로 이동");
		ModelAndView mav = adInfosvc.reportBoardListPage();
		return mav;
	}
	
	@RequestMapping(value="/reportBoardTypeViewPage")
	public ModelAndView reportBoardTypeViewPage(String total_code){
		System.out.println("신고된 게시물의 상세 페이지로 이동");
		ModelAndView mav = adInfosvc.reportBoardTypeViewPage(total_code);
		return mav;
	}
	
	@RequestMapping(value="/reportBoardMemberState")
	public @ResponseBody String reportBoardMemberState(String report_id, int member_state){
		System.out.println("신고된 게시물 회원 정지");
		String updateMember = adInfosvc.reportBoardMemberState(report_id, member_state);
		return updateMember;
	}
	
	@RequestMapping(value="/reportBoardState")
	public @ResponseBody String reportBoardState(String total_code) {
		System.out.println("신고된 게시물 신고처리");
		String modifyBoard = adInfosvc.reportBoardState(total_code);
		return modifyBoard;
	}

	@RequestMapping(value="/reportRecommentListPage")
	public ModelAndView reportRecommentListPage(){
		System.out.println("신고된 댓글 페이지로 이동");
		ModelAndView mav = adInfosvc.reportRecommentListPage();
		return mav;
	}
	
	@RequestMapping(value="/reportRecommentState")
	public @ResponseBody String reportRecommentState(String recomment_code) {
		System.out.println("신고된 댓글 신고처리 기능");
		String modifyRecommentState = adInfosvc.reportRecommentState(recomment_code);
		return modifyRecommentState;
	}
	
	@RequestMapping(value="/adminViewHospitalInfo")
	public @ResponseBody String adminViewHospitalInfo(String ho_code) {
		System.out.println("병원 정보 조회");
		String hospitalInfo = adInfosvc.adminViewHospitalInfo(ho_code);

		return hospitalInfo;
	}
	
	@RequestMapping(value="/adminModifyHospital")
	public @ResponseBody String adminModifyHospital(HoDto Ho){
		System.out.println("관리자 병원 정보 수정 요청");
		String result = adInfosvc.adminModifyHospital(Ho);
		return result;
	}
	
	
	@RequestMapping(value="/adminViewHotelInfo")
	public @ResponseBody String adminViewHotelInfo(String ho_code) {
		System.out.println("병원 정보 조회");
		String hospitalInfo = adInfosvc.adminViewHotelInfo(ho_code);

		return hospitalInfo;
	}
	
	@RequestMapping(value="/adminModifyHotel")
	public @ResponseBody String adminModifyHotel(HoDto Ho){
		System.out.println("관리자 병원 정보 수정 요청");
		String result = adInfosvc.adminModifyHotel(Ho);
		return result;
	}
	
	@RequestMapping(value="/resetReportBoard")
    public @ResponseBody String resetReportBoard(String total_code) {
        System.out.println("신고된 게시물 다시 활성화");
        String modifyBoard = adInfosvc.resetReportBoard(total_code);
        return modifyBoard;
    }
	
	@RequestMapping(value="/resetReportRecomment")
    public @ResponseBody String resetReportRecomment(String recomment_code) {
        System.out.println("신고된 댓글 다시 활성화");
        String modifyBoard = adInfosvc.resetReportRecomment(recomment_code);
        return modifyBoard;
    }
	
}
