package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.HoDto;

public interface InfoDao {

	ArrayList<HoDto> selectHospitalList();

	ArrayList<HoDto> searchHospitalList1();
	
	ArrayList<HoDto> searchHospitalList2(String metropolis);
	
	ArrayList<HoDto> searchHospitalList3(@Param("metropolis") String metropolis, @Param("city") String city);
	

	ArrayList<HoDto> searchHospitalList4(String findName);

	ArrayList<HoDto> searchHospitalList5(@Param("metropolis") String metropolis, @Param("findName") String findName);

	ArrayList<HoDto> searchHospitalList6(@Param("metropolis") String metropolis, @Param("city") String city, @Param("findName") String findName);

	ArrayList<HoDto> selectHotelList();

	ArrayList<HoDto> searchHotelList1();
	
	ArrayList<HoDto> searchHotelList2(String metropolis);
	
	ArrayList<HoDto> searchHotelList3(@Param("metropolis") String metropolis, @Param("city") String city);
	

	ArrayList<HoDto> searchHotelList4(String findName);

	ArrayList<HoDto> searchHotelList5(@Param("metropolis") String metropolis, @Param("findName") String findName);

	ArrayList<HoDto> searchHotelList6(@Param("metropolis") String metropolis, @Param("city") String city, @Param("findName") String findName);
	
}
