package com.GroupProject.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.GroupProject.service.InfoService;

@Controller
public class InfoController {
	
	@Autowired
	public InfoService infosvc;
	
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping(value="/hospitalListPage")
	public ModelAndView hospitalListPage(){
		System.out.println("병원 목록 페이지로 이동");
		ModelAndView mav = infosvc.hospitalListPage();
		return mav;
	}
	
	
	@RequestMapping(value="/hospitalSearchList")
	public ModelAndView hospitalSearchList(String metropolis, String city, String findName){
		System.out.println("병원 목록 조회 기능");
		ModelAndView mav = infosvc.hospitalSearchList(metropolis, city, findName);
		return mav;
	}
	
	@RequestMapping(value="/hotelListPage")
	public ModelAndView hotelListPage(){
		System.out.println("호텔 목록 페이지로 이동");
		ModelAndView mav = infosvc.hotelListPage();
		return mav;
	}
	
	@RequestMapping(value="/hotelSearchList")
	public ModelAndView hotelSearchList(String metropolis, String city, String findName){
		System.out.println("호텔 목록 조회 기능");
		ModelAndView mav = infosvc.hotelSearchList(metropolis, city, findName);
		return mav;
	}
	
	
}
