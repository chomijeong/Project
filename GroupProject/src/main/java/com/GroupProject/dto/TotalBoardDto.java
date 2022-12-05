package com.GroupProject.dto;

import lombok.Data;

@Data
public class TotalBoardDto {

	private String total_code;
	private String total_writer;
	private String total_date;
	private String total_title;
	private String total_content;
	private String total_file;
	private int total_hits;
	private int total_state;
	private int total_report;
	
	private String total_codename;

	public String getTotal_code() {
		return total_code;
	}

	public void setTotal_code(String total_code) {
		this.total_code = total_code;
	}

	public String getTotal_writer() {
		return total_writer;
	}

	public void setTotal_writer(String total_writer) {
		this.total_writer = total_writer;
	}

	public String getTotal_date() {
		return total_date;
	}

	public void setTotal_date(String total_date) {
		this.total_date = total_date;
	}

	public String getTotal_title() {
		return total_title;
	}

	public void setTotal_title(String total_title) {
		this.total_title = total_title;
	}

	public String getTotal_content() {
		return total_content;
	}

	public void setTotal_content(String total_content) {
		this.total_content = total_content;
	}

	public String getTotal_file() {
		return total_file;
	}

	public void setTotal_file(String total_file) {
		this.total_file = total_file;
	}

	public int getTotal_hits() {
		return total_hits;
	}

	public void setTotal_hits(int total_hits) {
		this.total_hits = total_hits;
	}

	public int getTotal_state() {
		return total_state;
	}

	public void setTotal_state(int total_state) {
		this.total_state = total_state;
	}

	public int getTotal_report() {
		return total_report;
	}

	public void setTotal_report(int total_report) {
		this.total_report = total_report;
	}

	public String getTotal_codename() {
		return total_codename;
	}

	public void setTotal_codename(String total_codename) {
		this.total_codename = total_codename;
	}

	@Override
	public String toString() {
		return "TotalBoardDto [total_code=" + total_code + ", total_writer=" + total_writer + ", total_date="
				+ total_date + ", total_title=" + total_title + ", total_content=" + total_content + ", total_file="
				+ total_file + ", total_hits=" + total_hits + ", total_state=" + total_state + ", total_report="
				+ total_report + ", total_codename=" + total_codename + "]";
	}
	
	

}
