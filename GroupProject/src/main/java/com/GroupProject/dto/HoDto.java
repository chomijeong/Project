package com.GroupProject.dto;

import lombok.Data;

@Data
public class HoDto {

	private String ho_code;
	private String ho_name;
	private String ho_addr;
	private String ho_tel;
	private int ho_state;
	public String getHo_code() {
		return ho_code;
	}
	public void setHo_code(String ho_code) {
		this.ho_code = ho_code;
	}
	public String getHo_name() {
		return ho_name;
	}
	public void setHo_name(String ho_name) {
		this.ho_name = ho_name;
	}
	public String getHo_addr() {
		return ho_addr;
	}
	public void setHo_addr(String ho_addr) {
		this.ho_addr = ho_addr;
	}
	public String getHo_tel() {
		return ho_tel;
	}
	public void setHo_tel(String ho_tel) {
		this.ho_tel = ho_tel;
	}
	public int getHo_state() {
		return ho_state;
	}
	public void setHo_state(int ho_state) {
		this.ho_state = ho_state;
	}
	@Override
	public String toString() {
		return "HoDto [ho_code=" + ho_code + ", ho_name=" + ho_name + ", ho_addr=" + ho_addr + ", ho_tel=" + ho_tel
				+ ", ho_state=" + ho_state + "]";
	}

}
