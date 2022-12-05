package com.GroupProject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.dao.AdminInfoDao;
import com.GroupProject.dto.BoardDto;
import com.GroupProject.dto.HoDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.TotalBoardDto;
import com.GroupProject.dto.WalkboardDto;
import com.google.gson.Gson;

@Service
public class AdminInfoService {

	@Autowired
	private AdminInfoDao aidao;
	

	// 관리자 신고된 게시물 페이지 이동
	public ModelAndView reportBoardListPage() {
		System.out.println("AdminInfoService.reportBoardListPage() 호출");
		ModelAndView mav = new ModelAndView();

		//산책테이블 글 가져오기
		ArrayList<TotalBoardDto> totalBoard_reportList1 = aidao.selectBoardReportList1();
		System.out.println("totalBoard_reportList1 : " + totalBoard_reportList1);
		//보드테이블 글 가져오기
		ArrayList<TotalBoardDto> totalBoard_reportList2 = aidao.selectBoardReportList2();
		System.out.println("totalBoard_reportList2 : " + totalBoard_reportList2);
		
		ArrayList<TotalBoardDto> totalBoard_reportList = new ArrayList<TotalBoardDto>();
		System.out.println(totalBoard_reportList1.size());
		System.out.println(totalBoard_reportList2.size());
		
		if (totalBoard_reportList1.size() >0) {
			// WB산책 CB크루 RB후기 PB크루모집
			for(int i =0; i<totalBoard_reportList1.size(); i++) {
				if ("WB".equals(totalBoard_reportList1.get(i).getTotal_code().substring(0, 2) )) {
					totalBoard_reportList1.get(i).setTotal_codename("산책게시판");
				} else if ("CB".equals(totalBoard_reportList1.get(i).getTotal_code().substring(0, 2) )) {
					totalBoard_reportList1.get(i).setTotal_codename("크루게시판");
				} else if ("RB".equals(totalBoard_reportList1.get(i).getTotal_code().substring(0, 2) )) {
					totalBoard_reportList1.get(i).setTotal_codename("후기게시판");
				} else if ("PB".equals(totalBoard_reportList1.get(i).getTotal_code().substring(0, 2) )) {
					totalBoard_reportList1.get(i).setTotal_codename("크루모집게시판");
				}
				totalBoard_reportList.add(totalBoard_reportList1.get(i));
				System.out.println(totalBoard_reportList.get(i));
			}	
		}
		if (totalBoard_reportList2.size()> 0) {
			for(int i =0; i<totalBoard_reportList2.size(); i++) {
				if ("TB".equals(totalBoard_reportList2.get(i).getTotal_code().substring(0, 2) )) {
					totalBoard_reportList2.get(i).setTotal_codename("유용게시판");
				}else if ("IB".equals(totalBoard_reportList2.get(i).getTotal_code().substring(0, 2) )) {
					totalBoard_reportList2.get(i).setTotal_codename("임보게시판");
				}
				
				totalBoard_reportList.add(totalBoard_reportList2.get(i));
				System.out.println(totalBoard_reportList.get(i));
			}
			
			
				
		}
		System.out.println("totalBoard_reportList : " + totalBoard_reportList);
		mav.addObject("totalBoard_reportList", totalBoard_reportList);
		mav.setViewName("admin/ReportBoardList");
		return mav;
	}
	
	
	// 신고된 게시물 제목 클릭하여 신고된 게시물 페이지로 이동하기(확인하러가기)
	public ModelAndView reportBoardTypeViewPage(String total_code) {
		System.out.println("MovieService.reportBoardTypeViewPage() 호출");
		ModelAndView mav = new ModelAndView();
		String rename = total_code.substring(0,2);
		
		System.out.println("게시물코드 : " + total_code);
		
		// 게시물 정보 조회
		//switch-case문으로 합시다
		switch(rename) {
		case "CB":
			System.out.println("case : CB 진입");
			WalkboardDto CrewboardInfo = aidao.crewViewPage(total_code);
			System.out.println(CrewboardInfo);
			mav.addObject("CrewboardInfo",CrewboardInfo);
			mav.setViewName("/crewList");
			break;
			
		case "RB":
			System.out.println("case : RB 진입");
			WalkboardDto ReviewInfo = aidao.reviewViewPage(total_code);
			System.out.println(ReviewInfo);
			mav.addObject("reviewinfo",ReviewInfo);
			mav.setViewName("Review/ReviewList");
			break;
			
		case "PB":
			System.out.println("case : PB 진입");
			WalkboardDto promotionCrewInfo = aidao.promotionCrewViewPage(total_code);
			System.out.println(promotionCrewInfo);
			mav.addObject("promotionCrewInfo",promotionCrewInfo);
			mav.setViewName("/promotionCrewList");
			break;
			
		case "WB":
			System.out.println("case : WB 진입");
			WalkboardDto WalkInfo = aidao.WalkViewPage(total_code);
			System.out.println(WalkInfo);
			mav.addObject("walkBoardInfo",WalkInfo);
			mav.setViewName("walk/WalkList");
			break;
			
		case "TB":
			System.out.println("case : TB 진입");
			BoardDto TipsInfo = aidao.TipsViewPage(total_code);
			System.out.println(TipsInfo);
			mav.addObject("tips",TipsInfo);
			mav.setViewName("infoList/TipsView");
			break;
		
		}
		System.out.println("switch - case 문 종료");
		System.out.println("mav : " + mav);
		return mav;
	}

	
	// 신고된 게시물,댓글의 회원 정지 
	public String reportBoardMemberState(String report_id, int member_state) {
		System.out.println("AdminInfoService.reportBoardMemberState() 호출");
		System.out.println("board_writer : " + report_id);
		System.out.println("member_state : " + member_state);

		int updateMember = aidao.updateMemberState(report_id, member_state);
		System.out.println("updateMember : " + updateMember);
		return updateMember + "";
	}

	// 신고된 게시물 활성화/비활성화
	public String reportBoardState(String total_code) {
		System.out.println("AdminInfoService.reportModifyBoardState() 호출");
		System.out.println("total_code : " + total_code);
		
		String recode = total_code.substring(0, 2);
		System.out.println("recode : " + recode);
		
		int modifyBoard = 0;
		
		if (recode.equals("CB")  || recode.equals("RB") || recode.equals("PB") || recode.equals("WB") || recode.equals("CW")) {
			System.out.println("if문 진입");
			modifyBoard = aidao.updateWalkReportState(total_code);
		}
		 else if (recode.equals("TB")) {
			System.out.println("if문 진입");
			modifyBoard = aidao.updateBoardReportState(total_code);
		}

		System.out.println("modifyBoard : " + modifyBoard);
		return modifyBoard+"";
	}

	//관리자 신고 댓글 페이지 이동
	public ModelAndView reportRecommentListPage() {
		System.out.println("AdminInfoService.reportRecommentListPage() 호출");
		ModelAndView mav = new ModelAndView();

		ArrayList<RecommentDto> Recomment_reportList = aidao.selectRecommentReportList();

		System.out.println("Recomment_reportList : " + Recomment_reportList);
		mav.addObject("Recomment_reportList", Recomment_reportList);
		mav.setViewName("admin/ReportRecommentList");
		return mav;
	}

	// 신고된 댓글 활성화/비활성화
	public String reportRecommentState(String recomment_code) {
		System.out.println("AdminInfoService.reportRecommentState() 호출");
		System.out.println("recomment_code : " + recomment_code);
		
		int modifyRecomment = aidao.updateRecommentReportState(recomment_code);
		System.out.println("modifyRecomment : " + modifyRecomment);
		return modifyRecomment+"";
	}


	// 병원 정보 모달창 열기
	public String adminViewHospitalInfo(String ho_code) {
		System.out.println("AdminInfoService.adminViewHospitalInfo() 호출");
		HoDto hospital = aidao.selectHospital(ho_code);
		Gson gson = new Gson();
		String hospitalInfo_Json = gson.toJson(hospital);
		System.out.println(hospitalInfo_Json);
		return hospitalInfo_Json;
	}

	// 병원 모달창 정보 수정
	public String adminModifyHospital(HoDto ho) {
		System.out.println("AdminInfoService.adminModifyHospital() 호출");
		System.out.println("수정할 병원 정보 : " + ho);
		
		int adminModifyHospital = aidao.adminModifyHospital(ho);
		
		System.out.println("adminModifyHospital : " + adminModifyHospital);
		return adminModifyHospital+"";
	}


	// 호텔 정보 모달창 열기
	public String adminViewHotelInfo(String ho_code) {
		System.out.println("AdminInfoService.adminViewHotelInfo() 호출");
		HoDto hotel = aidao.selectHotel(ho_code);
		Gson gson = new Gson();
		String hotelInfo_Json = gson.toJson(hotel);
		System.out.println(hotelInfo_Json);
		return hotelInfo_Json;
	}

	// 호텔 모달창 정보 수정
	public String adminModifyHotel(HoDto ho) {
		System.out.println("AdminInfoService.adminModifyHotel() 호출");
		System.out.println("수정할 병원 정보 : " + ho);
		
		int adminModifyHotel = aidao.adminModifyHotel(ho);
		
		System.out.println("adminModifyHotel : " + adminModifyHotel);
		return adminModifyHotel+"";
	}
	

	public String resetReportBoard(String total_code) {
        System.out.println("AdminInfoService.reportModifyBoardState() 호출");
        System.out.println("total_code : " + total_code);

        String recode = total_code.substring(0, 2);
        System.out.println("recode : " + recode);

        int modifyBoard = 0;

        if (recode.equals("CB")||recode.equals("RB")||recode.equals("PB") || recode.equals("WB")) {
            System.out.println("if문 진입");
            modifyBoard = aidao.updateWalkReportValue(total_code);
        }
         else if (recode.equals("TB")) {
            System.out.println("if문 진입");
            modifyBoard = aidao.updateBoardReportValue(total_code);
        }

        System.out.println("modifyBoard : " + modifyBoard);

        return modifyBoard+"";
    }
	
	// 신고된 댓글 신고횟수를 다시 0으로 초기화
    public String resetReportRecomment(String recomment_code) {
        System.out.println("AdminInfoService.resetReportRecomment() 호출");
        System.out.println("recomment_code : " + recomment_code);

        int modifyRecomment = aidao.updateRecommentReportValue(recomment_code);
        System.out.println("modifyRecomment : " + modifyRecomment);

        return modifyRecomment+"";
    }
	
}
