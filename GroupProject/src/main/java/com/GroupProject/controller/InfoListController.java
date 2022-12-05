package com.GroupProject.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.dto.BoardDto;
import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.service.InfoListService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class InfoListController {
	
	private ModelAndView mav;
	
	@Autowired
	private InfoListService ilsv;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value="/tipsListPage")
	public ModelAndView tipsListPage() {
		System.out.println("유용 정보 목록 페이지 이동");
		
		mav = ilsv.tipsListPage();
		
		mav.setViewName("infoList/TipsList");
		
		return mav;
		
	}
	
	@RequestMapping(value="/tipsViewPage")
	public ModelAndView tipsViewPage(String board_code, String loginId) {
		System.out.println("유용 정보 상세 페이지 이동");
		
		System.out.println("board_code : " + board_code);
		System.out.println("loginId : " + loginId);
		
		mav = ilsv.tipsViewPage(board_code,loginId);
		
		mav.setViewName("infoList/TipsView");
		
		return mav;
		
	}
	
	@RequestMapping(value="/tipsSearchList")
	public @ResponseBody String tipsSearchList(String searchType, String searchWord) {
		System.out.println("글 검색 요청");
		System.out.println("searchType : " + searchType);
		System.out.println("searchWord : " + searchWord);
		
		String tipsList = ilsv.tipsSearchList(searchType,searchWord);
		
		return tipsList;
		
	}
	
	@RequestMapping(value="/tipsViewModifyPage")
	public ModelAndView tipsViewModifyPage(String board_code) {
		System.out.println("유용 정보 글수정 페이지 이동");
		
		System.out.println("board_code : " + board_code);
		
		mav = ilsv.tipsViewModifyPage(board_code);
		
		mav.setViewName("infoList/TipsViewModify");
		
		return mav;
		
	}
	
	@RequestMapping(value="/tipsWritePage")
	public String tipsWritePage() {
		System.out.println("유용 정보 글작성 페이지 이동");
		
		return "infoList/TipsWrite";
		
	}
	
	
	
	@RequestMapping(value="/tipsWrite")
	public String tipsWrite(BoardDto board) {
		System.out.println("유용 정보 글작성 처리");
		
		System.out.println("board : " + board);
		
		ilsv.tipsWrite(board);
		
		return "redirect://tipsListPage";
		
	} 
	
	@RequestMapping(value="/tipsState")
	public String tipsState(String board_code) {
		System.out.println("유용 정보 글삭제 처리 요청");
		
		System.out.println("board_code : " + board_code);
		
		ilsv.tipsState(board_code);
		
		return "redirect://tipsListPage";
		
	}
	
	@RequestMapping(value="/tipsViewModify")
	public ModelAndView tipsViewModify(BoardDto board) {
		System.out.println("유용 정보 글수정 처리 요청");
		
		System.out.println("board_code : " + board.getBoard_code());
		ilsv.tipsViewModify(board);
		
		mav.setViewName("redirect://tipsViewPage?board_code=" + board.getBoard_code() + "&loginId=" + board.getBoard_writer());
		
		return mav;
		
	} 
	
	@RequestMapping(value="/tipsCommend")
	public @ResponseBody String tipsCommend(CommendDto commend) {
		System.out.println("글 추천/비추천 처리 요청");
		System.out.println(commend);
		
		String result = ilsv.tipsCommend(commend);
		
		return result;
		
	} 
	
	@RequestMapping(value="/tipsViewReport")
	public ModelAndView tipsViewReport(String board_code, String loginId) {
		System.out.println("유용 정보 글 신고 처리 요청");
		
		ilsv.tipsViewReport(board_code,loginId);
		
		mav.setViewName("redirect://tipsViewPage?board_code=" + board_code + "&loginId=" + loginId);
		
		return mav;
		
	}  
	
	@RequestMapping(value="/tipsReportCheck")
	public @ResponseBody String tipsReportCheck(String board_code, String loginId) {
		System.out.println("글 중복 신고 확인");
		
		String result = ilsv.reportCheck(board_code, loginId);
		
		return result;
		
	} 
	
	@RequestMapping(value="/tipsComment")
	public @ResponseBody String tipsComment(RecommentDto recomment) {
		System.out.println("댓글 작성 요청 - ajax");
		System.out.println("recomment_content : " + recomment.getRecomment_content());
		System.out.println("recomment_writer : " + recomment.getRecomment_writer());
		System.out.println("recomment_boardcode : " + recomment.getRecomment_boardcode());
		
		String result = ilsv.tipsComment(recomment);
		
		return result;
		
	} 
	
	@RequestMapping(value="/tipsCommentList")
	public @ResponseBody String tipsCommentList(String recomment_boardcode) {
		System.out.println("댓글 목록 출력 요청 - ajax");
		
		String result = ilsv.tipsCommentList(recomment_boardcode);
		
		return result;
		
	} 
	
	@RequestMapping(value="/tipsCommentReportCheck")
	public @ResponseBody String tipsCommentReportCheck(ReportDto commentReport) {
		System.out.println("댓글 중복 신고 확인");
		
		String result = ilsv.commentReportCheck(commentReport);
		
		return result;
		
	} 
	
	
	@RequestMapping(value="/tipsCommentReport")
	public ModelAndView tipsCommentReport(ReportDto commentReport) {
		System.out.println("유용 정보 댓글 신고 처리 요청");
		
		ilsv.tipsCommentReport(commentReport);
		
		mav.setViewName("redirect://tipsViewPage?board_code=" + commentReport.getBoardcode() + "&loginId=" + commentReport.getMember_id());
		
		return mav;
		
	}  
	
	@RequestMapping(value="/tipsCommentState")
	public @ResponseBody void tipsCommentState(RecommentDto recomment) {
		System.out.println("댓글 삭제 처리 요청");
		
		ilsv.tipsCommentState(recomment);
		
		
	} 
	
	@RequestMapping(value="/tipsCommentModify")
	public @ResponseBody void tipsCommentModify(RecommentDto recomment) {
		System.out.println("댓글 수정 처리 요청");
		
		System.out.println(recomment);
		
		ilsv.tipsCommentModify(recomment);
		
		
	}
	
	
	
	

}
