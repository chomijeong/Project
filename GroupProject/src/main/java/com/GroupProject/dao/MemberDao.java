package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.DogTypeDto;
import com.GroupProject.dto.MembersDto;

public interface MemberDao {

	// 아이디 중복확인
	String selectMemberId(String inputId);

	// 반려견 이름 중복 ( 같은 주인 & 같은 반려견 이름 금지 )
	String selectDogName(@Param("dog_owner") String dog_owner, @Param("dog_name") String dog_name);
	
	// 회원가입 처리
	int insertMemberInfo(MembersDto memberdto);

	// 반려견 품종 조회
	ArrayList<DogTypeDto> selectDogType(@Param("dogtype") String inputType);

	// 반려견 등록 - 반려견 등록 후 추가 등록 페이지 생성. 메인페이지 이동 _ 회원가입
	int insertDogInfo(DogInfoDto doginfodto);

	// 로그인 처리
	MembersDto selectMemberLoginInfo(@Param("member_id") String member_id, @Param("member_pw") String member_pw);

	// 개인 정보 조회
	MembersDto selectMemberInfo(String loginId);

	// 반려견 정보 조회
	ArrayList<DogInfoDto> selectDogInfo(String loginId);

	// 개인 정보 수정 처리
	int updateMemberInfo(MembersDto memberdto);
	
	// 개인 정보 수정 _ 이전 프로필 사진 조회
	String selectMemberProfile(String member_id);
	
	// 반려견 정보 수정 처리
	int updateDogInfo(DogInfoDto doginfodto);

	// 회원 탈퇴 처리
	int updateMemberState(String member_id);
	
	// 아이디 찾기
	MembersDto selectMemberFindId(@Param("member_name") String member_name, @Param("member_email")String member_email);

	// 비밀번호 변경
	int updateMemberPw(@Param("member_pw") int authNumber, @Param("member_email") String member_email);

	// 현재 사진 조회
	String selectNowProfile(String member_id);

	// 반려견 삭제 처리
	int updateDogState(@Param("dog_owner") String dog_owner, @Param("dog_name") String dog_name);

	// 반려견 정보 수정 _ 이전 프로필 사진 조회
	String selectDogImage(@Param("dog_owner") String dog_owner, @Param("dog_name") String dog_name);

	//댓글테이블 프로필 수정
	int updateRecommentProfile(MembersDto memberdto);

	//회원의 크루코드 조회
	String selectMemberCrewCode(String member_id);

	

}
