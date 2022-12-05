package com.GroupProject.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dao.MemberDao;
import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.DogTypeDto;
import com.GroupProject.dto.MembersDto;
import com.google.gson.Gson;

@Service
@Component
public class MemberService {

	@Autowired
	private MemberDao mdao;
	
	@Autowired
	private HttpServletRequest request;
	private int authNumber;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Autowired
	private HttpSession session;
	

	private String savePath="C:\\Users\\user\\Spring\\GroupProject4\\src\\main\\webapp\\resources\\fileUpload";	
	// 아이디 중복 체크
	public String memberIdCheck(String inputId) {
		
		String idCheckResult = mdao.selectMemberId(inputId);
		
		if(idCheckResult == null)
		{
			return "OK";
		}
		else
		{
			return "";
		}
	}

	// 반려견 이름 중복 ( 같은 주인 & 같은 반려견 이름 금지 )
		public String dogNameCheck(String dog_owner, String dog_name) {
			
			String dogNameCheck = mdao.selectDogName(dog_owner, dog_name);
			
			if(dogNameCheck == null)
			{
				return "OK";
			}
			else
			{
				return "";
			}
		}
	
	// 회원가입 처리
	public ModelAndView memberInfo(MembersDto memberdto) {
		
		ModelAndView mav = new ModelAndView();
		
		// 주소 합성 ( 24531 _ 인천 _ 우리집 _ 102호 )
		memberdto.setMember_address(memberdto.getMember_addr() + "_" + memberdto.getMember_detailaddr() + "_" + memberdto.getMember_extraaddr() + "_" + memberdto.getMember_postcode());
		
		// 이메일 합성 ( admin @ naver.com )
		memberdto.setMember_email(memberdto.getMember_emailid() + "@" + memberdto.getMember_emaildomain());
		
		int memberJoinResult = mdao.insertMemberInfo(memberdto);
		
		System.out.println(memberdto);
		
		if(memberJoinResult > 0 )
		{
			mav.addObject("joininId", memberdto.getMember_id());
			mav.setViewName("member/MemberDogJoin");
		}
		
		return mav;
	}

	// 반려견 품종 조회
	public String searchDogType(String inputType) {
		System.out.println("품종 검색 서비스 호출");
		System.out.println(inputType);
		ArrayList<DogTypeDto> searchTypeResult = mdao.selectDogType(inputType);
		
		Gson gson = new Gson();
		String searchTypeResult_json = gson.toJson(searchTypeResult);
		System.out.println(searchTypeResult_json);
		return searchTypeResult_json;
	}

	// 반려견 등록 - 등록 후 추가 등록 페이지 생성 _ 회원가입
	public ModelAndView dogInfoAdd(DogInfoDto doginfodto) throws IllegalStateException, IOException {
		ModelAndView mav = new ModelAndView();
		System.out.println("반려견 등록 서비스 호출");
		
		System.out.println(doginfodto);
		
		MultipartFile file = doginfodto.getDog_file();
		String profile = "";
		
		if(!file.isEmpty())
		{
			UUID uuid = UUID.randomUUID();
			
			profile = uuid.toString() + "_" + file.getOriginalFilename();
			
			file.transferTo( new File(savePath, profile) );
		}
		
		doginfodto.setDog_image(profile);
		
		int dogAddResult = mdao.insertDogInfo(doginfodto);
		if(dogAddResult > 0)
		{
			mav.addObject("joininId", doginfodto.getDog_owner());
			mav.setViewName("member/MemberDogJoin");
		}
		
		return mav;
	}

	// 반려견 등록 - 반려견 등록 후 메인페이지 이동 _ 회원가입,
	public ModelAndView dogInfoAddEnd(DogInfoDto doginfodto) throws IllegalStateException, IOException {
		ModelAndView mav = new ModelAndView();
		System.out.println("반려견 등록 서비스 호출");
		
		System.out.println(doginfodto);
		
		MultipartFile file = doginfodto.getDog_file();
		String profile = "";
		
		if(!file.isEmpty())
		{
			UUID uuid = UUID.randomUUID();
			
			profile = uuid.toString() + "_" + file.getOriginalFilename();
			
			file.transferTo( new File(savePath, profile) );
		}
		
		doginfodto.setDog_image(profile);
		
		int dogAddResult = mdao.insertDogInfo(doginfodto);
		if(dogAddResult > 0)
		{
			mav.setViewName("redirect:/");
		}
		
		return mav;
	}
	
	// 반려견 추가 등록 - 등록 후 추가 등록 페이지 생성
		public ModelAndView dogInfoAddRegist(DogInfoDto doginfodto) throws IllegalStateException, IOException {
			ModelAndView mav = new ModelAndView();
			System.out.println("반려견 등록 서비스 호출");
			
			System.out.println(doginfodto);
			
			MultipartFile file = doginfodto.getDog_file();
			String profile = "";
			
			if(!file.isEmpty())
			{
				UUID uuid = UUID.randomUUID();
				
				profile = uuid.toString() + "_" + file.getOriginalFilename();
				
				file.transferTo( new File(savePath, profile) );
			}
			
			doginfodto.setDog_image(profile);
			
			int dogAddResult = mdao.insertDogInfo(doginfodto);
			if(dogAddResult > 0)
			{
				mav.addObject("joininId", doginfodto.getDog_owner());
				mav.setViewName("member/MemberDogAddJoin");
			}
			
			return mav;
		}

		// 반려견 추가 등록 - 등록 후 마이페이지로 이동
		public ModelAndView dogInfoAddRegistEnd(DogInfoDto doginfodto) throws IllegalStateException, IOException {
			ModelAndView mav = new ModelAndView();
			System.out.println("반려견 등록 서비스 호출");
			
			System.out.println(doginfodto);
			
			MultipartFile file = doginfodto.getDog_file();
			
			String profile = "";
			
			System.out.println(file == null);
			
			if(!file.isEmpty())
			{
				UUID uuid = UUID.randomUUID();
				
				profile = uuid.toString() + "_" + file.getOriginalFilename();
				
				file.transferTo( new File(savePath, profile) );
			}
			
			doginfodto.setDog_image(profile);
			
			int dogAddResult = mdao.insertDogInfo(doginfodto);
			if(dogAddResult > 0)
			{
				mav.setViewName("redirect:/memberInfoPage");
			}
			
			return mav;
		}

	// 로그인 처리
	public ModelAndView memberLogin(String member_id, String member_pw, RedirectAttributes ra) {
		System.out.println("입력 ID : " + member_id);
		System.out.println("입력 PW : " + member_pw);
		
		ModelAndView mav = new ModelAndView();
		
		MembersDto memberdto = mdao.selectMemberLoginInfo(member_id, member_pw);
		
		
		System.out.println(memberdto);
		
		if(memberdto != null){

			
			
			if(memberdto.getMember_state() == 5)
			{
				ra.addFlashAttribute("msg", "이용 정지된 회원입니다.");
				mav.setViewName("redirect:/memberLoginPage");
			}
			else if(memberdto.getMember_state() == 0)
			{
				ra.addFlashAttribute("msg", "아이디 혹은 비밀번호가 일치하지 않습니다.");
				mav.setViewName("redirect:/memberLoginPage");
			}else{
				
				if(memberdto.getMember_id().equals("ICIAadmin")){
					session.setAttribute("loginId", memberdto.getMember_id());
					mav.setViewName("redirect:/adminMemberListPage");
				}else {
					String crewCode = mdao.selectMemberCrewCode(member_id);
					String contextPath = request.getContextPath();
					session.setAttribute("crewCode", crewCode);
					session.setAttribute("loginId", memberdto.getMember_id());
					session.setAttribute("loginProfile",memberdto.getMember_profile());
					mav.setViewName("redirect:/");
				}
				
			}
		}
		else
		{
			ra.addFlashAttribute("msg", "아이디 혹은 비밀번호가 일치하지 않습니다.");
			mav.setViewName("redirect:/memberLoginPage");
		}
		
		return mav;
	}

	// 로그아웃 처리
	public ModelAndView memberLogout(RedirectAttributes ra) {
		
		session.invalidate();
		ra.addFlashAttribute("msg", "로그아웃 되었습니다.");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
	// 내 정보 조회
	public ModelAndView memberInfo() {
		
		ModelAndView mav = new ModelAndView();
		
		String loginId = (String)session.getAttribute("loginId");
		
		// 개인 정보
		MembersDto memberdto = mdao.selectMemberInfo(loginId);
		// 반려견 등록 정보
		ArrayList<DogInfoDto> doginfodto = mdao.selectDogInfo(loginId);
	
		// 이메일 분리
		String member_email = memberdto.getMember_email();
		// 주소 분리
		String member_address = memberdto.getMember_address();
		
		if(member_email != null)
		{
			String[] member_email_arr = member_email.split("@");
			if(member_email_arr.length >= 2)
			{
				memberdto.setMember_emailid(member_email_arr[0]);
				memberdto.setMember_emaildomain(member_email_arr[1]);
			}
		}
		
		if(member_address != null)
		{
			String[] member_address_arr = member_address.split("_");
			if(member_address_arr.length >= 4)
			{
				memberdto.setMember_postcode(member_address_arr[3]);
				memberdto.setMember_addr(member_address_arr[0]);
				memberdto.setMember_detailaddr(member_address_arr[1]);
				memberdto.setMember_extraaddr(member_address_arr[2]);
			}
		}
		
		mav.addObject("memberdto", memberdto);
		mav.addObject("doginfodto", doginfodto);
		mav.setViewName("member/MemberInfo");
		
		return mav;
	}


	// 개인 정보 수정 처리
	public String memberInfoModify(MembersDto memberdto, int baseImgCheck) throws IllegalStateException, IOException {
		System.out.println("개인 정보 수정 처리 호출");
		
		MultipartFile file = memberdto.getMember_file();
		System.out.println(file);
		System.out.println(file.isEmpty());
		
		// 수정 전 파일 조회
		
		String preFile = mdao.selectMemberProfile(memberdto.getMember_id());
		String fileState = memberdto.getMember_fileState();
		String profile = "";
		
		if(!file.isEmpty())
		{
			UUID uuid = UUID.randomUUID();
			profile = uuid.toString() + "_" + file.getOriginalFilename();
			file.transferTo(new File(savePath, profile));
		} 
		else 
		{
			if(baseImgCheck == 0) 
			{
				// 파일이 비어있을 경우 -- 파일을 제외하고 다른 부분들을 업데이트 할 경우 null로 저장되는 것을 막기위함
				profile = preFile; //원본파일	
			}
			else
			{
				// 0 => 기본 이미지	
		    }	
		}
		
		
		memberdto.setMember_profile(profile);
		
		// 분리된 주소 합체
		memberdto.setMember_address(memberdto.getMember_addr() 
							+ "_" + memberdto.getMember_detailaddr() + "_" + memberdto.getMember_extraaddr() + "_" + memberdto.getMember_postcode());
		// 분리된 이메일 합체
		memberdto.setMember_email(memberdto.getMember_emailid() + "@" + memberdto.getMember_emaildomain());
		
		
		int memberInfoModifyResult = mdao.updateMemberInfo(memberdto);
		System.out.println("11 memberInfoModifyResult: " + memberInfoModifyResult );
		System.out.println(memberdto);
		System.out.println(fileState);
		System.out.println(memberdto.getMember_id());
		System.out.println(memberdto.getMember_profile());
		// 이미지 변경 시 댓글 프로필 사진 변경
		int updateResult = mdao.updateRecommentProfile(memberdto);
		
		System.out.println("11 : " + updateResult );
		if(updateResult > 0)
		{
			System.out.println("업데이트 아이디 : " +  memberdto.getMember_id());
		}
		
		
		// 사진 변경 시 전에 있던 파일 삭제 & 현 사진으로 변경
		if(memberInfoModifyResult > 0)
		{
			if((preFile != null && !file.isEmpty()) || (fileState.equals("true")))
			{
				File delFile = new File(savePath, preFile);
				delFile.delete();
			}
		}
		
		
		return memberInfoModifyResult+"";
	}

	// 반려견 수정 처리
	public String dogInfoModify(DogInfoDto doginfodto, int dog_baseImgCheck) throws IllegalStateException, IOException {
		System.out.println("반려견 정보 수정 처리");
		
		MultipartFile file = doginfodto.getDog_file();
		System.out.println(file);
		System.out.println(file.isEmpty());
		
		// 수정 전 파일 조회
		String preFile = mdao.selectDogImage(doginfodto.getDog_owner(), doginfodto.getDog_name());
		String fileState = doginfodto.getDog_fileState();

		String profile = "";
		
		if(!file.isEmpty())
		{
			UUID uuid = UUID.randomUUID();
			profile = uuid.toString() + "_" + file.getOriginalFilename();
			file.transferTo(new File(savePath, profile));
		} 
		else 
		{
			if(dog_baseImgCheck == 0) {
				// 파일이 비어있을 경우 -- 파일을 제외하고 다른 부분들을 업데이트 할 경우 null로 저장되는 것을 막기위함
				profile = preFile; //원본파일	
			} 
			else 
			{
				// 0 => 기본이미지
		    }			
		}
		doginfodto.setDog_image(profile);
		
		int dogInfoModifyResult = mdao.updateDogInfo(doginfodto);
		if(dogInfoModifyResult > 0)
		{
			if((preFile != null && !file.isEmpty()) || (fileState.equals("true")) && !file.isEmpty())
			{
				File delFile = new File(savePath, preFile);
				delFile.delete();
			}
		}
		
		System.out.println(doginfodto);
		return dogInfoModifyResult+"";
	}
	
	// 반려견 삭제 처리
		public String dogInfoDelState(String dog_owner, String dog_name) {
			System.out.println("반려견 삭제 처리 호출");
			
			int dogInfoDelStateResult = mdao.updateDogState(dog_owner, dog_name);
			
			return dogInfoDelStateResult+"";
		}

	// 회원 탈퇴 처리
	public String memberDelState(String member_id) {
		System.out.println("회원탈퇴 처리 호출");
		
		int memberDelStateResult = mdao.updateMemberState(member_id);
		
		if(memberDelStateResult > 0)
		{
			session.invalidate();
		}
		
		return memberDelStateResult+"";
	}

	// 아이디 찾기
	public String findMemberId(String member_name, String member_email) {
		System.out.println("아이디 찾기 서비스 호출");
		System.out.println("입력한 이름 : " + member_name);
		System.out.println("입력한 이메일 : " + member_email);
		
		MembersDto findMemberId = mdao.selectMemberFindId(member_name, member_email);
		
		Gson gson = new Gson();
		String searchMemberId_json = gson.toJson(findMemberId);
		System.out.println(findMemberId);
		return searchMemberId_json;
	}

	// 비밀번호 찾기 _ 이메일을 통한 임시비밀번호 발급
	public String findMemberPw(String member_email) {
		System.out.println("전송할 이메일 주소 : " + member_email);
		makeRandomNumber();
		String setFrom = "gunhee0906@naver.com";
		String toMail = member_email;
		String title = "오늘의 산책에서 발급드리는 임시비밀번호입니다.";
		String contents = "임시비밀번호는 " + authNumber + " 입니다.";
		
		System.out.println(setFrom);
		System.out.println(toMail);
		System.out.println(title);
		System.out.println(contents);
		
		int findMemberPw = mdao.updateMemberPw(authNumber, member_email);
		
		mailSend(setFrom, toMail, title, contents);
		
		
		return Integer.toString(authNumber);
	}

	// 비밀번호 찾기 _ 메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String contents) {
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, "UTF-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(contents, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}
	
	// 비밀번호 찾기 _ 임시비밀번호 난수 생성
	public void makeRandomNumber() {
		// 난수의 범위 111111 ~ 999999 (6자리 난수)
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("인증번호 : " + checkNum);
		authNumber = checkNum;
	}

}
