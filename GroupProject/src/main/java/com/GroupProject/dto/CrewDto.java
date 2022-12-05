package com.GroupProject.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CrewDto {
	
	private String crew_code;
	private String crew_name;
	private String crew_master;
	private int crew_state;
	private String crew_region;
	private String crew_dogweight;
	private String crew_introduce;
	private String crew_profile;
	private int crew_report;
	private int crew_maxcount;
	
	private MultipartFile crew_file;
	private int currentcount;
	private int page;
	private int startPage;
	private int endPage;
	
	private String checkFile;
	
	public String getCrew_code() {
		return crew_code;
	}
	public void setCrew_code(String crew_code) {
		this.crew_code = crew_code;
	}
	public String getCrew_name() {
		return crew_name;
	}
	public void setCrew_name(String crew_name) {
		this.crew_name = crew_name;
	}
	public String getCrew_master() {
		return crew_master;
	}
	public void setCrew_master(String crew_master) {
		this.crew_master = crew_master;
	}
	public int getCrew_state() {
		return crew_state;
	}
	public void setCrew_state(int crew_state) {
		this.crew_state = crew_state;
	}
	public String getCrew_region() {
		return crew_region;
	}
	public void setCrew_region(String crew_region) {
		this.crew_region = crew_region;
	}
	public String getCrew_dogweight() {
		return crew_dogweight;
	}
	public void setCrew_dogweight(String crew_dogweight) {
		this.crew_dogweight = crew_dogweight;
	}
	public String getCrew_introduce() {
		return crew_introduce;
	}
	public void setCrew_introduce(String crew_introduce) {
		this.crew_introduce = crew_introduce;
	}
	public String getCrew_profile() {
		return crew_profile;
	}
	public void setCrew_profile(String crew_profile) {
		this.crew_profile = crew_profile;
	}
	public int getCrew_report() {
		return crew_report;
	}
	public void setCrew_report(int crew_report) {
		this.crew_report = crew_report;
	}
	public int getCrew_maxcount() {
		return crew_maxcount;
	}
	public void setCrew_maxcount(int crew_maxcount) {
		this.crew_maxcount = crew_maxcount;
	}
	public MultipartFile getCrew_file() {
		return crew_file;
	}
	public void setCrew_file(MultipartFile crew_file) {
		this.crew_file = crew_file;
	}
	public int getCurrentcount() {
		return currentcount;
	}
	public void setCurrentcount(int currentcount) {
		this.currentcount = currentcount;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "CrewDto [crew_code=" + crew_code + ", crew_name=" + crew_name + ", crew_master=" + crew_master
				+ ", crew_state=" + crew_state + ", crew_region=" + crew_region + ", crew_dogweight=" + crew_dogweight
				+ ", crew_introduce=" + crew_introduce + ", crew_profile=" + crew_profile + ", crew_report="
				+ crew_report + ", crew_maxcount=" + crew_maxcount + ", crew_file=" + crew_file + ", currentcount="
				+ currentcount + ", page=" + page + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}

	
	
}
