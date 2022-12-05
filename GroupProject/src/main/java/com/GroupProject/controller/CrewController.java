package com.GroupProject.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dao.CrewDao;
import com.GroupProject.dao.WalkDao;
import com.GroupProject.dto.CrewDto;
import com.GroupProject.dto.WalkboardDto;
import com.GroupProject.service.CrewService;
import com.GroupProject.service.ReviewService;
import com.GroupProject.service.WalkService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class CrewController {
	
	@Autowired 
	private HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	private ModelAndView mav;
	
	@Autowired
	private CrewService crsvc;
	
	@Autowired
	private CrewDao crdao;
	
	@Autowired
	private WalkDao wkdao;
	
	@Autowired
	private WalkService wksvc;
	@Autowired
	private ReviewService bsv;

	
	//크루 생성페이지 이동요청
	@RequestMapping(value = "/crewWritePage")
	public ModelAndView  crewWritePage(RedirectAttributes ra) {
	mav = new ModelAndView();
	System.out.println("크루 생성페이지 이동 시작----" );
	//이미 크루에 속해있는경우 차단
	String searchId = (String)(session.getAttribute("loginId"));
	//해당
	if(searchId ==null) {
		System.out.println(">>로그인중아님");
		ra.addFlashAttribute("msg","로그인 후 이용하실 수 있습니다");
		mav.setViewName("redirect:/");
	}else {
		String resultCrewcode = crdao.selectCrewMemberCheck(searchId);
		System.out.println(">>크루찾기결과:"+resultCrewcode);
		if(resultCrewcode.equals("NO")) {
			mav= crsvc.crewWritePage(ra);
		}else {			
			ra.addFlashAttribute("msg","이미 크루에 가입되어 있습니다");
			mav.setViewName("redirect:/crewListPage");
		}
	}
	
		
	
	
			
		return mav;
	}
	
	
	//크루 생성요청
	@RequestMapping(value = "/crewWrite")
	public ModelAndView  crewWrite(CrewDto crewInfo,RedirectAttributes ra) throws IllegalStateException, IOException{
	mav = new ModelAndView();
	System.out.println("크루 생성 시작----" );
	
	//이미 크루에 속해있는경우 차단
	String searchId = (String)(session.getAttribute("loginId"));
	//해당
	String resultCrewcode=crdao.selectCrewMemberCheck(searchId);
	if(resultCrewcode.equals("NO")) {
		mav= crsvc.crewWrite(crewInfo,ra);
		String mCrewCode=wkdao.selectMemberCrewCode(searchId);
		System.out.println(">>세션에 저장된 크루코드"+mCrewCode);
		session.setAttribute("crewCode", mCrewCode);
	}else {
		ra.addFlashAttribute("msg","이미 크루에 가입되어 있습니다");
		mav.setViewName("redirect:/crewListPage");		
	}
		return mav;
	}
	
	//크루 목록페이지 이동요청
		@RequestMapping(value = "/crewListPage")
		public ModelAndView  crewListPage(RedirectAttributes ra) {
		mav = new ModelAndView();
		System.out.println("크루 목록 페이지 이동 시작----" );
		//로그인확인
		String searchId = (String)(session.getAttribute("loginId"));
		if(searchId != null) {
			mav= crsvc.crewListPage(searchId,ra);
		}else {
			ra.addFlashAttribute("msg","로그인 후 이용해주세요");
			mav.setViewName("redirect:/");
		}
		
			return mav;
		}
		
		//크루목록페이지 검색페이징처리
		
		@RequestMapping(value="/crewPaging_ajax")
		public @ResponseBody String crewPaging_ajax(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "searchType", defaultValue = "") String searchType,
				@RequestParam(value = "searchWord", defaultValue = "") String searchWord,@RequestParam(value = "searchAddr", defaultValue = "") String searchAddr) {		
			System.out.println("크루광고목록 검색+페이징 처리 시작----");
			System.out.println(">>page:"+page+"/searchType:"+searchType+"/searchWord:"+searchWord+"/searchAddr:"+searchAddr);	
			String crewPaging = crsvc.crewPaging(page,searchType,searchWord,searchAddr);
			System.out.println(">>보내주기 직전 확인:" +crewPaging);
			return crewPaging;
				
		}
		
				
				
		
		//크루가입요청
			@RequestMapping(value = "/crewJoin")
			public ModelAndView  crewJoin(String crewCode,RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("크루멤버가입 시작---:"+crewCode);	

			//이미 크루에 속해있는경우 차단
			String searchId = (String)(session.getAttribute("loginId"));
			String resultCrewcode=crdao.selectCrewMemberCheck(searchId);
			
			
			
			if(resultCrewcode.equals("NO")) {
				mav = crsvc.crewJoin(searchId,crewCode,ra);
				
				
			}else {
				ra.addFlashAttribute("msg","이미 가입된 아이디입니다.");
				mav.setViewName("redirect:/crewListPage");
			}
			
				return mav;
			}
			
			
			//크루메인이동
			@RequestMapping(value = "/crewMainPage")
			public ModelAndView  crewMainPage(RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("크루메인페이지 이동시작----");	

			
			String searchId = (String)(session.getAttribute("loginId"));
			
			String resultCrewcode=crdao.selectCrewMemberCheck(searchId);

			String searchCrewCode = (String)(session.getAttribute("crewCode"));
			
			if(searchId == null) {
				ra.addFlashAttribute("msg","로그인 후 이용할 수 있습니다.");
				mav.setViewName("redirect:/");
			}else if (searchCrewCode == null || !searchCrewCode.equals(resultCrewcode) ){
				ra.addFlashAttribute("msg","크루가 없어 이용할 수 없습니다.");
				mav.setViewName("redirect:/");
			}else {
				mav=crsvc.crewMainPage(searchCrewCode,ra);
			}
				return mav;
			}
			
			//크루정보 출력요청
			
			@RequestMapping(value="/crewInfo_ajax")
			public @ResponseBody String getCrewInfo_ajax() {		
				System.out.println("크루정보 가져오기 시작----");	

				String crewCode = (String)(session.getAttribute("crewCode"));
				String crewPaging = crsvc.crewInfo(crewCode);
				System.out.println(">>보내주기 직전 확인:" +crewPaging);
				return crewPaging;
					
			}
			
			//크루정보수정요청
			@RequestMapping(value="/crewInfoModify_ajax")
			public @ResponseBody String crewInfoModify_ajax(CrewDto crewInfo) throws IllegalStateException, IOException {		
				System.out.println("크루정보 수정시작----"+crewInfo);	
				
				//계정 아이디-> 크루코드를 구한다.
				String searchId = (String)(session.getAttribute("loginId"));
				String mCrewCode=wkdao.selectMemberCrewCode(searchId);				
				crewInfo.setCrew_code(mCrewCode);
				
				String crewPaging = crsvc.crewInfoModify(crewInfo);
				System.out.println(">>보내주기 직전 확인:" +crewPaging);
				return crewPaging;
					
			}
			
			//크루탈퇴요청
			@RequestMapping(value = "/crewLeave")
			public ModelAndView  crewLeave(String leaveId, RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("크루멤버 탈퇴시작----");	

			//세션값 저장
			String searchId = (String)(session.getAttribute("loginId"));			
			//아이디로 찾은 크루코드(체크용)
			String resultCrewcode=crdao.selectCrewMemberCheck(searchId);
			
			if(searchId == null) {
				ra.addFlashAttribute("msg","로그인 후 이용할 수 있습니다.");
				mav.setViewName("redirect:/");
			}else{
				
					mav = crsvc.crewLeave(leaveId,searchId, ra);
				
			}
				return mav;
			}
			
			
			//크루삭제 요청
			@RequestMapping(value = "/crewDelState")
			public ModelAndView  crewDelState(RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("크루삭제----");	

			//세션값 저장
			String searchId = (String)(session.getAttribute("loginId"));
			String searchCrewCode = (String)(session.getAttribute("crewCode"));
			//아이디로 찾은 크루코드(체크용)
			String resultCrewcode=crdao.selectCrewMemberCheck(searchId);
			
			if(searchId == null) {
				ra.addFlashAttribute("msg","로그인 후 이용할 수 있습니다.");
				mav.setViewName("redirect:/");
			}else{
				if(searchCrewCode.equals(resultCrewcode)) {
					mav = crsvc.crewDelState(searchId,searchCrewCode,ra);
				}else {
					ra.addFlashAttribute("msg","크루정보 오류, 재로그인 해주세요.");
					mav.setViewName("redirect:/");
				}
			}
				return mav;
			}
			
			//크루맴버 강아지 정보 가져오기
			@RequestMapping(value="/crewMemberDogList_ajax")
			public @ResponseBody String crewMemberDogList_ajax(String memberId) {		
				System.out.println("크루맴버강아지 정보가져오기 시작----"+memberId);	
				
				String crewMemberDogList = crsvc.crewMemberDogList(memberId);
				return crewMemberDogList;
					
			}
			
			
			
			@RequestMapping(value = "/crewMaster")
			public ModelAndView  crewMaster(String memberId,RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("크루장 권한 위임시작----"+memberId);	

			//세션값 저장
			String searchId = (String)(session.getAttribute("loginId"));
			String searchCrewCode = (String)(session.getAttribute("crewCode"));
			//아이디로 찾은 크루코드(체크용)
			String resultCrewcode=crdao.selectCrewMemberCheck(searchId);
			
			if(searchId == null) {
				ra.addFlashAttribute("msg","로그인 후 이용할 수 있습니다.");
				mav.setViewName("redirect:/");
			}else{
				if(searchCrewCode.equals(resultCrewcode)) {
					mav = crsvc.crewMaster(memberId,searchCrewCode,ra);
				}else {
					ra.addFlashAttribute("msg","크루정보 오류, 재로그인 해주세요.");
					mav.setViewName("redirect:/");
				}
			}
				return mav;
			}
			
			//크루산책모집글 작성페이지 이동요청
			@RequestMapping(value = "/crewWalkWritePage")
			public ModelAndView  crewWalkWritePage(RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("크루산책모집글 작성페이지 이동시작----");	

			//세션값가져와 저장 사용자아이디,사용자크루정보 문자변수
			String searchId = (String)(session.getAttribute("loginId"));
			String searchCrewCode = (String)(session.getAttribute("crewCode"));

			if(searchId == null) {
				ra.addFlashAttribute("msg","로그인 후 이용할 수 있습니다.");
				mav.setViewName("redirect:/");
			}else{
				if(searchCrewCode != null) {
					mav = crsvc.crewWalkWitePage(searchId,searchCrewCode,ra);
				}else {
					ra.addFlashAttribute("msg","크루정보 오류, 재로그인 해주세요.");
					mav.setViewName("redirect:/");
				}
			}
				return mav;
			}
			
			//크루산책모집글 등록요청
			@RequestMapping(value = "/crewWalkWrite")
			public ModelAndView  crewWalkWrite(WalkboardDto walkboard,RedirectAttributes ra) {
				
					System.out.println("크루 산책글 등록 시작----" );
					mav =new ModelAndView();
					//접속중인 세션아이디값 가져와서 로그인중인지 확인합니다 (작은 보안기능)
					String searchId = (String)(session.getAttribute("loginId"));
					if(searchId !=null) {
						mav = crsvc.crewWalkWrite(walkboard, ra);
						
					}else {
						ra.addFlashAttribute("msg","로그인 후 이용해주세요");
						mav.setViewName("redirect:/");
					}

					return mav;
				}	
			
			//크루산책목록페이지 페이징처리
			@RequestMapping(value="/crewWalkPaging_ajax")
			public @ResponseBody String crewWalkPaging_ajax(int page) {		
				
				System.out.println("크루산책 목록 페이징 ----");
				
				String searchCrewCode = (String)(session.getAttribute("crewCode"));
				String crewWalkPaging = crsvc.crewWalkPaging(page,searchCrewCode);
				
				return crewWalkPaging;
				
			}
			
			
			//크루 산책 후기 글 작성 페이지 이동요청 
			@RequestMapping(value = "/crewReviewWritePage")
			public ModelAndView crewReviewWritePage(String crewWalkCode) {
				System.out.println("크루후기 작성 페이지 이동----");
				
				String mid = (String)(session.getAttribute("loginId"));
				
				mav = crsvc.crewReviewWritePage(crewWalkCode);
				
				
						
				return mav;
			}
			
			//크루 산책 후기 글 등록 요청
			@RequestMapping(value = "/crewReviewWrite") 
			  public ModelAndView crewReviewWrite(WalkboardDto WalkboardDto,RedirectAttributes ra,String walk_mid) {
			 
			  System.out.println("크루후기 글 등록----");
			  
			  System.out.println("작성 정보 : " + WalkboardDto);
			  
			  mav = crsvc.crewReviewWrite(WalkboardDto,ra,walk_mid);
			  
			  return mav;
			  
			  }
			  
			//크루 후기 작성 버튼 권한 체크
			@RequestMapping(value="/checkReviewGrant_ajax")
				public @ResponseBody String checkReviewGrant_ajax(WalkboardDto walkInfo) {		
					
				System.out.println("크루후기 권한 체크시작----");
					
				String checkResult = crsvc.checkReviewGrant(walkInfo);
				System.out.println("전달할 결과물:"+checkResult);
				return checkResult;
					
			}
				
			//크루 산책 모집 상세보기 페이지 이동 요청
			@RequestMapping(value = "/crewWalkViewPage")
				public ModelAndView crewWalkViewPage(String crewWalkCode) {
					System.out.println("크루산책 상세페이지 이동----");
					
					mav = crsvc.crewWalkViewPage(crewWalkCode);
							
					return mav;
				}
			
			
			//크루 산책글 수정페이지 이동요청
			@RequestMapping(value = "/crewWalkViewModifyPage")
			public ModelAndView  crewWalkViewModifyPage(String boardCode,RedirectAttributes ra) {
				mav = new ModelAndView();
				System.out.println("크루산책 수정페이지 이동----" );
				String searchId = (String)(session.getAttribute("loginId"));
						
				if(searchId !=null) {
					mav=crsvc.crewWalkViewModifyPage(boardCode,ra);
				}
						
				System.out.println(mav);
				return mav;
			}		
			
			//크루 산책글 수정요청
			@RequestMapping(value = "/crewWalkViewModify")
			public ModelAndView  crewWalkViewModify(WalkboardDto boardInfo,RedirectAttributes ra) {
				mav = new ModelAndView();
				System.out.println("크루산책 글수정 시작----" );
				String searchId = (String)(session.getAttribute("loginId"));
						
				if(searchId !=null) {
					mav=crsvc.crewWalkViewModify(boardInfo,ra);
				}
						
				return mav;
			}	
			
			
			//크루 산책글 삭제요청
			@RequestMapping(value = "/crewWalkDelState")
			public ModelAndView  crewWalkDelState(String boardCode,RedirectAttributes ra) {
				System.out.println("크루산책 글삭제 시작----" );
				mav = new ModelAndView();
				String searchId = (String)(session.getAttribute("loginId"));
				
				if(searchId !=null) {
					mav=crsvc.crewWalkDelState(boardCode,ra);
				}
				
				return mav;
			}	
			
			
			//크루 산책글 참가요청
			@RequestMapping(value = "/crewWalkViewJoin")
			public ModelAndView  crewWalkViewJoin(String boardCode,RedirectAttributes ra) {
				System.out.println("크루산책 멤버참가 시작----" );
					mav = new ModelAndView();
					String searchId = (String)(session.getAttribute("loginId"));
								
					if(searchId !=null) {
						mav=crsvc.crewWalkViewJoin(searchId,boardCode,ra);
					}
								
					return mav;
			}
			
			
			//크루 산책 후기 페이징 요청
			// 페이징
			  
			@RequestMapping(value="/crewReviewListPaging_ajax") 
			public @ResponseBody String crewReviewListPaging_ajax(int page) { 
				  System.out.println("크루후기 목록 페이징:"+page+"----");
				  String crewReviewPaging =  crsvc.crewReviewListPaging(page);
			  
			  return crewReviewPaging;
			  
			  }
			  
			// 크루후기 상세 페이지 이동
			@RequestMapping(value = "/crewReviewPage") 
			public ModelAndView crewReviewPage(String walk_code) {
				System.out.println("크루후기 작성 페이지 이동----");
				  
				mav = crsvc.crewReviewPage(walk_code);
				  
				return mav; 
			}		
			
			
			//크루 후기 댓글 페이징 요청
			@RequestMapping(value="/crewReviewCommentList_ajax") 
			public @ResponseBody String crewReviewCommentList_ajax(String recomment_boardcode) { 
				  System.out.println("크루후기 댓글 목록----");
				  String crewReviewCommentList =  crsvc.crewReviewCommentList(recomment_boardcode);
			  
				  return crewReviewCommentList;
			  
			}
			

			//크루메인 산책,후기 최신글
			@RequestMapping(value="/crewWalkTopPrint_ajax") 
			public @ResponseBody String crewWalkTopPrint_ajax(String recomment_boardcode) { 
				  System.out.println("크루메인 산책,후기 최신글ajax----");
				  String crewBoardList =  crsvc.crewWalkTopPrint(recomment_boardcode);
			  
				  return crewBoardList;
			  
			}
				
			//후기상세수정 페이지 이동 
			  
			  @RequestMapping(value = "/crewReviewModifyPage")
				public ModelAndView crewReviewModifyPage(String walk_code , String walk_mid) {
					
					System.out.println("후기상세페이지 수정");
					
					mav = crsvc.crewReviewModifyPage(walk_code,walk_mid);
							
					return mav;
			}
			  
			  // 후기상세수정 처리 		  
			  @RequestMapping(value = "/crewReviewModify")
				public ModelAndView crewReviewModify(WalkboardDto reviewboard,RedirectAttributes ra,String member_id) {
					
					System.out.println("크루후기상세페이지 수정");
					
					mav = crsvc.crewReviewModify(reviewboard,member_id,ra);
							
					return mav;
				}
			  
			  
			  // 후기상세삭제 처리 		  
			  @RequestMapping(value = "/crewReviewDelState")
				public ModelAndView crewReviewDelState(String walk_code,RedirectAttributes ra) {
					
					System.out.println("크루후기상세게시물 삭제");
					
					mav = crsvc.crewReviewDelState(walk_code,ra);
							
					return mav;
				}
			  
			  // 댓글 신고 
			  @RequestMapping(value = "/crewReviewCommentReport")
				public @ResponseBody String crewReviewCommentReport(String code) {
					
					System.out.println("댓글 신고");
					
					String reviewCommentReport = crsvc.crewReviewCommentReport(code);
							
					return reviewCommentReport;
			  }
}
