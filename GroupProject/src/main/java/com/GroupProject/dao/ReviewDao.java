package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;

public interface ReviewDao {
	
	// 임시 로그인
	MembersDto getlogin(String id);
		
	
	// 산책 후기 게시판 작성 코드 생성
	String getMaxRbcode();

	// 산책 후기 게시판 작성
	int getinsertwalk(WalkboardDto walkboardDto);
	
	// 산책 후기 목록 
	ArrayList<WalkboardDto> walkreplyList();
	
	
	// 목록 검색 기능
	ArrayList<WalkboardDto> myListSearchList(@Param("searchType") String searchType,@Param("searchWord") String searchWord);
		
	//단어검색결과 페이징처리된 글들 모음
	ArrayList<WalkboardDto> getBoardPagingList(@Param("startRow")int startRow, @Param("endRow") int endRow,@Param("searchType") String searchType, @Param("searchWord") String searchWord, @Param("searchAddr") String searchAddr);
	
	// 산책 후기 상세 페이지
	WalkboardDto selectReviewInfo(String walk_code);
	
	// 글조회수 
	int updatereviewhits(@Param("walk_code")String walk_code,@Param("walk_hits") int hits);

	// 좋아요 싫어요 update	
	int updateReviewCommend(@Param("walk_code")String walk_code,@Param("commend")int commend);
	
	// 추천 유무
	CommendDto getloginsel(@Param("walk_code") String walk_code, @Param("member_id")String member_id);
	
	// 추천한 아이디 insert
	void getinsertLogin(@Param("member_id")String member_id,@Param("walk_code")String walk_code,@Param("commend") int commend);
	
	// 추천 테이블 업데이트
	void updateCommend(@Param("member_id")String member_id,@Param("walk_code") String walk_code,@Param("commend") int commend);

	//<!-- 좋아요/싫어요 수정 적용 -->
	void updateModifyReviewCommend(@Param("walk_code")String walk_code,@Param("commend")int commend);
		
	// 신고기능
	int updateReviewReportState(String code);

	// 신고 유무
	ReportDto reportresult(@Param("code") String code,@Param("member_id") String member_id);

	// 신고한 아이디  insert
	void Reportinsert(@Param("code")String code,@Param("member_id") String member_id);

	// 아이디의 주소 검색
	MembersDto selmemberaddr(String mid);

	// 댓글 작성
	int insertComment(RecommentDto recommentList);

	// 댓글 목록 출력
	ArrayList<RecommentDto> selectcommentList(String recomment_boardcode);

	// 댓글 작성자 프로필 
	MembersDto selectmidprofile(String recomment_writer);

	// 댓글 코드 최대값
	String getMaxRcode();

	// 댓글 신고 유무 검색
	ReportDto Commentreportselect(@Param("boardcode")String boardcode,@Param("code") String code,@Param("member_id") String member_id);

	// 댓글 신고한 아이디 입력
	void commentReportinsert(@Param("boardcode")String boardcode,@Param("member_id") String member_id,@Param("code") String code);

	// 댓글 신고 기능
	int updateCommentReport(@Param("recomment_code") String code,@Param("recomment_boardcode") String boardcode);

	// 댓글 수정
	void updateCommentModify(@Param("recomment_boardcode")String recomment_boardcode,@Param("recomment_code") String recomment_code,@Param("recomment_content") String recomment_content);

	// 댓글 삭제
	void updateCommentState(@Param("recomment_boardcode")String recomment_boardcode,@Param("recomment_code") String recomment_code);

	// 상세페이지 수정 기능
	void updateReviewInfo(WalkboardDto reviewboard);

	// 게시판 삭제 기능
	void updateReviewState(String walk_code);

	// 댓글 개수 
	int getreviewcommentcount(@Param("recommend_boardcode")String recommend_boardcode,@Param("RC") String RC);

	//산책 후기 목록게시판 이동시 가져갈 로그인 회원의 주소
	String selectMemberAddr(String searchId);

	//목록검색결과 개수
	int selectWalkSearchListCount(@Param("searchType") String searchType, @Param("searchWord") String searchWord, @Param("searchAddr") String searchAddr);

	// 내 산책 내역 목록
	ArrayList<WalkboardDto> mywalkListSelect(String walk_mid);

	// 산책 모집 정보 검색
	WalkboardDto walkinfoselect(@Param("walk_code")String walk_code,@Param("walk_mid") String walk_mid);

	// 내 산책 내역 코드 검색
	ArrayList<WalkboardDto> codeList(String walk_mid);

	// code 체크
	int rbcheckcount(@Param("code")String code,@Param("walk_mid") String walk_mid);
	









}
