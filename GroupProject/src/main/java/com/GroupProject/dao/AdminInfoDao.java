package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.BoardDto;
import com.GroupProject.dto.HoDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.TotalBoardDto;
import com.GroupProject.dto.WalkboardDto;

public interface AdminInfoDao {

	ArrayList<TotalBoardDto> selectBoardReportList1();
	
	ArrayList<TotalBoardDto> selectBoardReportList2();
	


	int updateMemberState(@Param("report_id") String report_id, @Param("member_state") int member_state);

	int updateWalkReportState(String total_code);
	

	
	int updateBoardReportState(String total_code);

	
	ArrayList<RecommentDto> selectRecommentReportList();

	int updateRecommentReportState(String recomment_code);


	HoDto selectHospital(String ho_code);

	int adminModifyHospital(HoDto ho);

	HoDto selectHotel(String ho_code);

	int adminModifyHotel(HoDto ho);

	WalkboardDto crewViewPage(String total_code);

	WalkboardDto reviewViewPage(String total_code);

	WalkboardDto promotionCrewViewPage(String total_code);

	WalkboardDto WalkViewPage(String total_code);

	BoardDto TipsViewPage(String total_code);

	int updateWalkReportValue(String total_code);

    int updateBoardReportValue(String total_code);

    int updateRecommentReportValue(String recomment_code);






}
