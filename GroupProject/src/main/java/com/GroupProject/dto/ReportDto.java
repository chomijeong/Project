package com.GroupProject.dto;

import lombok.Data;

@Data
public class ReportDto {

	private String code;
	private String member_id;
	private String boardcode;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getBoardcode() {
		return boardcode;
	}
	public void setBoardcode(String boardcode) {
		this.boardcode = boardcode;
	}
	@Override
	public String toString() {
		return "ReportDto [code=" + code + ", member_id=" + member_id + ", boardcode=" + boardcode + "]";
	}
		
	
}
