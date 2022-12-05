package com.GroupProject.service;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.dao.InfoDao;
import com.GroupProject.dto.HoDto;

@Service
public class InfoService {

	@Autowired
	private InfoDao ifdao;
	
	// 병원 목록 페이지 이동
	public ModelAndView hospitalListPage() {
		System.out.println("InfoListService.hospitalListPage() 호출");
		ModelAndView mav = new ModelAndView();
		
		ArrayList<HoDto> show_HospitalList = ifdao.selectHospitalList();
		
		
		mav.addObject("show_HospitalList",show_HospitalList);
		mav.setViewName("Info/HospitalList");
		
		return mav;
	}

	// 검색 기능
	public ModelAndView hospitalSearchList(String metropolis, String city, String findName) {
		System.out.println("InfoListService.hospitalSearchList()");
		ModelAndView mav = new ModelAndView();
		
		ArrayList<HoDto> show_HospitalList = null;
		if(findName.equals("")) {
			if(metropolis.equals("전체")) {
				System.out.println("metropolis.equals(\"전체\")) 진입");
				show_HospitalList = ifdao.searchHospitalList1();
				mav.addObject("show_HospitalList", show_HospitalList);
			} else if(city.equals("전체")) {
				System.out.println("city.equals(\"전체\") 진입");
				show_HospitalList = ifdao.searchHospitalList2(metropolis);
				mav.addObject("show_HospitalList", show_HospitalList);
			} else {
				System.out.println("findName == null 진입");
				show_HospitalList = ifdao.searchHospitalList3(metropolis,city);
				mav.addObject("show_HospitalList", show_HospitalList);
			}
		} else {
			if(metropolis.equals("전체")) {
				System.out.println("metropolis.equals(\"전체\")) 진입");
				show_HospitalList = ifdao.searchHospitalList4(findName);
				mav.addObject("show_HospitalList", show_HospitalList);
			} else if(city.equals("전체")) {
				System.out.println("city.equals(\"전체\") 진입");
				show_HospitalList = ifdao.searchHospitalList5(metropolis,findName);
				mav.addObject("show_HospitalList", show_HospitalList);
			} else {
				System.out.println("findName == null 진입");
				show_HospitalList = ifdao.searchHospitalList6(metropolis,city,findName);
				mav.addObject("show_HospitalList", show_HospitalList);
			}
		}
		
		mav.setViewName("Info/HospitalList");
		return mav;
	}

	public ModelAndView hotelListPage() {
		System.out.println("InfoListService.hotelListPage() 호출");
		ModelAndView mav = new ModelAndView();
		
		ArrayList<HoDto> show_HotelList = ifdao.selectHotelList();
		
		mav.addObject("show_HotelList",show_HotelList);
		mav.setViewName("Info/HotelList");
		
		return mav;
	}

	public ModelAndView hotelSearchList(String metropolis, String city, String findName) {
		System.out.println("InfoListService.hotelSearchList()");
		ModelAndView mav = new ModelAndView();
		System.out.println("metropolis : " + metropolis);
		System.out.println("city : " + city);
		System.out.println("findName : " + findName);
		
		ArrayList<HoDto> show_HotelList = null;
		if(findName.equals("")) {
			if(metropolis.equals("전체")) {
				System.out.println("metropolis.equals(\"전체\")) 진입");
				show_HotelList = ifdao.searchHotelList1();
				mav.addObject("show_HotelList", show_HotelList);
			} else if(city.equals("전체")) {
				System.out.println("city.equals(\"전체\") 진입");
				show_HotelList = ifdao.searchHotelList2(metropolis);
				mav.addObject("show_HotelList", show_HotelList);
			} else {
				System.out.println("findName == null 진입");
				show_HotelList = ifdao.searchHotelList3(metropolis,city);
				mav.addObject("show_HotelList", show_HotelList);
			}
		} else {
			if(metropolis.equals("전체")) {
				System.out.println("metropolis.equals(\"전체\")) 진입");
				show_HotelList = ifdao.searchHotelList4(findName);
				mav.addObject("show_HotelList", show_HotelList);
			} else if(city.equals("전체")) {
				System.out.println("city.equals(\"전체\") 진입");
				show_HotelList = ifdao.searchHotelList5(metropolis,findName);
				mav.addObject("show_HotelList", show_HotelList);
			} else {
				System.out.println("findName == null 진입");
				show_HotelList = ifdao.searchHotelList6(metropolis,city,findName);
				mav.addObject("show_HotelList", show_HotelList);
			}
		}
		
		mav.setViewName("Info/HotelList");
		
		return mav;
	}

}
