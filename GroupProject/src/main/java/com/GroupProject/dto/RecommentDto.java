package com.GroupProject.dto;

import lombok.Data;

@Data
public class RecommentDto {
	
	private String recomment_code;
	private String recomment_boardcode;
	private String recomment_writer;
	private String recomment_content;
	private String recomment_date;
	private int recomment_state;
	private int recomment_report;
	private String recomment_profile;
	private String recomment_id;
	
	private String member_profile;
	
	
	public String getMember_profile() {
		return member_profile;
	}
	public void setMember_profile(String member_profile) {
		this.member_profile = member_profile;
	}
	public String getRecomment_code() {
		return recomment_code;
	}
	public void setRecomment_code(String recomment_code) {
		this.recomment_code = recomment_code;
	}
	public String getRecomment_boardcode() {
		return recomment_boardcode;
	}
	public void setRecomment_boardcode(String recomment_boardcode) {
		this.recomment_boardcode = recomment_boardcode;
	}
	public String getRecomment_writer() {
		return recomment_writer;
	}
	public void setRecomment_writer(String recomment_writer) {
		this.recomment_writer = recomment_writer;
	}
	public String getRecomment_content() {
		return recomment_content;
	}
	public void setRecomment_content(String recomment_content) {
		this.recomment_content = recomment_content;
	}
	public String getRecomment_date() {
		return recomment_date;
	}
	public void setRecomment_date(String recomment_date) {
		this.recomment_date = recomment_date;
	}
	public int getRecomment_state() {
		return recomment_state;
	}
	public void setRecomment_state(int recomment_state) {
		this.recomment_state = recomment_state;
	}
	public int getRecomment_report() {
		return recomment_report;
	}
	public void setRecomment_report(int recomment_report) {
		this.recomment_report = recomment_report;
	}
	public String getRecomment_profile() {
		return recomment_profile;
	}
	public void setRecomment_profile(String recomment_profile) {
		this.recomment_profile = recomment_profile;
	}
	public String getRecomment_id() {
		return recomment_id;
	}
	public void setRecomment_id(String recomment_id) {
		this.recomment_id = recomment_id;
	}
	@Override
	public String toString() {
		return "RecommentDto [recomment_code=" + recomment_code + ", recomment_boardcode=" + recomment_boardcode
				+ ", recomment_writer=" + recomment_writer + ", recomment_content=" + recomment_content
				+ ", recomment_date=" + recomment_date + ", recomment_state=" + recomment_state + ", recomment_report="
				+ recomment_report + ", recomment_profile=" + recomment_profile + ", recomment_id=" + recomment_id
				+ ", member_profile=" + member_profile + "]";
	}
	
	
	
}
