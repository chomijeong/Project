package com.GroupProject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.dao.InfoListDao;
import com.GroupProject.dto.BoardDto;
import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.google.gson.Gson;

@Service
public class InfoListService {
	
	@Autowired
	private InfoListDao ifdao;

	public ModelAndView tipsListPage() {
		System.out.println("InfoListService.tipsListPage() 호출");
		ModelAndView mav = new ModelAndView();
		
		//유용 정보 글 목록
		ArrayList<BoardDto> tipsList = ifdao.getTipsList();
		System.out.println(tipsList);
		
		
		for(int i = 0; i < tipsList.size(); i++) {
			String board_code = tipsList.get(i).getBoard_code();
			String board_code_subString = board_code.substring(2);
			System.out.println(board_code_subString);
			tipsList.get(i).setBoard_code(board_code_subString);
			
			//댓글 갯수 count
			int recount = ifdao.getRecommentCount(board_code);
			System.out.println("recount : " + recount);
			tipsList.get(i).setBoard_replycount(recount);
			
		}
		
		mav.addObject("tipsList", tipsList);
		
		return mav;
	}

	public ModelAndView tipsViewPage(String board_code, String loginId) {
		System.out.println("InfoListService.tipsViewPage() 호출");
		ModelAndView mav = new ModelAndView();
		
		BoardDto tips = ifdao.getTips(board_code);
		
		//조회수 증가
		int board_hits = tips.getBoard_hits();
		board_hits++;
		System.out.println("board_hits : " + board_hits);
		
		ifdao.updateHits(board_hits,board_code);
		
		tips.setBoard_hits(board_hits);
		
		System.out.println(tips);
		
		//로그인한 사용자가 선택한 글에 대한 추천 내역 조회
		CommendDto commend = ifdao.selectMbCommend(board_code,loginId);
		System.out.println(commend);
		
		mav.addObject("commend", commend);
		mav.addObject("tips", tips);
		
		return mav;
	}

	public String tipsSearchList(String searchType, String searchWord) {
		System.out.println("InfoListService.tipsSearchList() 호출");
		Gson gson = new Gson();
		
		//검색 조회
		ArrayList<BoardDto> tipsSearchList = ifdao.getTipsSearchList(searchType,searchWord);
		
		for(int i = 0; i < tipsSearchList.size(); i++) {
			String board_code = tipsSearchList.get(i).getBoard_code();
			String board_code_subString = board_code.substring(2);
			System.out.println(board_code_subString);
			tipsSearchList.get(i).setBoard_code(board_code_subString);
			
		}
		
		String tipsSearchList_gson = gson.toJson(tipsSearchList);
		
		return tipsSearchList_gson;
	}

	public ModelAndView tipsViewModifyPage(String board_code) {
		System.out.println("InfoListService.tipsViewModifyPage() 호출");
		ModelAndView mav = new ModelAndView();
		
		BoardDto tips = ifdao.getTips(board_code);
		
		mav.addObject("tips", tips);
		
		return mav;
	}

	public void tipsWrite(BoardDto board) {
		System.out.println("InfoListService.tipsWrite() 호출");
		ModelAndView mav = new ModelAndView();
		
		System.out.println(board.getBoard_content());
		
		//게시물 코드
		String tbCode = "TB";
		String maxBoardCode = ifdao.getMaxBoardCode();
		
		if (maxBoardCode == null) {
			tbCode = tbCode + "001";
			
		} else {
			maxBoardCode = maxBoardCode.substring(2);
			int codeNum = Integer.parseInt(maxBoardCode) + 1;
			
			if (codeNum < 10) {
				tbCode = tbCode + "00" + codeNum;
				
			} else if(codeNum < 100) {
				tbCode = tbCode + "0" + codeNum;
				
			} else {
				tbCode = tbCode + codeNum;
				
			}
		}
		
		System.out.println("BoardCode : " + tbCode);
		
		board.setBoard_code(tbCode);
		
		System.out.println(board);
		
		ifdao.insertBoard(board);
		
		
	}


	public void tipsState(String board_code) {
		System.out.println("InfoListService.tipsState() 호출");
		ModelAndView mav = new ModelAndView();
		
		//삭제 할 게시글 state 값 수정
		ifdao.tipsStateUpdate(board_code);
	
	}
	
	public void tipsViewModify(BoardDto board) {
		System.out.println("InfoListService.tipsViewModify() 호출");
		
		//수정할 내용 update
		ifdao.tipsViewModifyUpdate(board);
		
		
	}

	public String tipsCommend(CommendDto commend) {
		System.out.println("InfoListService.tipsCommend() 호출");
		
		String result="";
		
		//추천 또는 비추천 클릭시 해당 멤버의 추천 내역 조회
		CommendDto commendResult = ifdao.selectCommend(commend);
		
		if(commendResult == null) {
			//해당 멤버가 선택한 게시물의 추천 내역이 없는 경우
			//commend 테이블 추천,비추천 수 insert
			ifdao.insertTipsCommend(commend);
			
			//board 테이블 추천,비추천 수 update
			ifdao.updateBoardCommend(commend);
			result = "OK";
			
		} else {
			//해당 멤버가 선택한 게시물의 추천 내역이 있는 경우
			//중복 추천 또는 비추천 클릭시
			if (commendResult.getCommend() == commend.getCommend()) {
				result = "NO";
				
			} else {
				//이미 추천을 했으나 다른 추천으로 클릭시
				//commend 테이블 추천,비추천 수 update
				ifdao.updateTipsCommend(commendResult.getCommend(),commend);
				
				//board 테이블 추천,비추천 수 update
				ifdao.reUpdateBoardCommend(commendResult.getCommend(),commend);
				
				result = "UPDATE";
				
			}
		}
		
		return result;
	}


	public void tipsViewReport(String board_code, String loginId) {
		System.out.println("InfoListService.tipsViewReport() 호출");
		ModelAndView mav = new ModelAndView();
		
		System.out.println("board_code : " + board_code);
		System.out.println("loginId : " + loginId);
		
		//report 테이블에 글 신고 insert
		ifdao.insertTipsBoardReport(board_code,loginId);
		
		//board 테이블에 게시글 신고수 +1
		ifdao.updateBoardReport(board_code);
		
	}
	
	public String reportCheck(String board_code, String loginId) {
		System.out.println("InfoListService.reportCheck() 호출");
		
		String result = "";
		
		//report 테이블에서 해당 멤버가 신고한 내역이 있는지 조회
		ReportDto report = ifdao.reportCheck(board_code, loginId);
		
		if(report == null) {
			result = "OK";
			
		} else {
			result = "NO";
			
		}
		
		return result;
	}

	public String tipsComment(RecommentDto recomment) {
		System.out.println("InfoListService.tipsComment() 호출");
		
		String result = "";
		
		//댓글 코드 생성
		String rccode = "RC";
		String MaxRccode = ifdao.getMaxRcode();
		
		if (MaxRccode == null) {
			rccode = rccode + "001"; 
			
		} else {
			MaxRccode = MaxRccode.substring(2); 
			int codenum = Integer.parseInt(MaxRccode) + 1;	
			
			if(codenum < 10) { 
				rccode = rccode + "00" + codenum; 
				
			} else if(codenum < 100 ) {
				rccode = rccode + "0" + codenum;  
				
			} else {
				rccode = rccode + codenum; 
				
			}
		}
		
		System.out.println("rccode : " + rccode);
		recomment.setRecomment_code(rccode);
		
		//댓글 작성자 프로필 이미지 조회
		String member_profile = ifdao.selectMember_profile(recomment.getRecomment_writer());		
		
		System.out.println("member_profile : " + member_profile);
		recomment.setRecomment_profile(member_profile);
		
		//댓글 insert
		int comment = ifdao.insertComment(recomment);
		
		if(comment == 1){
			result = "OK";
			
		}
		
		return result;
	}

	
	public String tipsCommentList(String recomment_boardcode) {
		System.out.println("InfoListService.tipsCommentList() 호출");
		Gson gson = new Gson();
		
		ArrayList<RecommentDto> commentList = ifdao.selectCommentList(recomment_boardcode);
		
		String commentList_gson = gson.toJson(commentList);
		
		return commentList_gson;
	}

	
	public String commentReportCheck(ReportDto commentReport) {
		System.out.println("InfoListService.commentReportCheck() 호출");
		
		System.out.println("신고할 댓글 코드 : " + commentReport.getCode());
		System.out.println("신고할 댓글의 원본 글 코드 : " + commentReport.getBoardcode());
		System.out.println("신고자 id : " + commentReport.getMember_id());
		
		String result = "";
		
		//report 테이블에서 해당 멤버가 신고한 내역이 있는지 조회
		ReportDto report = ifdao.commentReportCheck(commentReport);
		
		if(report == null) {
			result = "OK";
			
		} else {
			result = "NO";
			
		}
		
		return result;
	}

	public void tipsCommentReport(ReportDto commentReport) {
		System.out.println("InfoListService.tipsCommentReport() 호출");
		ModelAndView mav = new ModelAndView();
		System.out.println(commentReport.getCode());
		System.out.println(commentReport.getMember_id());
		System.out.println(commentReport.getBoardcode());
		
		//report 테이블에 댓글 신고 insert
		ifdao.insertTipsRecommentReport(commentReport);
		
		//recomment 테이블에 댓글 신고수 +1
		ifdao.updateRecommentReport(commentReport);
		
	}

	public void tipsCommentState(RecommentDto recomment) {
		System.out.println("InfoListService.tipsCommentState() 호출");
		
		System.out.println(recomment);
		
		//recomment 테이블에 댓글 상태 state = 0 으로 update
		ifdao.updateCommentState(recomment);
		
		
	}

	public void tipsCommentModify(RecommentDto recomment) {
		System.out.println("InfoListService.tipsCommentModify() 호출");
		
		//recomment 테이블 - 댓글 content update
		ifdao.updateCommentModify(recomment);
		
		
	}




}
