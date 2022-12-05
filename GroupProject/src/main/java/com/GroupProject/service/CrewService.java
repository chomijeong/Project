package com.GroupProject.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dao.CrewDao;
import com.GroupProject.dao.ReviewDao;
import com.GroupProject.dao.WalkDao;
import com.GroupProject.dto.CommendDto;
import com.GroupProject.dto.CrewDto;
import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;
import com.google.gson.Gson;

@Service
public class CrewService {
	@Autowired
	HttpSession session;
	
	private ModelAndView mav;
	
	@Autowired
	private CrewDao crdao;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private WalkDao wkdao;
	@Autowired
	private WalkService wksvc;
	@Autowired
	private ReviewDao bdao;
		

	//저장경로 설정
	private String savePath="C:\\Users\\user\\Spring\\GroupProject4\\src\\main\\webapp\\resources\\fileUpload";	
	
	//크루생성페이지 이동요청 
	public ModelAndView crewWritePage(RedirectAttributes ra) {
		System.out.println("서비스>> 크루생성 페이지 이동" );
		mav = new ModelAndView();
		String searchId = (String)(session.getAttribute("loginId"));		
		//사용자 아이디값 매개변수로 MembersDto객체로 리턴됩니다.
		
		if(searchId != null) {
			MembersDto MembersDto = crewMembersDogWC(searchId);
			if (MembersDto.getDogsWeightCode().equals("----/----/----")) {
				ra.addFlashAttribute("msg","등록된강아지가 없어 이용이 제한됩니다.");
				mav.setViewName("redirect:/");
			}else {
				mav.addObject("memberInfo",MembersDto);	
				mav.setViewName("crew/CrewWrite");
			}						
		}else {
			ra.addFlashAttribute("msg","로그인 후 이용해주세요.");
			mav.setViewName("redirect:/");
		}
	return mav;
	}
	
	
	//주인이 맴버아이디인 강아지들의 무게를 코드로 만들어 맴버객체에 저장해 반환합니다.(필드값 추가 dogsWeightCode)
		private MembersDto crewMembersDogWC(String searchId) {
			System.out.println("서비스>> 회원의 강아지 무게코드 만들기 실행");

			ArrayList<DogInfoDto> dogsWeight= wkdao.selectMembersDogWeight(searchId);
			
			String dogsWS="----";
			String dogsWM="----";
			String dogsWL="----";
			for(int i = 0; i<dogsWeight.size(); i++) {
				
				if (dogsWeight.get(i).getDog_weight()<10.0) {
					dogsWS="0010";
				}else if(dogsWeight.get(i).getDog_weight()>=10.0 && dogsWeight.get(i).getDog_weight()<25.0) {
					dogsWM="1025";
				}else {
					dogsWL="2580";
				}
			}
			
			MembersDto memberInfo = wkdao.selectMembersInfo(searchId);
			
			memberInfo.setDogsWeightCode(dogsWS+"/"+dogsWM+"/"+dogsWL);
			return memberInfo;
		}

		//크루생성요청
		public ModelAndView crewWrite(CrewDto crewInfo, RedirectAttributes ra)throws IllegalStateException, IOException {
			System.out.println("서비스>>크루생성 시작" );
			
			mav = new ModelAndView();
			
			//넘어온 파일 저장하기
			MultipartFile mfile = crewInfo.getCrew_file();
			String mprofile = "";
			
			//파일저장 파일이름
			System.out.println(">>>"+ mfile.isEmpty() );
			if(!mfile.isEmpty()) {
				
				System.out.println(">>>첨부파일 있음");
				UUID uuid = UUID.randomUUID();
				
				//파일명 생성
				mprofile = uuid.toString()+"_"+mfile.getOriginalFilename();
				
				//프로필 이미지 파일 저장
				mfile.transferTo( new File(savePath, mprofile) );
				
			}
			
			System.out.println(">>>mprofile: " + mprofile);
			//프로필 경로,이름 저장
			crewInfo.setCrew_profile(mprofile);
			
			
			//크루 코드 만들기 
			//기존 크루중 최신 크루코드 가져오기
			String MaxCrewCode = crdao.selectMaxCrewCode();
			System.out.println(">>>MAXCODE:"+MaxCrewCode);
			int MaxCrewCodeNum=0; 
			
			if(MaxCrewCode ==null) {
				MaxCrewCode = "CR001";
			}else if(MaxCrewCode !=null){
				
				MaxCrewCodeNum=Integer.parseInt(MaxCrewCode.substring(2,5))+1;
				System.out.println(">>>생성된 크루숫자:"+MaxCrewCodeNum);
				if(MaxCrewCodeNum<10) {
					MaxCrewCode="CR00"+MaxCrewCodeNum;
				}else if(MaxCrewCodeNum<100) {
					MaxCrewCode="CR0"+MaxCrewCodeNum;
				}else if(MaxCrewCodeNum<1000) {
					MaxCrewCode="CR"+MaxCrewCodeNum;
				}
			}
			//생성된 크루코드 저장
			crewInfo.setCrew_code(MaxCrewCode);
			
			//크루장 저장
			String searchId = (String)(session.getAttribute("loginId"));
			crewInfo.setCrew_master(searchId);
			//생성요청자 지역검색
			String memberAddr = wkdao.selectMemberLocalAddr(searchId);
			memberAddr = memberAddr.split(" ")[0];
			System.out.println(">>>생성요청자 지역:"+memberAddr);
			//생성요청자 지역 크루지역으로 저장
			crewInfo.setCrew_region(memberAddr);
			
			//크루 정보 insert하기
			int result = crdao.insertCrewInfo(crewInfo);
			//회원의 크루정보에 크루코드 INSERT하기			
			String crewCode = crewInfo.getCrew_code();
			int resultMember = crdao.updateMemberCrewcode(searchId,crewCode);
			if (result>0 && resultMember>0) {
				ra.addFlashAttribute("msg","크루생성이 완료되었습니다");
				mav.setViewName("redirect:/");
			}
			
			return mav;
		}

		//크루 광고 목록 페이지 이동
		public ModelAndView crewListPage(String searchId, RedirectAttributes ra) {
			System.out.println("서비스>>크루광고 목록페이지 이동" );	
			mav = new ModelAndView();
			//회원의 지역 검색 
			String memberaddr = crdao.selectMemberAddr(searchId); 
			String searchAddr = memberaddr.split(" ")[0];
			System.out.println(">>>회원지역:"+searchAddr);
			//회원의 지역에 맞는 크루 정보검색
			ArrayList<CrewDto> crDtoList = crdao.selectCrewList(searchAddr);
			System.out.println(">>>crewList로 줄 값:"+crDtoList);
			
			mav.addObject("memberAddr",searchAddr);
			mav.addObject("crewArrayList",crDtoList);
			mav.setViewName("crew/CrewList");
			return mav;
		}

		//크루 광고 목록 페이징
		public String crewPaging(int page, String searchType, String searchWord, String searchAddr) {
			System.out.println("서비스>>크루광고 목록페이징 page:" +page+" /searchType:"+searchType+" /searchWord:"+searchWord+" /searchAddr:"+searchAddr);
			Gson gson = new Gson();
			//디폴드값을 받아오므로 바로 page를 사용할 수 있습니다.
			System.out.println(">>>페이지 번호 : " + page);
			
			//전체or검색결과 글 개수를 담을 변수를 선언합니다.
			int boardTotalCount =0;
			
			if(searchAddr.equals("전체지역")) {
				searchAddr="";
			}
			System.out.println(">>>searchAddr:"+searchAddr);
			
			boardTotalCount = crdao.selectCrewSearchListCount(searchType,searchWord,searchAddr);
			System.out.println(">>>검색결과 글 개수를 가져옵니다 : " + boardTotalCount);
			
			//한 페이지에 보여줄 글 갯수 
			int onePageHowManyBoards  = 4;
			
			// 한 페이지에 보여줄 페이지 번호 개수
			int pagingNumCutCount = 3;
			 
			
			// 한 페이지 의 시작 게시글번호			
			int startCutNum  = (page - 1) * onePageHowManyBoards  + 1;
			System.out.println(">>>한 페이지의 시작게시글 번호 : " + startCutNum );
			
			// 한 페이지 의 끝 게시글번호
			int endCutNum  = page * onePageHowManyBoards ;
			System.out.println(">>>한 페이지의 끝게시글 번호 : " + endCutNum );
	
			
			
			  System.out.println(">>>boardTotalCount:"+boardTotalCount); 
			  // ceil = 소수점 반올림 // maxPage = 전체페이지 번호 , 진짜 마지막 페이지 개수 
			  int maxPage = (int)( Math.ceil(
			  (double)boardTotalCount/onePageHowManyBoards) );
			  
			  // 첫번째 페이지 번호 
			  int startPage = (int) (( Math.ceil( (double)
			  page/pagingNumCutCount )) -1) * pagingNumCutCount + 1;
			  
			  // 마지막 페이지 번호 
			  int endPage = startPage + pagingNumCutCount -1;
			 
			
			
			  if(endPage > maxPage) {
			  
			  endPage = maxPage;
			  
			  }
			
			
			
			  System.out.println(">>>첫번째 페이지 번호 : " + startPage);
			  System.out.println(">>>마지막 페이지 번호 : " + endPage);
			
			
			ArrayList<CrewDto> crewPagingList = new ArrayList<CrewDto>();
			
			System.out.println(">>>검색조건:"+"시작:"+startCutNum +"/끝:"+endCutNum +"/타입:"+searchType+"/단어:"+searchWord+"/장소:"+searchAddr);
			crewPagingList = crdao.selectCrewSearchPagingList(startCutNum ,endCutNum ,searchType,searchWord,searchAddr);
			System.out.println(">>>시작,끝번호와 검색어로 검색 후 : "+crewPagingList);


			for(int i = 0; i<crewPagingList.size(); i++) {
				crewPagingList.get(i).setPage(page);
				crewPagingList.get(i).setStartPage(startPage);
				crewPagingList.get(i).setEndPage(endPage);
			}
			System.out.println(">>>"+page+"/"+startPage+"/"+endPage);
			
			
			String boardPagingList_gson = gson.toJson(crewPagingList);
			
			return boardPagingList_gson;
		}

		//크루
		public ModelAndView crewJoin(String searchId, String crewCode, RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("서비스>>크루멤버가입" );
			
			//강아지 무게제한 체크
			//전에 만들어놓은거 재활용하여 회원의 강아지코드를 가져온다.
			 MembersDto memberDogCode = crewMembersDogWC(searchId);
			 System.out.println(">>>회원의 강아지무게코드:"+memberDogCode.getDogsWeightCode());
			//크루의 강아지코드를 가져온다.
			 String crewDogCode = crdao.selectCrewDogCode(crewCode);		
			 System.out.println(">>>크루의 강아지무게코드:"+crewDogCode);
			//크루강아지 코드를 배열에 저장 한 후 ---- 에 해당하는 부분이 같은 위치에 있는 회원의 코드와 일치하지 않으면 제한처리한다.
			String weightRow[] = memberDogCode.getDogsWeightCode().split("/");
			String crewWeightRow[]=crewDogCode.split("/");
			String checkResult="OK";
			
			//제한걸린 부분(----)과 회원정보가 (----) 같아야 가입 할 수 있다.
			for(int i =0; i<3; i++) {
				if(crewWeightRow[i].equals("----") && !weightRow[i].equals("----")) {
					checkResult="강아지 무게제한으로 가입할 수 없습니다.";
					System.out.println(">>>"+checkResult);
				}
			}
			
			//회원정보 강아지 데이터가 없다면 가입할 수 없다.
			if(memberDogCode.getDogsWeightCode().equals("----/----/----")) {
				checkResult="등록된 강아지가 없어서 가입이 제한됩니다.";
				System.out.println(">>>"+checkResult);
			}
			
			if(checkResult.equals("OK")) {
				
				int updateResult = crdao.updateMemberCrewcode(searchId, crewCode);
				if(updateResult>0) {
					ra.addFlashAttribute("msg","가입 되었습니다.");
					session.setAttribute("crewCode", crewCode);
					mav.setViewName("redirect:/crewListPage");
				}
			}else if(!checkResult.equals("OK")) {
				ra.addFlashAttribute("msg",checkResult);
				mav.setViewName("redirect:/crewListPage");
			}
			return mav;
		}




		public String crewInfo(String crewCode) {
			System.out.println("서비스>>크루정보 가져오기" );
			Gson gson = new Gson();

			CrewDto crewInfo = crdao.selectCrewInfo(crewCode);
			String boardPagingList_gson = gson.toJson(crewInfo);
			
			return boardPagingList_gson;
		}

		//크루메인페이지 서비스
		public ModelAndView crewMainPage( String searchCrewCode, RedirectAttributes ra) {
			System.out.println("서비스>>크루메인 페이지 이동" );
			mav = new ModelAndView();
			//크루가 정지중인지 확인할것
			CrewDto crewInfo = crdao.selectCrewInfo(searchCrewCode);
			if(crewInfo.getCrew_state()==1) {
				ArrayList<MembersDto> crewMemberList = crdao.selectCrewMemberList(searchCrewCode);
				mav.addObject("crewMemberList",crewMemberList);
				mav.addObject("crewInfo",crewInfo);
				mav.setViewName("crew/CrewMain");
			
			}else {
				ra.addFlashAttribute("msg","삭제된 크루입니다.");
				mav.setViewName("redirect:/");
			}
			return mav;
		}

		//크루 정보 수정
		public String crewInfoModify(CrewDto crewInfo) throws IllegalStateException, IOException {
			System.out.println("서비스>>크루정보 수정" );
			String mprofile = "";
			//넘어온 파일이 있다면, 이전파일을 삭제해야겠죠
			//파일이름을 가져와 삭제를 해봅시다. 
			//크루프로필 사진 이름을 가져옵니다.
			CrewDto beforeCrew = crdao.selectCrewInfo(crewInfo.getCrew_code());
			String beforeProfileName= beforeCrew.getCrew_profile();
			//이제 준비가 끝났습니다. 수정 업로드에 성공하면 삭제해주도록 합니다.
			
			//넘어온 파일 저장하기
			if(crewInfo.getCheckFile().equals("in")) {
				
				
				
				MultipartFile mfile = crewInfo.getCrew_file();

				//파일저장 파일이름
				System.out.println( mfile.isEmpty() );
				if(!mfile.isEmpty()) {
					
					System.out.println(">>>첨부파일 있음");
					UUID uuid = UUID.randomUUID();
					
					//파일명 생성
					mprofile = uuid.toString()+"_"+mfile.getOriginalFilename();
					
					//프로필 이미지 파일 저장
					mfile.transferTo( new File(savePath, mprofile) );
					
					
					
				}
			}
			if(crewInfo.getCrew_introduce() == null) {
				
				crewInfo.setCrew_introduce("");
			}
			
			System.out.println(">>>mprofile: " + mprofile);
			//프로필 경로,이름 저장
			crewInfo.setCrew_profile(mprofile);
			
			
			
			String ajaxResult="";
			System.out.println(">>>업데이트 전 정보확인:"+crewInfo);
			int result = crdao.updateCrewInfo(crewInfo);
			
			if(result>0) {
				if(crewInfo.getCheckFile().equals("in")) {
					//파일을 바꿨다면 이전파일을 삭제해주도록 합니다.
					File delfile = new File(savePath, beforeProfileName);
					delfile.delete();
				}
				
				ajaxResult="OK";
			}else {
				ajaxResult="NO";
			}
			
			
			
			return ajaxResult;
		}


		//크루멤버탈퇴
		public ModelAndView crewLeave(String leaveId, String searchId, RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("서비스>>크루멤버 탈퇴" );
			
			int updateResult = crdao.updateMemberDelCrewCode(leaveId);
			if(updateResult>0) {
				if(leaveId.equals(searchId)) {
					
					//당사자일 시 세션값 삭제
					session.removeAttribute("crewCode");
					ra.addFlashAttribute("msg","크루에서 탈퇴하셨습니다.");
					mav.setViewName("redirect:/");
				}else {
					ra.addFlashAttribute("msg","해당 회원이 강퇴 되었습니다.");
					mav.setViewName("redirect:/crewMainPage");
				}
			}
			return mav;
		}


		public ModelAndView crewDelState(String searchId, String searchCrewCode, RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("서비스>>크루 삭제" );
			//크루State값 변환
			 int updateResult = crdao.updateCrewDelState(searchCrewCode);
			//크루맴버들 크루코드 삭제
			if(updateResult>0) {
				
				int result= crdao.updateMemberDelCrewcode(searchCrewCode); 
				 } 
			//세션값 삭제
			session.removeAttribute("crewCode");
			ra.addFlashAttribute("msg","크루를 삭제하였습니다");
			mav.setViewName("redirect:/");
			return mav;
		}


		public String crewMemberDogList(String memberId) {
			System.out.println("서비스>>크루 멤버 강아지 정보" );
			Gson gson = new Gson();

			ArrayList<DogInfoDto> crewInfo = crdao.selectCrewDogList(memberId);
			String memberDogList_gson = gson.toJson(crewInfo);
			
			return memberDogList_gson;
		}


		public ModelAndView crewMaster(String memberId, String searchCrewCode, RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("서비스>>크루장 권한 위임" );
			int updateResult= crdao.updateCresMaster(memberId,searchCrewCode);
			
			if(updateResult>0) {
				ra.addFlashAttribute("msg","크루장을 위임하였습니다");
				mav.setViewName("redirect:/crewMainPage");
			}else {
				ra.addFlashAttribute("msg","크루장 위임에 실패하였습니다.");
				mav.setViewName("redirect:/crewMainPage");
			}
			
			return mav;
		}

		//크루산책글작성페이지 이동요청
		public ModelAndView crewWalkWitePage(String searchId, String searchCrewCode, RedirectAttributes ra) {
			mav = new ModelAndView();
			System.out.println("서비스>>크루산책 글작성 페이지" );
			
			MembersDto MembersDto = crewDogWC(searchId,searchCrewCode);
			mav.addObject("memberInfo",MembersDto);
			mav.setViewName("crew/CrewWalkWrite");
			
			return mav;
		}

		//크루 강아지 무게제한 코드와 맴버의 나머지정보를 맴버객체에 담아 활용합니다.
		private MembersDto crewDogWC(String searchId, String searchCrewCode) {
			System.out.println("서비스>>크루멤버 강아지무게코드+멤버정보" );
			String dogsWeightCode= crdao.selectCrewDogWeight(searchCrewCode);
			
			
			MembersDto memberInfo = wkdao.selectMembersInfo(searchId);
			
			memberInfo.setDogsWeightCode(dogsWeightCode);
			
			return memberInfo;
		}


		public ModelAndView crewWalkWrite(WalkboardDto walkboard, RedirectAttributes ra) {
			System.out.println("서비스>>크루산책 글등록");
			
			mav =new ModelAndView();
			String maxCrewWalkCode = crdao.selectMaxCrewWalkCode();

			System.out.println(">>>selectMaxCrewWalkCode실행됨: "+ maxCrewWalkCode);
			
			int codeNum = Integer.parseInt(maxCrewWalkCode.substring(2,5));
			
			
			codeNum+=1;
			String walkCode="";
			
			if(maxCrewWalkCode.equals("CB000")) {
			
				walkCode = "CB001";
			}else {
							
				if(codeNum<10) {
					walkCode = "CB00"+codeNum;			
				}else if(codeNum<100) {
					walkCode = "CB0"+codeNum;
				}else if(codeNum<100) {
					walkCode = "CB"+codeNum;
				}
			}
			
			
			walkboard.setWalk_code(walkCode);
			System.out.println(">>>walkboard :"+walkboard);
			String searchCrewCode = (String)(session.getAttribute("crewCode"));
			walkboard.setWalk_crewcode(searchCrewCode);
			walkboard.setWalk_mid(walkboard.getWalk_writer());
			System.out.println(">>>입력 전 확인:"+searchCrewCode);
			int result = crdao.insertCrewWalkWrite(walkboard);
			
			if(result >0) {
				ra.addFlashAttribute("msg","등록이 완료되었습니다.");
			}else {
				ra.addFlashAttribute("msg","등록에 실패했습니다.");
			}
			mav.setViewName("redirect:/crewMainPage");
			return mav;
		}


		public String crewWalkPaging(int page, String searchCrewCode) {
			System.out.println("서비스>>크루산책 목록페이징 page:" +page+"=====================");
			Gson gson = new Gson();
			//디폴드값을 받아오므로 바로 page를 사용할 수 있습니다.
			System.out.println(">>>페이지 번호 : " + page);
			System.out.println(">>>크루코드 : "+searchCrewCode);
			
			//전체or검색결과 글 개수를 담을 변수를 선언합니다.
			int boardTotalCount = crdao.selectCrewWalkSearchListCount(searchCrewCode);
	
			//한 페이지에 보여줄 글 갯수 
			int onePageHowManyBoards  = 4;
			
			// 한 페이지에 보여줄 페이지 번호 개수
			int pagingNumCutCount  = 3;
			
			// 한 페이지 의 시작 페이지 번호
			
			int startCutNum  = (page - 1) * onePageHowManyBoards + 1;
			System.out.println(">>>한 페이지의 시작 페이지 번호 : " + startCutNum );
			
			// 한 페이지 의 끝 페이지 번호
			int endCutNum  = page * onePageHowManyBoards ;
			System.out.println(">>>한 페이지 의 끝 페이지 번호 : " + endCutNum );
	
			
			System.out.println(">>>총 글개수:"+boardTotalCount);
			// ceil = 소수점 반올림
			// maxPage = 전체페이지 번호 
			int maxPage = (int)( Math.ceil(  (double)boardTotalCount/onePageHowManyBoards) );
			
			// 첫번째 페이지 번호
			int startPage = (int) (( Math.ceil( (double) page/pagingNumCutCount  )) -1) * pagingNumCutCount  + 1;
			
			// 마지막 페이지 번호
			int endPage = startPage + pagingNumCutCount  -1;
			
			if(endPage > maxPage) {
				
				endPage = maxPage;
				
			}
			
			System.out.println(">>>첫번째 페이지 번호 : " + startPage);
			System.out.println(">>>마지막 페이지 번호 : " + endPage);
			System.out.println(">>>최대 페이지 번호 : " + maxPage);
			
			
			ArrayList<WalkboardDto> boardPagingList = crdao.selectCrewWalkPagingList(startCutNum ,endCutNum ,searchCrewCode);
			System.out.println(boardPagingList);

			for(int i = 0; i < boardPagingList.size(); i++) {
				System.out.println("가져온 "+i+"번째 글 : "+boardPagingList.get(i));
				  String content = boardPagingList.get(i).getWalk_content(); 
				  
				  String content_replace = content.replace("src=", " ").replace("<p>&nbsp;</p>", " ");
				  
				  boardPagingList.get(i).setWalk_content(content_replace);
				  
				boardPagingList.get(i).setPage(page);
				boardPagingList.get(i).setMaxPage(maxPage);
				boardPagingList.get(i).setStartPage(startPage);
				boardPagingList.get(i).setEndPage(endPage);
				
			}

			String boardPagingList_gson = gson.toJson(boardPagingList);
			
			return boardPagingList_gson;
		}


		
		public ModelAndView crewReviewWritePage(String walk_code) {
			System.out.println("서비스>>크루후기 작성페이지 이동:"+walk_code);
			mav = new ModelAndView();
			//참조할 산책 모집글 내용 가져오기
			WalkboardDto crewWalkViewInfo = crdao.selectCrewWalkViewInfo(walk_code);
			mav.addObject("walkinfo",crewWalkViewInfo);
			mav.setViewName("crew/CrewReviewWrite");
			return mav;
		}

		
		
		//산책후기작성
		public ModelAndView crewReviewWrite(WalkboardDto walkboardDto, RedirectAttributes ra, String walk_mid) {
			
				System.out.println("서비스>>크루후기 글등록 ");
				ModelAndView mav = new ModelAndView();
				
				// 코드 생성 
				String rbcode = "CW"; 
				// 코드 생성 (select)
				String Maxrbcode = crdao.selectMaxCWcode();
				
				System.out.println(">>최대코드 : " + Maxrbcode);
				
				if(Maxrbcode.equals("CW000")) { 
					
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
					   			
				System.out.println(">>코드 완성 : " + rbcode);
				
				System.out.println(">>지도 좌표 : "+walkboardDto.getWalk_map());
				  
				String weatherinfo_replace = walkboardDto.getWalk_weatherinfo().replace("맑음/","0/").replace("구름많음/","1/").	replace("흐림/","2/").replace("비/","3/").replace("비/눈/","4/").replace("눈/","5/"	); walkboardDto.setWalk_weatherinfo(weatherinfo_replace);
				
				String bodytype_replace = walkboardDto.getWalk_bodytype().replace("소형견","0010").replace("중형견","1025").replace("대형견","2580");
				  
				walkboardDto.setWalk_bodytype(bodytype_replace);	
				
				String crewCode = (String)(session.getAttribute("crewCode"));
				
				walkboardDto.setWalk_crewcode(crewCode);
				System.out.println(">>입력직전 완성정보 : "+walkboardDto);
				int insertwalk = crdao.insertCrewReview(walkboardDto);
				
				ra.addFlashAttribute("msg","게시물 작성 완료");
					 
				mav.setViewName("redirect:/crewMainPage");
				
				return mav;
			
		}


		public String checkReviewGrant(WalkboardDto walkInfo) {
			System.out.println("서비스>>크루리뷰권한체크" +walkInfo);
			
			String resultStr = "";			
			int result = crdao.selectCheckCrewReviewCountforGrant(walkInfo);
			
			if(result>0) {
				resultStr="NO";
			}else if(result == 0) {
				resultStr="OK";
			}
			
 
			return resultStr;
		}


		public ModelAndView crewWalkViewPage(String crewWalkCode) {
			System.out.println("서비스>>크루후기 목록페이징:"+crewWalkCode);
			mav = new ModelAndView();
			
			//산책 모집글 내용 가져오기
			WalkboardDto crewWalkViewInfo = crdao.selectCrewWalkViewInfo(crewWalkCode);
			mav.addObject("walkBoardInfo", crewWalkViewInfo);
			mav.setViewName("crew/CrewWalkView");
			return mav;
			

		}


		public ModelAndView crewWalkViewModifyPage(String boardCode, RedirectAttributes ra) {
			
			System.out.println("서비스>>크루후기 수정페이지 이동" + boardCode);
			mav = new ModelAndView();
			
			//수정할 글의 모든 정보를 담은 객체꺼내기
			WalkboardDto walkboard = wkdao.selectWalkboardInfo(boardCode);
			String searchId = (String)(session.getAttribute("loginId"));		
			//사용자 아이디값 매개변수로 MembersDto객체로 리턴됩니다.
		
				
			System.out.println(">>>수정페이지로 갈 글정보:"+walkboard);
			mav.addObject("walkBoardInfo",walkboard);			
			mav.setViewName("crew/CrewWalkViewModify");
			return mav;
			
		}

		//크루 산책글 수정 요청
		public ModelAndView crewWalkViewModify(WalkboardDto boardInfo, RedirectAttributes ra) {
			System.out.println("서비스>>크루후기 글수정" + boardInfo);
			mav = new ModelAndView();
			
			int result= wkdao.updateWalkViewInfo(boardInfo);
			
			if(result>0) {
				ra.addFlashAttribute("msg","수정하였습니다.");
				mav.setViewName("redirect:/crewWalkViewPage?crewWalkCode="+boardInfo.getWalk_code());
			}else {
				ra.addFlashAttribute("msg","수정 실패");
				mav.setViewName("redirect:/crewWalkViewPage?crewWalkCode="+boardInfo.getWalk_code());
			}
			return mav;
		}


		public ModelAndView crewWalkDelState(String boardCode,RedirectAttributes ra) {
			System.out.println("서비스>>크루산책 글삭제" + boardCode);
			mav = new ModelAndView();
			int result = wkdao.walkDelState(boardCode);
			
			if(result>0) {				
				ra.addFlashAttribute("msg","삭제가 완료되었습니다.");
				mav.setViewName("redirect:/crewMainPage");
			}else {
				ra.addFlashAttribute("msg","삭제에 실패했습니다.");
				mav.setViewName("redirect:/crewWalkViewPage?crewWalkCode="+boardCode);
			}
			
			return mav;
		}


		public ModelAndView crewWalkViewJoin(String searchId, String boardCode, RedirectAttributes ra) {
			System.out.println("서비스>>크루산책 멤버참가:" + boardCode);
			mav = new ModelAndView();
			
			//해당 산책 게시글의 mid와 people 를 불러와 이미 가입된 사람인지, 남은 자리는 있는지 체크합니다.
			WalkboardDto wkdto = wkdao.selectWalkboardInfo(boardCode);
			
			String arrayMidList[] = wkdto.getWalk_mid().split("/");
			String midList="";
			String result = "";

			if (wkdto.getWalk_people() <= arrayMidList.length) {
				result="PEOPLE";
			}
			
			for(int i =0; i <arrayMidList.length; i++) {
				if(arrayMidList[i].equals(searchId)) {
					result="NO";
				}
			}
			
			if (result.equals("NO")) {
				ra.addFlashAttribute("msg","이미 참여하셨습니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
			}else if(result.equals("PEOPLE")){
				ra.addFlashAttribute("msg","최대 인원수에 도달한 모집글입니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
			}else {
			
				midList = wkdto.getWalk_mid()+"/"+searchId;
				
				int updateResult = wkdao.updateWalkViewJoin(boardCode, midList);
				if(updateResult > 0) {
					ra.addFlashAttribute("msg","참가등록 되었습니다.");
					mav.setViewName("redirect:/crewWalkViewPage?crewWalkCode="+boardCode);
				}
			}

			
			return mav;
		}


		public String crewReviewListPaging(int page) {
			  System.out.println("서비스>>크루후기 목록페이징"+page);

			  //json변환작업에 필요한 gson 선언하기
			  Gson gson = new Gson();
			  
			  String walk_crewcode = (String)(session.getAttribute("crewCode"));
			  //출력할 글 총 개수 구하기
			  int boardTotalCount = crdao.selectCrewReviewSearchListCount(walk_crewcode);
			  System.out.println(">>>총 글 개수를 가져옵니다 : " + boardTotalCount);
			  
			  
			  
			  //한 페이지에 보여줄 글 갯수 
			  int pageCount = 4;
			  
			  // 한 페이지에 보여줄 페이지 번호 개수 
			  int pageNumCount = 3;
			  
			  // 한 페이지 의 시작 페이지 번호
			  
			  int startRow = (page - 1) * pageCount + 1;
			  System.out.println(">>>한 페이지의 시작 페이지 번호 : " + startRow);
			  
			  // 한 페이지 의 끝 페이지 번호 
			  int endRow = page * pageCount;
			  System.out.println(">>>한 페이지 의 끝 페이지 번호 : " + endRow);
			  
			  
			  // ceil = 소수점 반올림 // maxPage = 전체페이지 번호 
			  int maxPage = (int)( Math.ceil( (double)boardTotalCount/pageCount ) );
			  
			  // 첫번째 페이지 번호 
			  int startPage = (int) (( Math.ceil( (double) page/pageNumCount)) -1) * pageNumCount + 1;
			  
			  // 마지막 페이지 번호 
			  int endPage = startPage + pageNumCount -1;
			  
			  if(endPage > maxPage) {
			  
			  endPage = maxPage;
			  
			  } 
			  
			  
			  
			  // 한 페이지에 보여줄만큼의 글목록 조회 
			  System.out.println(">>>확인용 크루코드 :"+walk_crewcode);
			  ArrayList<WalkboardDto> boardPagingList = crdao.selectCrewReviewListPaging(startRow,endRow,walk_crewcode);
			  System.out.println(">>>목록 : " + boardPagingList); 
			  
			  //게시물 
			  
			  System.out.println(">>>첫번째 페이지 번호 : " + startPage);
			  
			  System.out.println(">>>마지막 페이지 번호 : " + endPage);
			  
			  System.out.println(">>>전체 페이지 번호 : " + maxPage);
			  
			  
			  
			  for(int i = 0; i < boardPagingList.size(); i++) {
			  
				  //리스트 i번째의 게시글 코드를 가져옵니다.
			  String boardcode = boardPagingList.get(i).getWalk_code();
			  
			  //위 게시글 코드로 게시된 모든 댓글 리스트의 개수를 가져옵니다.
			  System.out.println(">>>댓글 게시물 코드 : " + boardcode); 
			  int recommentCount = crdao.selectCrewReviewCommentCount(boardcode);
			  System.out.println(">>>가져 온 댓글 개수 : " + recommentCount);

			  //i번째의 게시글 본문내용을 가져옵니다.
			  String content = boardPagingList.get(i).getWalk_content();
			  System.out.println(">>>객체의 본문내용 : "+content);
			  
			  //i번째 게시글 본문내용을 출력에 맞도록 변환합니다.
			  String content_replace = content.replace("src=", " ").replace("<p>&nbsp;</p>", " ");
			  System.out.println(">>>변경후 :"+content_replace);
			  
			  //변경한 게시물 내용을 다시 리스트에 덮어씌웁니다.
			  boardPagingList.get(i).setWalk_content(content_replace);
			  
			  
			  //게시글 개수를 입력합니다.
			  boardPagingList.get(i).setWalk_replycount(recommentCount);
			  //현재 페이지를 입력합니다.
			  boardPagingList.get(i).setPage(page);
			  //최대 페이지를 입력합니다.
			  boardPagingList.get(i).setMaxPage(maxPage);
			  //처음 페이지 번호를 입력합니다.
			  boardPagingList.get(i).setStartPage(startPage);
			  //출력용 마지막 페이지를 입력합니다.
			  boardPagingList.get(i).setEndPage(endPage);
			  
			  
			  
			  }
			  
			  
			  //객체리스트를 ajax용 json형식의 문자열로 변환합니다.
			  String boardPagingList_gson = gson.toJson(boardPagingList);
			  
			  
			  return boardPagingList_gson; 
			  }
			
		

		// 후기 상세페이지 이동 
		public ModelAndView crewReviewPage(String walk_code) {
		  System.out.println("서비스>> 후기 상세 페이지");
		  ModelAndView mav = new ModelAndView();
		  
		  System.out.println(">>>코드 : " + walk_code);
		 
		  
		  // 상세 정보 보기 
		  WalkboardDto crewReviewinfo = crdao.selectCrewReviewInfo(walk_code);
		  System.out.println(">>>출력할 글 : " + crewReviewinfo);
		  
		  //날씨 출력용으로 변환하기
		  String weatherinfo_replace = 
				  crewReviewinfo.getWalk_weatherinfo().replace("0/","맑음/").replace("1/","구름많음/").replace("2/","흐림/").replace("3/","비/").replace("4/","비/눈/").replace("5/","눈/" ); 
		  
		  crewReviewinfo.setWalk_weatherinfo(weatherinfo_replace);
		  
		  String bodytype_replace =
				  crewReviewinfo.getWalk_bodytype().replace("0010","소형견").replace("1025", "중형견").replace("2580","대형견");
		  
		  
		  crewReviewinfo.setWalk_bodytype(bodytype_replace);
		  
		  System.out.println("날씨 : " + crewReviewinfo.getWalk_weatherinfo());
		  System.out.println("강아지 체형 : " + crewReviewinfo.getWalk_bodytype());
		  
		 
		  // 글조회수 
		  
		  int reviewhits = crdao.updateCrewReviewHits(walk_code);
		  System.out.println("조회수 : "+reviewhits);

		  String member_id = (String)(session.getAttribute("loginId"));
		  CommendDto reviewcommend = crdao.getloginsel(walk_code,member_id);
		  
		  System.out.println("회원의 추천 유무 : " + reviewcommend);
		  

		  
		  mav.addObject("reviewinfo",crewReviewinfo);
		  mav.addObject("reviewcommend",reviewcommend);
		  
		  
		  mav.setViewName("crew/CrewReviewView"); 
		  
		  return mav; 
		  
		}


	public String crewReviewCommentList(String recomment_boardcode) {

		  Gson gson = new Gson();
			  
		  /*ArrayList<RecommentDto> commentList =  crdao.selectCrewRivewCommentList(recomment_boardcode);
			*/  
		  System.out.println("해당 게시글 댓긇 목록 : "  );
			  
		  String commentList_gson = gson.toJson("");
			  
		  return commentList_gson; 
	}


	public String crewWalkTopPrint(String recomment_boardcode) {
		 Gson gson = new Gson();
		  System.out.println("서비스>>crewWalkTopPrint "  );
		  String crewCode = (String)(session.getAttribute("crewCode"));
		  ArrayList<WalkboardDto> crewBoardList= new ArrayList<WalkboardDto>();
		  
		  WalkboardDto crewWalkBoard1 = crdao.selectCrewWalkBoardMax(crewCode);
		  System.out.println("-------");
		  System.out.println("크루코드 :"+ crewCode +"글내용:"+crewWalkBoard1);
		  
		  crewBoardList.add(crewWalkBoard1);
		  
		  WalkboardDto crewWalkBoard2 = crdao.selectCrewReviewBoardMax(crewCode);
		  
		  crewBoardList.add(crewWalkBoard2);
		  System.out.println(crewBoardList);
		  String commentList_gson = gson.toJson(crewBoardList);
			  
		  return commentList_gson; 
		
		
	}
		  
		  
	// 수정 상세페이지 이동
		public ModelAndView crewReviewModifyPage(String walk_code , String walk_mid) {
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
			mav.setViewName("Review/CrewReviewModify");
			
			return mav;
		}
		

		// 상세페이지 수정 
		public ModelAndView crewReviewModify(WalkboardDto reviewboard, String member_id, RedirectAttributes ra) {
			System.out.println("수정 상세페이지 수정 Service");
			
			ModelAndView mav = new ModelAndView();
					
			System.out.println("수정한 값 : " + reviewboard);
			
			String walk_code = reviewboard.getWalk_code();
			
			System.out.println("수정 코드 : " + walk_code);
			
			int walk_hits = reviewboard.getWalk_hits();
			
			System.out.println("수정 조회수 : " + walk_hits);
			
			bdao.updateReviewInfo(reviewboard);
			ra.addFlashAttribute("msg","수정이 완료되었습니다");
			
			mav.addObject("walk_code", walk_code);
			mav.addObject("walk_hits", walk_hits);
			mav.addObject("member_id", member_id);
			
			mav.setViewName("redirect:/crewReviewPage");
			
			return mav;
		}
		

		// 게시물 삭제
		public ModelAndView crewReviewDelState(String walk_code, RedirectAttributes ra) {
			System.out.println("상세페이지 삭제 Service");
			
			ModelAndView mav = new ModelAndView();
			
			bdao.updateReviewState(walk_code);
					
			ra.addFlashAttribute("msg","게시물이 삭제되었습니다");
			mav.setViewName("redirect:/crewMainPage");
			
			return mav;
		}


		public String crewReviewCommentReport(String code) {
			System.out.println("댓글 신고 Service");
			String result = "";
			
		ReportDto comment = crdao.Commentreportselect(code);
			
			if(comment == null) {
				RecommentDto rdto = crdao.selectCrewViewRecomment(code);
				crdao.commentReportinsert(rdto);
				int reviewReport = crdao.updateCommentReport(code);
				result = "OK";
				
			} else { 
				
				result = "NO";
				
			}
			
			
			return result;
		}



}
