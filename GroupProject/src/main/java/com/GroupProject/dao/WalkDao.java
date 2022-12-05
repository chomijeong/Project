package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.AddrxyDto;
import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;

public interface WalkDao {
	//회원의 강아지의 몸무게 리스트 정보들
	ArrayList<DogInfoDto> selectMembersDogWeight(String searchId);
	
	//회원의 정보
	MembersDto selectMembersInfo(String searchId);
	
	//날씨검색을 위한 좌표정보검색
	AddrxyDto selectAddrxy(AddrxyDto adto);
	
	//코드검색
	String selectLocalCode(String middleaddress);

	//광역검색 개수
	int selectlocalCount(String localAddr);

	//도시코드 검색
	String selectCityCode(String addr);

	//산책모집게시판 등록
	int insertWrite(WalkboardDto walkboard);

	//산책모집게시판 최근코드
	String selectMaxWalkCode();

	//목록검색결과 개수
	int selectWalkSearchListCount(@Param("searchType") String searchType, @Param("searchWord") String searchWord, @Param("searchAddr") String searchAddr);

	//단어검색결과 페이징처리된 글들 모음
	ArrayList<WalkboardDto> selectWalkSearchPagingList(@Param("startRow") int startRow, @Param("endRow")int endRow, @Param("searchType") String searchType, @Param("searchWord") String searchWord, @Param("searchAddr") String searchAddr);
	
	//산책목록게시판 이동시 가져갈 로그인회원의 주소
	String selectMemberAddr(String searchId);

	//상세페이지 입장제한을 위한 모집글의 강아지 몸무게 제한 조회
	String selectWalkSearchDogWeightCode(String walkBoardCode);

	//상세페이지 내용 가져오기(상세페이지 이동용)
	WalkboardDto selectWalkViewInfo(String walkBoardCode);

	//상세페이지 입장제한을 위한 회원의 주소 앞부분
	String selectMemberLocalAddr(String searchId);

	String selectWalkRecommentMaxCode();

	int insertWalkRecomment(RecommentDto recomment);

	ArrayList<RecommentDto> selectWalkRecomment(String boardCode);

	int walkRecommentDelState(String boardCode);

	int walkRecommentModify(RecommentDto boardInfo);

	int walkDelState(String boardCode);

	WalkboardDto selectWalkboardInfo(String boardCode);

	int updateWalkViewInfo(WalkboardDto boardInfo);

	int updateWalkViewJoin( @Param("boardCode") String boardCode, @Param("midList") String midList);

	int updateWalkViewLeave( @Param("boardCode") String boardCode, @Param("midList") String midList);

	int selectWalkRecommentReport(ReportDto rcReport);

	void insertWalkRCReport(ReportDto rcReport);

	void updateRecommentReport(ReportDto rcReport);

	void updateWalkReplycount(RecommentDto recomment);

	String selectWalkBoardCode(String recommentCode);

	void updateWalkDelReplycount(String boardcode);

	String selectMemberCrewCode(String searchId);

	void updatereviewhits(String walkBoardCode);
	
	

}
