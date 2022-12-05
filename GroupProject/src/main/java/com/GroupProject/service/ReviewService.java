package com.GroupProject.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.GroupProject.dao.ReviewDao;
import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;
import com.google.gson.Gson;



@Service
public class ReviewService {

	@Autowired
	private HttpServletRequest request;
	
	@Autowired 
	private HttpSession session;
	
	
	@Autowired
	private ReviewDao bdao;
		
	

	// 임시 로그인
	public ModelAndView LOGIN(RedirectAttributes ra) {
		
		ModelAndView mav = new ModelAndView();
		
		String id = "WNALSDN";
			
		
			MembersDto login = bdao.getlogin(id);
			session.setAttribute("loginId", login.getMember_id()); 
			session.setAttribute("loginprofile", login.getMember_profile());
		
		mav.setViewName("redirect:/reviewListPage"); 
		
		
		return mav;
	}
	
	
	
	
	
	// 산책 후기 작성
	public ModelAndView reviewWrite(WalkboardDto walkboardDto, RedirectAttributes ra, String walk_mid) {
		
		System.out.println("후기 게시판 작성 (SERVICE)");
		
		ModelAndView mav = new ModelAndView();
								
		System.out.println("작성 정보(SERVICE) : " + walkboardDto);
		
		// 코드 생성 
		String rbcode = "RB"; 
		// 코드 생성 (select)
		String Maxrbcode = bdao.getMaxRbcode();
		
		System.out.println("코드 : " + Maxrbcode);
		
		if(Maxrbcode == null) { 
			
			rbcode = rbcode + "001"; 
			
		} else {
			
			Maxrbcode = Maxrbcode.substring(2); 
			int codenum = Integer.parseInt(Maxrbcode) + 1;			
			if(codenum < 10) { 
				rbcode = rbcode + "00" + codenum; 
			} else if(codenum < 100 ) {
				
				rbcode = rbcode + "0" + codenum;  
				
			} else {
				rbcode = rbcode + codenum; 
			}
		} 
		
		walkboardDto.setWalk_code(rbcode);
			   			
		System.out.println("코드 완성 : " + rbcode);
		
		System.out.println("지도 좌표 : "+walkboardDto.getWalk_map());
		
		String weatherinfo_replace = walkboardDto.getWalk_weatherinfo().replace("맑음/","0/").replace("구름많음/","1/").replace("흐림/","2/").replace("비/","3/").replace("비/눈/","4/").replace("눈/","5/");
        walkboardDto.setWalk_weatherinfo(weatherinfo_replace);
		
		String bodytype_replace = walkboardDto.getWalk_bodytype().replace("소형견","0010").replace("중형견", "1025").replace("대형견","2580");
		
		walkboardDto.setWalk_bodytype(bodytype_replace);
						
		int insertwalk = bdao.getinsertwalk(walkboardDto);
		
		ra.addFlashAttribute("msg2","게시물 작성 완료");
			 
		mav.setViewName("redirect:/reviewListPage");
		
		return mav;
	}






	// 후기 산책 목록 출력
	public ModelAndView reviewListPage(String searchId, RedirectAttributes ra) {
		System.out.println("후기 게시판 목록 (SERVICE)");
		System.out.println(searchId);
		 ModelAndView mav = new ModelAndView();
		 
		 if(searchId!=null) {
				String addr = bdao.selectMemberAddr(searchId);
				
				String firstAddr=addr.split(" ")[0];
				
				System.out.println("firstAddr:"+firstAddr);
				
				mav.addObject("firstAddr",firstAddr);
				mav.setViewName("Review/ReviewList");
			}else {
				ra.addFlashAttribute("msg","로그인 후 이용하실 수 있습니다.");
				mav.setViewName("redirect:/");
			}
		 		 		 				 		
		return mav;
	}
	


	
	// 페이징
	public String ReviewListPaging(int page, String searchType, String searchWord, String searchAddr) {
		
		System.out.println("ajax 페이징 (service)"+page+"/"+searchType+"/"+searchWord+"/"+searchAddr);
		
		
		
		Gson gson = new Gson();
		
		//전체or검색결과 글 개수를 담을 변수를 선언합니다.
		int boardTotalCount =0;
		
		if(searchAddr.equals("전체지역")) {
			searchAddr="";
		}
		
		System.out.println("페이지 번호 : " + page);
		
		System.out.println("searchAddr:"+searchAddr);
		boardTotalCount = bdao.selectWalkSearchListCount(searchType,searchWord,searchAddr);
		System.out.println("검색단어 글 개수를 가져옵니다 : " + boardTotalCount);
		
		
		
		//한 페이지에 보여줄 글 갯수 
		int pageCount = 6;
		
		// 한 페이지에 보여줄 페이지 번호 개수
		int pageNumCount = 5;
		
		// 한 페이지 의 시작 페이지 번호
		
		int startRow = (page - 1) * pageCount + 1;
		System.out.println("한 페이지의 시작 페이지 번호 : " + startRow);
		
		// 한 페이지 의 끝 페이지 번호
		int endRow = page * pageCount;
		System.out.println("한 페이지 의 끝 페이지 번호 : " + endRow);
					
		
		// ceil = 소수점 반올림
		// maxPage = 전체페이지 번호 
		int maxPage = (int)( Math.ceil(  (double)boardTotalCount/pageCount  ) );
		
		// 첫번째 페이지 번호
		int startPage = (int) (( Math.ceil( (double) page/pageNumCount )) -1) * pageNumCount + 1;
		
		// 마지막 페이지 번호
		int endPage = startPage + pageNumCount -1;
		
		if(endPage > maxPage) {
			
			endPage = maxPage;
			
		}
		// 한 페이지에 보여줄 글목록 조회						
		ArrayList<WalkboardDto> boardPagingList = bdao.getBoardPagingList(startRow,endRow,searchType,searchWord,searchAddr);

		System.out.println("목록 : " + boardPagingList);
		String RC = "RC";
		
		System.out.println("첫번째 페이지 번호 : " + startPage);
		
		System.out.println("마지막 페이지 번호 : " + endPage);
		
		System.out.println("전체 페이지 번호 : " + maxPage);
		
		for(int i = 0; i < boardPagingList.size(); i++) {
			
		String recommend_boardcode = boardPagingList.get(i).getWalk_code();
		
		System.out.println("댓글 게시물 코드 : " + recommend_boardcode);
		int recommentCount = bdao.getreviewcommentcount(recommend_boardcode,RC);
		
		System.out.println("댓글 개수 : " + recommentCount);
		
			  String content = boardPagingList.get(i).getWalk_content(); 
			  System.out.println("객체의 본문내용 : "+content);
			  
			  String content_replace = content.replace("src=", " ").replace("<p>&nbsp;</p>", " ");
			  System.out.println("변경후 :"+content_replace);
			  
			boardPagingList.get(i).setWalk_content(content_replace);
			  
			  
			
			boardPagingList.get(i).setWalk_replycount(recommentCount);
			boardPagingList.get(i).setPage(page);
			boardPagingList.get(i).setMaxPage(maxPage);
			boardPagingList.get(i).setStartPage(startPage);
			boardPagingList.get(i).setEndPage(endPage);
			
			
			
		}
		
		

		String boardPagingList_gson = gson.toJson(boardPagingList);
		
		
		return boardPagingList_gson;
	}





	// 후기 상세페이지 이동
	public ModelAndView reviewPage(String walk_code, int walk_hits,String member_id) {
		
		System.out.println("후기 상세 페이지 service");
		
		 ModelAndView mav = new ModelAndView();
		 		 		 
		 System.out.println("코드 : " + walk_code);		 
		 
		 System.out.println("회원 아이디 : " + member_id);
		 
		 // 상세 정보 보기
		 WalkboardDto reviewinfo = bdao.selectReviewInfo(walk_code);		 		
		 System.out.println("상세 정보 : " + reviewinfo);
		 
		String bodytype_replace = reviewinfo.getWalk_bodytype().replace("0010","소형견").replace("1025", "중형견").replace("2580","대형견");
			
		reviewinfo.setWalk_bodytype(bodytype_replace);
		
		String weatherinfo_replace = reviewinfo.getWalk_weatherinfo().replace("0/","맑음/").replace("1/","구름많음/").replace("2/","흐림/").replace("3/","비/").replace("4/","비/눈/").replace("5/","눈/");
        reviewinfo.setWalk_weatherinfo(weatherinfo_replace);
		
		System.out.println("강아지 체형 : " + reviewinfo.getWalk_bodytype());
		
		 int hits = reviewinfo.getWalk_hits();
		 hits++;
		 
		 // 글조회수 				
		int reviewhits = bdao.updatereviewhits(walk_code,hits);
		System.out.println("조회수 : "+reviewhits); 			 

		CommendDto reviewcommend = bdao.getloginsel(walk_code,member_id);
		
		System.out.println("회원의 추천 유무 : " + reviewcommend);
		
		
		
		
		
		mav.addObject("reviewinfo",reviewinfo);
		mav.addObject("reviewcommend",reviewcommend);
		
		
		mav.setViewName("Review/ReviewView");
		return mav;
	}




	// 좋아요,실어요 적용
	public String reviewCommend(String walk_code, int commend, String member_id) {
		System.out.println("좋아요/싫어요 적용(service)");
		
		String result = "";
		
		System.out.println("해당 게시물 : " + walk_code);
		
		System.out.println("추천 누른 아이디 : " + member_id);
		
		CommendDto loginsel = bdao.getloginsel(walk_code,member_id);
		
		System.out.println("해당 아이디 유무 : " + loginsel);
		
		if(loginsel == null) {
			
			bdao.getinsertLogin(member_id,walk_code,commend);// 추천 테이블 insert
			int reviewCommend =	bdao.updateReviewCommend(walk_code,commend); // 게시글 update	
			result = "OK";
			
		} else {
			
			result = "NO";
			
			if(loginsel.getCommend() == commend) { // 해당 아이디 검색 결과 추천/비추천 여부가 같으면 
				
				result = "NO";
				
			} else { // 해당 아이디 검색 결과 추천/비추천 여부가 다르면 
				
				bdao.updateCommend(member_id,walk_code,commend);//추천 테이블 업데이트
				
				bdao.updateModifyReviewCommend(walk_code,commend);//게시글 기존 추천/비추천 리셋 후 추천/비추천 UPDATE
				result = "UPDATE";
			}

			
		}
		
		
			
					
		
		
		return result;
	}



	// 신고 기능
	public String reviewReport(String code, String member_id) {
		System.out.println("신고 기능 service");
		System.out.println("코드 : " + code);
		System.out.println("아이디 : " + member_id);
		String result = "";
		
		ReportDto reprot = bdao.reportresult(code,member_id);
		
		if(reprot == null) {
			
			bdao.Reportinsert(code,member_id);
			int reviewReport = bdao.updateReviewReportState(code);
			result = "OK";
			
		} else { 
			
			result = "NO";
			
		}
		
		
		
		
		return result;
	}




	// 댓글 작성
	public String reviewComment(String recomment_boardcode, String recomment_writer, String recomment_content) {
		
		String result = "";
		System.out.println("댓글 작성 service");
		
		System.out.println("해당글 작성 코드 : " + recomment_boardcode);
		
		System.out.println("댓글 작성자 : " + recomment_writer);
		
		System.out.println("댓글 내용 : " + recomment_content);
		
		RecommentDto recommentList = new RecommentDto();
		
		recommentList.setRecomment_boardcode(recomment_boardcode);
		recommentList.setRecomment_writer(recomment_writer);
		recommentList.setRecomment_content(recomment_content);
		
		
		// 코드 생성 
		String rccode = "RC"; 
		// 코드 생성 (select)
		String Maxrccode = bdao.getMaxRcode();
		
		System.out.println("코드 : " + Maxrccode);
		
		if(Maxrccode == null) { 
			
			rccode = rccode + "001"; 
			
		} else {
			
			Maxrccode = Maxrccode.substring(2); 
			int codenum = Integer.parseInt(Maxrccode) + 1;			
			if(codenum < 10) { 
				rccode = rccode + "00" + codenum; 
			} else if(codenum < 100 ) {
				
				rccode = rccode + "0" + codenum;  
				
			} else {
				rccode = rccode + codenum; 
			}
		} 
		
		recommentList.setRecomment_code(rccode); 
		
		System.out.println("코드 완성 : " + rccode);
		
		//회원 프로필 검색
		MembersDto midprofile = bdao.selectmidprofile(recomment_writer);
		
		System.out.println(midprofile);
		
		System.out.println("해당 회원 프로필 : " + midprofile.getMember_profile());
		
		recommentList.setRecomment_profile(midprofile.getMember_profile());
		
		System.out.println("댓글 정보 : " + recommentList);
		
		int  comment = bdao.insertComment(recommentList); 
		
		if(comment == 1){
			
			result = "OK";
		}
				
		
		return result;
	}




	// 댓글 목록 
	public String reviewCommentList(String recomment_boardcode) {
		System.out.println("댓글 목록 service");
		
		System.out.println(recomment_boardcode);
		
		Gson gson = new Gson();
						
		ArrayList<RecommentDto> commentList = bdao.selectcommentList(recomment_boardcode);
		
		System.out.println("해당 게시글 댓긇 목록 : " + commentList);
		
		String commentList_gson = gson.toJson(commentList);
		
		
		return commentList_gson;
	}




	// 댓글 신고
	public String reviewCommentReport(String boardcode, String member_id, String code) {
		System.out.println("댓글 신고 Service");
		String result = "";
		
	ReportDto comment = bdao.Commentreportselect(boardcode,code,member_id);
		
		if(comment == null) {
			
			bdao.commentReportinsert(boardcode,member_id,code);
			int reviewReport = bdao.updateCommentReport(code,boardcode);
			result = "OK";
			
		} else { 
			
			result = "NO";
			
		}
		
		
		return result;
	}




	// 댓글 수정
	public String reviewCommentModify(String recomment_boardcode, String recomment_code, String recomment_content) {
		System.out.println("댓글 수정 Service");
		
		String result = "";
		
		bdao.updateCommentModify(recomment_boardcode,recomment_code,recomment_content);
		result = "OK";
		
		return result;
	}




	// 댓글 삭제
	public String reviewCommentState(String recomment_boardcode, String recomment_code) {
		System.out.println("댓글 삭제 Service");
		
		String result = "";
		
		bdao.updateCommentState(recomment_boardcode,recomment_code);
		
		result = "OK";
		return result;
	}




	// 수정 상세페이지 이동
	public ModelAndView reviewModifyPage(String walk_code , String walk_mid) {
		System.out.println("수정 상세페이지 이동 Service");

		 ModelAndView mav = new ModelAndView();
		
		 System.out.println("수정 코드 : " + walk_code);
		 
		WalkboardDto walkinfo = bdao.walkinfoselect(walk_code,walk_mid);
		
		
		
		System.out.println("수정 할 글 : " + walkinfo);		
			
		String weatherinfo_replace = walkinfo.getWalk_weatherinfo().replace("0/","맑음/").replace("1/","구름많음/").replace("2/","흐림/").replace("3/","비/").replace("4/","비/눈/").replace("5/","눈/");
        walkinfo.setWalk_weatherinfo(weatherinfo_replace);
        
		String bodytype_replace = walkinfo.getWalk_bodytype().replace("0010","소형견").replace("1025", "중형견").replace("2580","대형견");
		
		walkinfo.setWalk_bodytype(bodytype_replace);
		
		System.out.println("강아지 체형 : "  + walkinfo.getWalk_bodytype());
		
		System.out.println("출발 일시 : " + walkinfo.getWalk_time());
		
		mav.addObject("selectreview", walkinfo);
		mav.setViewName("Review/ReviewModify");
		
		return mav;
	}

	// 상세페이지 수정 
	public ModelAndView reviewModify(WalkboardDto reviewboard, String member_id, RedirectAttributes ra) {
		System.out.println("수정 상세페이지 수정 Service");
		
		ModelAndView mav = new ModelAndView();
				
		System.out.println("수정한 값 : " + reviewboard);
		
		String walk_code = reviewboard.getWalk_code();
		
		System.out.println("수정 코드 : " + walk_code);
		
		int walk_hits = reviewboard.getWalk_hits();
		
		System.out.println("수정 조회수 : " + walk_hits);
		
		bdao.updateReviewInfo(reviewboard);
		ra.addFlashAttribute("msg123");
		
		mav.addObject("walk_code", walk_code);
		mav.addObject("walk_hits", walk_hits);
		mav.addObject("member_id", member_id);
		
		mav.setViewName("redirect:/reviewPage");
		
		return mav;
	}




	
	// 게시물 삭제
	public ModelAndView reviewDelState(String walk_code, RedirectAttributes ra) {
		System.out.println("상세페이지 삭제 Service");
		
		ModelAndView mav = new ModelAndView();
		
		bdao.updateReviewState(walk_code);
				
		ra.addFlashAttribute("msg1","게시물 작성 완료");
		mav.setViewName("redirect:/reviewListPage");
		
		return mav;
	}




	// 내 산책 목록 이동
	public ModelAndView mywalkList(String walk_mid) {
		System.out.println("내 산책 목록 이동(Service)");
		
		ModelAndView mav = new ModelAndView();
					
				
		ArrayList<WalkboardDto> mywalkList = bdao.mywalkListSelect(walk_mid);
		

		
		for(int i = 0; i < mywalkList.size(); i++) {
			String startaddr = mywalkList.get(i).getWalk_startaddr();
			String content_startaddr = startaddr.replace("출발지:", " ");
			mywalkList.get(i).setWalk_startaddr(content_startaddr);
		}
		
		for(int i = 0; i < mywalkList.size(); i++) {
			String code = mywalkList.get(i).getWalk_code();
			int count = bdao.rbcheckcount(code,walk_mid);
			
			System.out.println(count);
			
			mywalkList.get(i).setCheckcode(count);
			
		}
		
		mav.addObject("mywalkList", mywalkList);	
		mav.setViewName("Review/mywalkList");
		
		
		return mav;
	}
	
	
	  // 검색 기능 
	public String mywalkSearchList(String searchType, String searchWord) { 
		System.out.println("InfoListService.reviewSearchList() 호출"); 
		Gson gson = new Gson();
	  
	  //검색 조회 
		ArrayList<WalkboardDto> myListSearchList = bdao.myListSearchList(searchType,searchWord);
	  
		System.out.println("검색 조회 결과 : " + myListSearchList);
		
	  for(int i = 0; i < myListSearchList.size(); i++) {
	  
			String startaddr = myListSearchList.get(i).getWalk_startaddr();
			String content_startaddr = startaddr.replace("출발지:", " ");
			myListSearchList.get(i).setWalk_startaddr(content_startaddr);
	 	    
	  }
	  
	  
	  String myListSearchList_gson = gson.toJson(myListSearchList);
	  
	  return myListSearchList_gson; 
	  
	  }




	// 후기 작성 페이지 이동
	public ModelAndView reviewWritePage(String walk_code, String walk_mid) {
		System.out.println("후기 작성 페이지 이동");
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("작성 코드 : " + walk_code);
		
		System.out.println("작성 회원 : " + walk_mid);
		
		WalkboardDto walkinfo = bdao.walkinfoselect(walk_code,walk_mid);
	
		
		String bodytype_replace = walkinfo.getWalk_bodytype().replace("0010","소형견").replace("1025", "중형견").replace("2580","대형견");
		
		System.out.println("강아지 체형 : " + bodytype_replace);
		
		String weatherinfo_replace = walkinfo.getWalk_weatherinfo().replace("0/","맑음/").replace("1/","구름많음/").replace("2/","흐림/").replace("3/","비/").replace("4/","비/눈/").replace("5/","눈/");
        walkinfo.setWalk_weatherinfo(weatherinfo_replace);
		
		walkinfo.setWalk_bodytype(bodytype_replace);
		System.out.println("작성글 : " + walkinfo);
		System.out.println(walkinfo.getWalk_map());
		
		mav.addObject("walkinfo", walkinfo);	
		mav.setViewName("Review/ReviewWrite");
		
		
		return mav;
	}
	 




		
	

}
