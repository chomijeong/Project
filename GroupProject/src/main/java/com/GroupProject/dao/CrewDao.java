package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.ChatDto;
import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.CrewDto;
import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;

public interface CrewDao {

	String selectMaxCrewCode();

	int insertCrewInfo(CrewDto crewInfo);

	ArrayList<CrewDto> selectCrewList(String searchAddr);

	String selectMemberAddr(String searchId);

	int updateMemberCrewcode(@Param("searchId") String searchId, @Param("crewCode") String crewCode);

	String selectCrewMemberCheck(String searchId);

	int selectCrewSearchListCount(@Param("searchType") String searchType, @Param("searchWord") String searchWord, @Param("searchAddr") String searchAddr);

	ArrayList<CrewDto> selectCrewSearchPagingList(@Param("startRow") int startRow, @Param("endRow")int endRow, @Param("searchType") String searchType, @Param("searchWord") String searchWord, @Param("searchAddr") String searchAddr);

	String selectCrewDogCode(String crewCode);

	CrewDto selectCrewInfo(String crewCode);

	int updateCrewInfo(CrewDto crewInfo);

	int updateMemberDelCrewCode(String searchId);

	ArrayList<MembersDto> selectCrewMemberList(String searchCrewCode);

	 int updateCrewDelState(String searchCrewCode);
	 
	int updateMemberDelCrewcode(String searchCrewCode);

	ArrayList<DogInfoDto> selectCrewDogList(String memberId);

	int updateCresMaster(@Param("memberId") String memberId, @Param("searchCrewCode") String searchCrewCode);

	String selectCrewDogWeight(String searchCrewCode);

	String selectMaxCrewWalkCode();

	int selectCrewWalkSearchListCount(String searchCrewCode);

	//크루산책 목록 페이징
	ArrayList<WalkboardDto> selectCrewWalkPagingList(@Param("startRow") int startRow, @Param("endRow")int endRow, @Param("searchCrewCode") String searchCrewCode);

	int insertCrewWalkWrite(WalkboardDto walkboard);

	WalkboardDto selectCrewWalkViewInfo(String walk_code);

	String selectMaxCWcode();

	int insertCrewReview(WalkboardDto walkboardDto);

	int selectCheckCrewReviewCountforGrant(WalkboardDto walkInfo);

	int selectCrewReviewSearchListCount(String walk_crewcode);

	ArrayList<WalkboardDto> selectCrewReviewListPaging(@Param("startRow") int startRow, @Param("endRow") int endRow, @Param("walk_crewcode") String walk_crewcode);

	int selectCrewReviewCommentCount(String boardcode);

	WalkboardDto selectCrewReviewInfo(String walk_code);

	CommendDto getloginsel(@Param("walk_code")String walk_code, @Param("member_id")String member_id);

	int updateCrewReviewHits(String walk_code);

	WalkboardDto selectCrewWalkBoardMax(String crewCode);

	WalkboardDto selectCrewReviewBoardMax(String crewCode);
	//크루 채팅내용 가져오기
	ArrayList<ChatDto> selectCrewChatList(String crewCode);
	//채팅 내용 입력하기
	int insertCrewChat(ChatDto chatMsg);

	ReportDto Commentreportselect(String code);

	RecommentDto selectCrewViewRecomment(String code);

	void commentReportinsert(RecommentDto rdto);

	int updateCommentReport(String code);

	ChatDto selectCrewChat(String chat_code);
	
}
