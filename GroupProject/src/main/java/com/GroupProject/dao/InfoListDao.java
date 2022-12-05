package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.BoardDto;
import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;

public interface InfoListDao {

	ArrayList<BoardDto> getTipsList();

	BoardDto getTips(String board_code);
	
	void updateHits(@Param("board_hits") int board_hits,@Param("board_code") String board_code);

	ArrayList<BoardDto> getTipsSearchList(@Param("searchType") String searchType,@Param("searchWord") String searchWord);

	String getMaxBoardCode();

	void insertBoard(BoardDto board);

	void tipsStateUpdate(String board_code);

	void tipsViewModifyUpdate(BoardDto board);

	//추천 내역 조회
	CommendDto selectCommend(CommendDto commend);

	//commend 테이블 insert
	void insertTipsCommend(CommendDto commend);

	//board 테이블 update
	void updateBoardCommend(CommendDto commend);
	
	//commend 테이블 추천,비추천 수 update
	void updateTipsCommend(@Param("beForeCommend") int beForeCommend, @Param("commend") CommendDto commend);

	//board 테이블 추천,비추천 수 update
	void reUpdateBoardCommend(@Param("beForeCommend") int beForeCommend, @Param("commend") CommendDto commend);

	//로그인한 사용자가 선택한 글에 대한 추천 내역 조회
	CommendDto selectMbCommend(@Param("board_code") String board_code, @Param("loginId") String loginId);
	
	//report 테이블에 글 신고 insert
	void insertTipsBoardReport(@Param("board_code") String board_code, @Param("loginId") String loginId);

	//board 테이블에 게시글 신고수 +1 update
	void updateBoardReport(String board_code);

	//report 테이블에서 해당 멤버가 신고한 내역이 있는지 조회 - 게시글
	ReportDto reportCheck(@Param("board_code") String board_code, @Param("loginId") String loginId);

	//댓글 코드 max 값 조회
	String getMaxRcode();

	//댓글 작성자 프로필 이미지 조회
	String selectMember_profile(String recomment_writer);

	//댓글 insert
	int insertComment(RecommentDto recomment);

	//선택한 게시글의 댓글 목록 select
	ArrayList<RecommentDto> selectCommentList(String recomment_boardcode);

	//report 테이블에서 해당 멤버가 신고한 내역이 있는지 조회 - 댓글
	ReportDto commentReportCheck(ReportDto commentReport);

	//report 테이블에 댓글 신고 insert
	void insertTipsRecommentReport(ReportDto commentReport);

	//recomment 테이블에 댓글 신고수 +1
	void updateRecommentReport(ReportDto commentReport);

	//recomment 테이블에 댓글 상태 state = 0 으로 update
	void updateCommentState(RecommentDto recomment);

	//recomment 테이블 - 댓글 content update
	void updateCommentModify(RecommentDto recomment);

	//댓글 갯수 count
	int getRecommentCount(String board_code);
	
	
	

}
