package com.GroupProject.dto;

import lombok.Data;

@Data
public class CommendDto {

	private String code;
	private String member_id;
	private int commend;
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
	public int getCommend() {
		return commend;
	}
	public void setCommend(int commend) {
		this.commend = commend;
	}
	@Override
	public String toString() {
		return "CommendDto [code=" + code + ", member_id=" + member_id + ", commend=" + commend + "]";
	}

	
}
