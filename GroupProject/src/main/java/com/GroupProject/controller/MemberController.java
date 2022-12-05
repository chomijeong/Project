package com.GroupProject.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService msvc;
	
	// 회원 가입 페이지 이동
	@RequestMapping(value="/memberJoinPage")
	public String memberJoinPage() {
		System.out.println("회원가입 페이지 이동");
		return "/member/MemberJoin"; 
		
		
	}
	
	// 강아지 가입 페이지 이동
	@RequestMapping(value="/memberDogJoinPage")
	public String memberDogJoinPage() {
		
		return "/member/MemberDogJoin";
	}
	
	// 로그인 페이지 이동
	@RequestMapping(value="/memberLoginPage")
	public String memberLoginPage() {
		return "/member/MemberLogin";
	}
	
	// 내정보 페이지 이동
	@RequestMapping(value="/memberInfoPage")
	public ModelAndView memberInfo() {
		System.out.println("마이페이지 요청");
		ModelAndView mav = new ModelAndView();
		mav = msvc.memberInfo();
		return mav;
	}
	
	// 아이디 중복 체크
	@RequestMapping(value="/memberIdCheck")
	public @ResponseBody String memberIdCheck(String inputId) {
		
		String idCheckResult = msvc.memberIdCheck(inputId);
		
		return idCheckResult;
	}
	
	// 반려견 이름 중복 ( 같은 주인 & 같은 반려견 이름 금지 )
	@RequestMapping(value="/dogNameCheck")
	public @ResponseBody String dogNameCheck(String dog_owner, String dog_name) {
		String dogNameCheck = msvc.dogNameCheck(dog_owner, dog_name);
		
		return dogNameCheck;
	}
	
	// 회원가입 처리
	@RequestMapping(value="/memberJoin")
	public ModelAndView memberJoin(MembersDto memberdto) {
		
		ModelAndView mav = new ModelAndView();
		
		mav = msvc.memberInfo(memberdto);
		
		return mav;
	}
	
	// 반려견 품종 조회
	@RequestMapping(value="/searchDogType")
	public @ResponseBody String searchType(String inputType) {
		System.out.println("품종 검색 요청");
		String searchTypeResult = msvc.searchDogType(inputType);
		
		return searchTypeResult;
	}
	
	// 반려견 등록 - 반려견 등록 후 추가 등록 페이지 생성 _ 회원가입,
	@RequestMapping(value="/dogInfoAdd")
	public ModelAndView dogInfoAdd(DogInfoDto doginfodto) throws IllegalStateException, IOException {
		System.out.println("반려견 등록 요청");
		ModelAndView mav = new ModelAndView();
		
		mav = msvc.dogInfoAdd(doginfodto);
		
		return mav;
	}
	
	// 반려견 등록 - 반려견 등록 후 메인페이지 이동 _ 회원가입,
	@RequestMapping(value="/dogInfoAddEnd")
	public ModelAndView dogInfoAddEnd(DogInfoDto doginfodto) throws IllegalStateException, IOException{
		ModelAndView mav = new ModelAndView();
		
		mav = msvc.dogInfoAddEnd(doginfodto);
		
		return mav;
	}
	
	// 로그인 처리
	@RequestMapping(value="/memberLogin")
	public ModelAndView memberLogin(String member_id, String member_pw, RedirectAttributes ra) {
		System.out.println("로그인 요청");
		
		ModelAndView mav = new ModelAndView();
		
		mav = msvc.memberLogin(member_id, member_pw, ra);
		
		return mav;
	}
	
	// 로그아웃 처리
	@RequestMapping(value="/memberLogout")
	public ModelAndView memberLogout(RedirectAttributes ra) {
		
		ModelAndView mav = new ModelAndView();
		
		mav = msvc.memberLogout(ra);
		
		return mav;
	}
	
	// 아이디 찾기
	@RequestMapping(value="/findMemberId")
	public @ResponseBody String findMemberId(String member_name, String member_email) {
		System.out.println("아이디 찾기 요청");
		
		String findMemberId = msvc.findMemberId(member_name, member_email);
		
		return findMemberId;
	}
	
	// 비밀번호 찾기
	@RequestMapping(value="/findMemberPw")
	public @ResponseBody String findMemberPw(String member_email) {
		String findMemberPw = msvc.findMemberPw(member_email);
		return findMemberPw;
	}
	
	// 개인 정보 수정 처리
	@RequestMapping(value="/memberInfoModify")
	public @ResponseBody String memberInfoModify(MembersDto memberdto, int baseImgCheck) throws IllegalStateException, IOException {
		System.out.println("개인 정보 수정 처리 요청");
		String memberInfoModify = msvc.memberInfoModify(memberdto, baseImgCheck);
		
		return memberInfoModify;
	}
	
	// 반려견 정보 수정 처리
	@RequestMapping(value="/dogInfoModify")
	public @ResponseBody String dogInfoModify(DogInfoDto doginfodto, int dog_baseImgCheck) throws IllegalStateException, IOException {
		System.out.println("반려견 정보 수정 처리 요청");
		String dogInfoModify = msvc.dogInfoModify(doginfodto, dog_baseImgCheck);
		
		return dogInfoModify;
	}
	
	// 반려견 정보 삭제 처리
	@RequestMapping(value="/dogInfoDelState")
	public @ResponseBody String dogInfoDelState(String dog_owner, String dog_name) {
		System.out.println("반려견 삭제 처리 요청");
		String dogInfoDelState = msvc.dogInfoDelState(dog_owner, dog_name);
		
		return dogInfoDelState;
	}
	
	// 회원탈퇴 처리
	@RequestMapping(value="/memberDelState")
	public @ResponseBody String memberDelState(String member_id) {
		System.out.println("회원탈퇴 처리 요청");
		String memberDelState = msvc.memberDelState(member_id);
		
		return memberDelState;
	}
	
	// 반려견 추가 등록 페이지 이동
	@RequestMapping(value="/dogAddJoinPage")
	public String dogAddJoinPage() {
		
		return "member/MemberDogAddJoin";
	}
	
	// 반려견 추가 등록 - 반려견 등록 후 추가 등록 페이지 생성 _ 회원가입,
	@RequestMapping(value="/dogInfoAddRegist")
	public ModelAndView dogInfoAddRegist(DogInfoDto doginfodto) throws IllegalStateException, IOException {
		System.out.println("반려견 등록 요청");
		ModelAndView mav = new ModelAndView();
			
		mav = msvc.dogInfoAddRegist(doginfodto);
			
		return mav;
	}
		
	// 반려견 추가 등록 - 반려견 등록 후 메인페이지 이동 _ 회원가입,
	@RequestMapping(value="/dogInfoAddRegistEnd")
	public ModelAndView dogInfoAddRegistEnd(DogInfoDto doginfodto) throws IllegalStateException, IOException{
		ModelAndView mav = new ModelAndView();
			
		mav = msvc.dogInfoAddRegistEnd(doginfodto);
			
		return mav;
	}
}

