package com.GroupProject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dao.WalkDao;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;
import com.GroupProject.service.WalkService;

@Controller
public class WalkController {
	
	@Autowired
	HttpSession session;
	
	private ModelAndView mav;
	
	@Autowired
	private WalkService wksvc;
	
	@Autowired
	private WalkDao wkdao; 
	
	
	
	//산책모집 '작성'페이지 이동요청
	@RequestMapping(value = "/walkWritePage")
	public ModelAndView  walkWritePage(RedirectAttributes ra) {
		System.out.println("walkWritePage 요청" );
		//세션아이디값 가져오기
		ModelAndView mav =new ModelAndView();
		String searchId = (String)(session.getAttribute("loginId"));				
		if(searchId==null) {
			ra.addFlashAttribute("msg","로그인 후 이용해주세요.");
			mav.setViewName("redirect:/walkListPage");
		}else {
			mav = wksvc.walkWritePage(searchId,ra);
			
		}
		return mav;
	}	
	

	//산책모집 작성페이지 중 날씨 데이터 검색 요청 
	@RequestMapping(value = "/walkSearchWeather_ajax" , /*한글안깨지게하는거*/ produces = "application/text; charset=utf8")
	public @ResponseBody String walkSearchWeather_ajax(@RequestParam("address")String address, @RequestParam("date")String date,@RequestParam("time")String time) {
		System.out.println("walkSearchWeather 요청, 넘어온 장소:" +address+"넘어온 날짜:"+date+"넘어온 시간"+time);
		String weatherResult = wksvc.walkWriteSearchWeather(address,date,time);
		return weatherResult;
	}	
	
	//산책모집 게시글 등록요청
	@RequestMapping(value = "/walkWrite")
	public ModelAndView  walkWrite(WalkboardDto walkboard, RedirectAttributes ra) {
		System.out.println("walkWrite 컨트롤러 요청" );
		mav =new ModelAndView();
		//접속중인 세션아이디값 가져와서 로그인중인지 확인합니다 (작은 보안기능)
		String searchId = (String)(session.getAttribute("loginId"));
		if(searchId !=null) {
			mav = wksvc.walkWrite(walkboard, ra);
			
		}else {
			ra.addFlashAttribute("msg","로그인 후 이용해주세요");
			mav.setViewName("redirect:/");
		}

		return mav;
	}	
	
	//산책목록 페이지 이동요청
	@RequestMapping(value = "/walkListPage")
	public ModelAndView  walkListPage(RedirectAttributes ra) {
		mav = new ModelAndView();
		System.out.println("walkListPage 요청" );
		String searchId = (String)(session.getAttribute("loginId"));
		
		mav=wksvc.walkListPage(searchId,ra);
		System.out.println(mav);
		return mav;
	}	

	//산책목록페이지 페이징처리
	// 페이징 
	@RequestMapping(value="/walkPaging_ajax")
	public @ResponseBody String walkPaging_ajax(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "searchType", defaultValue = "") String searchType,
	@RequestParam(value = "searchWord", defaultValue = "") String searchWord,@RequestParam(value = "searchAddr", defaultValue = "") String searchAddr) {		
		
		System.out.println("ajax 전체, 단어검색페이징, 지역검색페이징");
		
		
		String walkPaging = wksvc.walkPaging(page,searchType,searchWord,searchAddr);
		
		return walkPaging;
		
	}
	
	//산책모집 '상세'페이지 이동요청
	@RequestMapping(value = "/walkViewPage")
	public ModelAndView  walkViewPage(String walkBoardCode,RedirectAttributes ra) {
		System.out.println("walkWritePage 요청" );
		//세션아이디값 가져오기
		ModelAndView mav =new ModelAndView();
		String searchId = (String)(session.getAttribute("loginId"));	
		if(searchId == null) {
			ra.addFlashAttribute("msg","로그인 후 이용해주세요");
			mav.setViewName("redirect:/walkListPage");
		}else {
			
			mav = wksvc.walkViewPage(walkBoardCode,searchId,ra);
		}
		return mav;
	}	
		
	//산책목록페이지 댓글등록 처리
		
	@RequestMapping(value="/walkRecomment_ajax")
	public @ResponseBody String walkRecomment_ajax(RecommentDto recomment) {		
			
		System.out.println("댓글 등록"+recomment);
			
			
		String result = wksvc.walkRecomment(recomment);
		
		
	
			
		return result;
			
	}
	
	//산책목록페이지 댓글출력처리
	
			@RequestMapping(value="/walkRecommentView_ajax")
			public @ResponseBody String walkRecommentView_ajax(String boardCode) {		
					
				System.out.println("댓글 출력"+boardCode);
					
					
				String result = wksvc.walkRecommentView(boardCode);
					
				return result;
					
			}
	
	//산책목록페이지 댓글삭제
	
		@RequestMapping(value="/walkRecommentDelState_ajax")
		public @ResponseBody String walkRecommentDelState_ajax(String recommentCode) {		
				
			System.out.println("댓글 삭제처리"+recommentCode);
				
				
			String result = wksvc.walkRecommentDelState(recommentCode);
				
			return result;
				
		}
		
	//산책목록페이지 댓글수정
		
		@RequestMapping(value="/walkRecommentModify_ajax")
		public @ResponseBody String walkRecommentModify_ajax(RecommentDto boardInfo) {		
					
			System.out.println("댓글 수정처리"+boardInfo);
			String searchId = (String)(session.getAttribute("loginId"));
			String result ="";
			if(boardInfo.getRecomment_writer().equals(searchId)) {
				result = wksvc.walkRecommentModify(boardInfo);
			}else {
				result="사용자다름";
			}
				return result;
			}
		
		//산책글 삭제요청
		@RequestMapping(value = "/walkDelState")
		public ModelAndView  walkDelState(String boardCode,RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("walkDelState 요청" );
			String searchId = (String)(session.getAttribute("loginId"));
			
			if(searchId !=null) {
				mav=wksvc.walkDelState(boardCode,ra);
			}
			
			System.out.println(mav);
			return mav;
		}	
		
		
		//산책글 수정페이지 이동요청
		@RequestMapping(value = "/walkViewModifyPage")
		public ModelAndView  walkViewModifyPage(String boardCode,RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("walkViewModifyPage 요청" );
			String searchId = (String)(session.getAttribute("loginId"));
					
			if(searchId !=null) {
				mav=wksvc.walkViewModifyPage(boardCode,ra);
			}
					
			System.out.println(mav);
			return mav;
		}	
		//산책글 수정요청
				@RequestMapping(value = "/walkViewModify")
				public ModelAndView  walkViewModify(WalkboardDto boardInfo,RedirectAttributes ra) {
					mav = new ModelAndView();
					System.out.println("walkViewModifyPage 요청" );
					String searchId = (String)(session.getAttribute("loginId"));
							
					if(searchId !=null) {
						mav=wksvc.walkViewModify(boardInfo,ra);
					}
							
					System.out.println(mav);
					return mav;
				}	
				
		//산책글 참가요청
		@RequestMapping(value = "/walkViewJoin")
		public ModelAndView  walkViewJoin(String boardCode,RedirectAttributes ra) {
				mav = new ModelAndView();
				System.out.println("walkViewJoin 요청" );
				String searchId = (String)(session.getAttribute("loginId"));
							
				if(searchId !=null) {
					mav=wksvc.walkViewJoin(searchId,boardCode,ra);
				}
							
				System.out.println(mav);
				return mav;
		}
		
		//산책글 탈퇴요청
				@RequestMapping(value = "/walkViewLeave")
				public ModelAndView  walkViewLeave(String boardCode,RedirectAttributes ra) {
						mav = new ModelAndView();
						System.out.println("walkViewLeave 요청" );
						
						
						String searchId = (String)(session.getAttribute("loginId"));
									
						if(searchId !=null) {
							mav=wksvc.walkViewLeave(searchId,boardCode,ra);
						}
									
						System.out.println(mav);
						return mav;
				}
		//댓글신고요청		
	
				@RequestMapping(value="/walkinsertReport_ajax")
				public @ResponseBody String walkinsertReport_ajax(ReportDto rcReport) {		
							
					System.out.println("댓글 신고처리"+rcReport);
					String searchId = (String)(session.getAttribute("loginId"));
					rcReport.setMember_id(searchId);
					String result ="";
					
						result = wksvc.walkRecommentReport(rcReport);
					
						return result;
					}
				
}
