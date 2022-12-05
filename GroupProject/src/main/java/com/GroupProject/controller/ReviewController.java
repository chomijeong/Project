package com.GroupProject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.GroupProject.dto.WalkboardDto;

import com.GroupProject.service.ReviewService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;


@Controller
public class ReviewController {

	@Autowired
	private HttpServletRequest request;
	
	private ModelAndView mav;
	
	@Autowired 
	private HttpSession session;
	
	
	@Autowired
	private ReviewService bsv;


	
	
	@RequestMapping(value = "/fileupload.do", produces = "application/text; charset=utf-8")
	public @ResponseBody String ckEditor_imgUpload(MultipartFile upload) throws IllegalStateException, IOException {
		
		
		System.out.println("ckEditor_imgUpload 호출");
		UUID uuid = UUID.randomUUID();
		String savePath = request.getRealPath("resources/ckUploadImg/");
		System.out.println(savePath);
		String uploadImgName = uuid.toString()+"_"+upload.getOriginalFilename();
		upload.transferTo( new File(savePath, uploadImgName) );
		System.out.println(savePath);
		
		
		String imgPath = "http://localhost:"+request.getLocalPort()+request.getContextPath()
		                + "/resources/ckUploadImg/" + uploadImgName;
		System.out.println("imgPath : " + imgPath);
		Gson gson = new Gson();
		JsonObject jobj = new JsonObject();
		jobj.addProperty("uploaded", true);
		jobj.addProperty("url", imgPath);
		String uploadResult =  gson.toJson(jobj);
		
		return uploadResult;
	}
		
	
	
	
	// 임시 로그인
			@RequestMapping(value = "/LOGIN")
			public ModelAndView LOGIN(RedirectAttributes ra) {
				
				System.out.println("임시 로그인");
				mav = bsv.LOGIN(ra);
						
				return mav;
			}
	
	
	// 후기 산책 목록 이동
		@RequestMapping(value = "/reviewListPage")
		public ModelAndView reviewListPage(RedirectAttributes ra) {
			
			System.out.println("후기 산책 목록 이동");
			
			String searchId = (String)(session.getAttribute("loginId"));
			
			mav = bsv.reviewListPage(searchId,ra);
					
			return mav;
		}
		
		
		// 후기 산책 작성 페이지 이동
		
		@RequestMapping(value = "/reviewWritePage")
		public ModelAndView WalkWrite(String walk_code,String walk_mid) {
					
			String mid = (String)(session.getAttribute("loginId"));
					
			mav = bsv.reviewWritePage(walk_code,walk_mid);
					
			System.out.println("후기 산책 작성 페이지 이동");
							
			return mav;
		}
	
	
	  // 후기 게시판 작성	  
	  @RequestMapping(value = "/reviewWrite") 
	  public ModelAndView reviewWrite(WalkboardDto WalkboardDto,RedirectAttributes ra,String walk_mid)  {
	 
	  System.out.println("후기 게시판 작성");
	  
	  System.out.println("작성 정보 : " + WalkboardDto);
	  
	  mav = bsv.reviewWrite(WalkboardDto,ra,walk_mid);
	  
	  return mav;
	  
	  }
	  
	  // 후기 상세 페이지 이동
	  
	  @RequestMapping(value = "/reviewPage")
		public ModelAndView reviewPage(String walk_code, int walk_hits,String member_id) {
			
			System.out.println("후기 산책 작성 페이지 이동");
			
			mav = bsv.reviewPage(walk_code,walk_hits,member_id);
					
			return mav;
		}
	  
		
		
		
				
		// 페이징 
		@RequestMapping(value="/ReviewListPaging")
		public @ResponseBody String ReviewListPaging(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "searchType", defaultValue = "") String searchType,
		@RequestParam(value = "searchWord", defaultValue = "") String searchWord,@RequestParam(value = "searchAddr", defaultValue = "") String searchAddr) {		
			System.out.println("ajax 페이징");
			
			
			String ReviewPaging = bsv.ReviewListPaging(page,searchType,searchWord,searchAddr);
			
			return ReviewPaging;
			
		}
		
		
		  // 좋아오,싫어요 적용		  
		  @RequestMapping(value = "/reviewCommend")
			public @ResponseBody String reviewCommend(@RequestParam("walk_code") String walk_code, @RequestParam("commend") int commend , @RequestParam("member_id") String member_id) {
				
				System.out.println("좋아오,싫어요 적용");
				
				String reviewCommend = bsv.reviewCommend(walk_code,commend,member_id);
						
				return reviewCommend;
		}
		
		  // 신고 기능		  
		  @RequestMapping(value = "/reviewReport")
			public @ResponseBody String reviewReport(String code,String member_id) {
				
				System.out.println("신고 적용");
				
				String reviewReport = bsv.reviewReport(code,member_id);
						
				return reviewReport;
		  }
		  
		    
		  
		  // 댓글 작성		  
		  @RequestMapping(value = "/reviewComment")
			public @ResponseBody String reviewComment(String recomment_boardcode,String recomment_writer,String recomment_content) {
				
				System.out.println("댓글 작성");
				
				String reviewComment = bsv.reviewComment(recomment_boardcode,recomment_writer,recomment_content);
						
				return reviewComment;
		  }
		  
		  
		  // 댓글 목록 
		  @RequestMapping(value = "/reviewCommentList")
			public @ResponseBody String reviewCommentList(String recomment_boardcode) {
				
				System.out.println("댓글 목록");
				
				String reviewCommentList = bsv.reviewCommentList(recomment_boardcode);
						
				return reviewCommentList;
		  }
		  
		  // 댓글 신고 
		  @RequestMapping(value = "/reviewCommentReport")
			public @ResponseBody String reviewCommentReport(String boardcode,String member_id,String code) {
				
				System.out.println("댓글 신고");
				
				String reviewCommentReport = bsv.reviewCommentReport(boardcode,member_id,code);
						
				return reviewCommentReport;
		  }
		  
		  // 댓글 수정 
		  @RequestMapping(value = "/reviewCommentModify")
			public @ResponseBody String reviewCommentModify(String recomment_boardcode,String recomment_code,String recomment_content) {
				
				System.out.println("댓글 수정");
				
				String reviewCommentModify = bsv.reviewCommentModify(recomment_boardcode,recomment_code,recomment_content);
						
				return reviewCommentModify;
		  }
		  
		  
		  // 댓글 삭제 
		  @RequestMapping(value = "/reviewCommentState")
			public @ResponseBody String reviewCommentState(String recomment_boardcode,String recomment_code ) {
				
				System.out.println("댓글 삭제");
				
				String reviewCommentState = bsv.reviewCommentState(recomment_boardcode,recomment_code);
						
				return reviewCommentState;
		  }
		  
		  // 상세수정 페이지 이동 
	  
		  @RequestMapping(value = "/reviewModifyPage")
			public ModelAndView reviewModifyPage(String walk_code , String walk_mid) {
				
				System.out.println("상세페이지 수정");
				
				mav = bsv.reviewModifyPage(walk_code,walk_mid);
						
				return mav;
			}
		  
		  // 상세수정 처리 		  
		  @RequestMapping(value = "/reviewModify")
			public ModelAndView reviewModify(WalkboardDto reviewboard,RedirectAttributes ra,String member_id) {
				
				System.out.println("상세페이지 수정");
				
				mav = bsv.reviewModify(reviewboard,member_id,ra);
						
				return mav;
			}
		  
		  
		  
		  // 상세수정 처리 		  
		  @RequestMapping(value = "/reviewDelState")
			public ModelAndView reviewDelState(String walk_code,RedirectAttributes ra) {
				
				System.out.println("게시물 삭제");
				
				mav = bsv.reviewDelState(walk_code,ra);
						
				return mav;
			}
		  
		  // 내 산책 목록 이동 		  
		  @RequestMapping(value = "/mywalkList")
			public ModelAndView mywalkList(String walk_mid) {
							  				  
				System.out.println("내 산책 목록 이동");				
				System.out.println("회원 아이디 : " + walk_mid);
				
				mav = bsv.mywalkList(walk_mid);
						
				return mav;
			}
		  
		  
		  // 검색 기능
		  
			 @RequestMapping(value="/mywalkSearchList") public @ResponseBody String reviewSearchList(String searchType, String searchWord) {
			System.out.println("글 검색 요청");
			
			 System.out.println("searchType : " + searchType);
			System.out.println("searchWord : " + searchWord);
			  
			  String mywalkSearchList = bsv.mywalkSearchList(searchType,searchWord);
			  
			  return mywalkSearchList;
			  
			  }
		  
		  
		  
	
}
