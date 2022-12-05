package com.GroupProject.dto;

import lombok.Data;

@Data
public class MissingDto {
 
	private String missing_code;
	private String missing_writer;
	private String missing_date;
	private String missing_title;
	private String missing_content;
	private String missing_file;
	private int missing_hits;
	private int missing_state;
	private int missing_replycount;
	public String getMissing_code() {
		return missing_code;
	}
	public void setMissing_code(String missing_code) {
		this.missing_code = missing_code;
	}
	public String getMissing_writer() {
		return missing_writer;
	}
	public void setMissing_writer(String missing_writer) {
		this.missing_writer = missing_writer;
	}
	public String getMissing_date() {
		return missing_date;
	}
	public void setMissing_date(String missing_date) {
		this.missing_date = missing_date;
	}
	public String getMissing_title() {
		return missing_title;
	}
	public void setMissing_title(String missing_title) {
		this.missing_title = missing_title;
	}
	public String getMissing_content() {
		return missing_content;
	}
	public void setMissing_content(String missing_content) {
		this.missing_content = missing_content;
	}
	public String getMissing_file() {
		return missing_file;
	}
	public void setMissing_file(String missing_file) {
		this.missing_file = missing_file;
	}
	public int getMissing_hits() {
		return missing_hits;
	}
	public void setMissing_hits(int missing_hits) {
		this.missing_hits = missing_hits;
	}
	public int getMissing_state() {
		return missing_state;
	}
	public void setMissing_state(int missing_state) {
		this.missing_state = missing_state;
	}
	public int getMissing_replycount() {
		return missing_replycount;
	}
	public void setMissing_replycount(int missing_replycount) {
		this.missing_replycount = missing_replycount;
	}
	@Override
	public String toString() {
		return "MissingDto [missing_code=" + missing_code + ", missing_writer=" + missing_writer + ", missing_date="
				+ missing_date + ", missing_title=" + missing_title + ", missing_content=" + missing_content
				+ ", missing_file=" + missing_file + ", missing_hits=" + missing_hits + ", missing_state="
				+ missing_state + ", missing_replycount=" + missing_replycount + "]";
	}

	
	
}
