package com.GroupProject.dto;

import lombok.Data;

@Data
public class BoardDto {
	
	private String board_code;
	private String board_writer;
	private String board_date;
	private String board_title;
	private String board_content;
	private String board_file;
	private int board_hits;
	private int board_state;
	private int board_replycount;
	private int board_report;
	private int board_recommend;
	private int board_decommend;
	public String getBoard_code() {
		return board_code;
	}
	public void setBoard_code(String board_code) {
		this.board_code = board_code;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_file() {
		return board_file;
	}
	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}
	public int getBoard_hits() {
		return board_hits;
	}
	public void setBoard_hits(int board_hits) {
		this.board_hits = board_hits;
	}
	public int getBoard_state() {
		return board_state;
	}
	public void setBoard_state(int board_state) {
		this.board_state = board_state;
	}
	public int getBoard_replycount() {
		return board_replycount;
	}
	public void setBoard_replycount(int board_replycount) {
		this.board_replycount = board_replycount;
	}
	public int getBoard_report() {
		return board_report;
	}
	public void setBoard_report(int board_report) {
		this.board_report = board_report;
	}
	public int getBoard_recommend() {
		return board_recommend;
	}
	public void setBoard_recommend(int board_recommend) {
		this.board_recommend = board_recommend;
	}
	public int getBoard_decommend() {
		return board_decommend;
	}
	public void setBoard_decommend(int board_decommend) {
		this.board_decommend = board_decommend;
	}
	@Override
	public String toString() {
		return "BoardDto [board_code=" + board_code + ", board_writer=" + board_writer + ", board_date=" + board_date
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_file=" + board_file
				+ ", board_hits=" + board_hits + ", board_state=" + board_state + ", board_replycount="
				+ board_replycount + ", board_report=" + board_report + ", board_recommend=" + board_recommend
				+ ", board_decommend=" + board_decommend + "]";
	}
	
	
	
}
