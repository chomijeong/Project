package com.GroupProject.dto;

import lombok.Data;

@Data
public class WalkboardDto {

	private String walk_code;
	private String walk_writer;
	private String walk_date;
	private String walk_title;
	private String walk_content;
	private String walk_file;
	private int walk_hits;
	private int walk_state;
	private int walk_replycount;
	private String walk_map;
	private String walk_mid;
	private int walk_recommend;
	private int walk_decommend;
	private String walk_weatherinfo;
	private String walk_bodytype;
	private String walk_startaddr;
	private int page;
	private int maxPage;
	private int startPage;
	private int endPage;
	private String walk_time;
	private int walk_people;
	private String walk_crewcode;
	
	private int checkcode;

	public String getWalk_code() {
		return walk_code;
	}

	public void setWalk_code(String walk_code) {
		this.walk_code = walk_code;
	}

	public String getWalk_writer() {
		return walk_writer;
	}

	public void setWalk_writer(String walk_writer) {
		this.walk_writer = walk_writer;
	}

	public String getWalk_date() {
		return walk_date;
	}

	public void setWalk_date(String walk_date) {
		this.walk_date = walk_date;
	}

	public String getWalk_title() {
		return walk_title;
	}

	public void setWalk_title(String walk_title) {
		this.walk_title = walk_title;
	}

	public String getWalk_content() {
		return walk_content;
	}

	public void setWalk_content(String walk_content) {
		this.walk_content = walk_content;
	}

	public String getWalk_file() {
		return walk_file;
	}

	public void setWalk_file(String walk_file) {
		this.walk_file = walk_file;
	}

	public int getWalk_hits() {
		return walk_hits;
	}

	public void setWalk_hits(int walk_hits) {
		this.walk_hits = walk_hits;
	}

	public int getWalk_state() {
		return walk_state;
	}

	public void setWalk_state(int walk_state) {
		this.walk_state = walk_state;
	}

	public int getWalk_replycount() {
		return walk_replycount;
	}

	public void setWalk_replycount(int walk_replycount) {
		this.walk_replycount = walk_replycount;
	}

	public String getWalk_map() {
		return walk_map;
	}

	public void setWalk_map(String walk_map) {
		this.walk_map = walk_map;
	}

	public String getWalk_mid() {
		return walk_mid;
	}

	public void setWalk_mid(String walk_mid) {
		this.walk_mid = walk_mid;
	}

	public int getWalk_recommend() {
		return walk_recommend;
	}

	public void setWalk_recommend(int walk_recommend) {
		this.walk_recommend = walk_recommend;
	}

	public int getWalk_decommend() {
		return walk_decommend;
	}

	public void setWalk_decommend(int walk_decommend) {
		this.walk_decommend = walk_decommend;
	}

	public String getWalk_weatherinfo() {
		return walk_weatherinfo;
	}

	public void setWalk_weatherinfo(String walk_weatherinfo) {
		this.walk_weatherinfo = walk_weatherinfo;
	}

	public String getWalk_bodytype() {
		return walk_bodytype;
	}

	public void setWalk_bodytype(String walk_bodytype) {
		this.walk_bodytype = walk_bodytype;
	}

	public String getWalk_startaddr() {
		return walk_startaddr;
	}

	public void setWalk_startaddr(String walk_startaddr) {
		this.walk_startaddr = walk_startaddr;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
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

	public String getWalk_time() {
		return walk_time;
	}

	public void setWalk_time(String walk_time) {
		this.walk_time = walk_time;
	}

	public int getWalk_people() {
		return walk_people;
	}

	public void setWalk_people(int walk_people) {
		this.walk_people = walk_people;
	}

	public int getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(int checkcode) {
		this.checkcode = checkcode;
	}

	@Override
	public String toString() {
		return "WalkboardDto [walk_code=" + walk_code + ", walk_writer=" + walk_writer + ", walk_date=" + walk_date
				+ ", walk_title=" + walk_title + ", walk_content=" + walk_content + ", walk_file=" + walk_file
				+ ", walk_hits=" + walk_hits + ", walk_state=" + walk_state + ", walk_replycount=" + walk_replycount
				+ ", walk_map=" + walk_map + ", walk_mid=" + walk_mid + ", walk_recommend=" + walk_recommend
				+ ", walk_decommend=" + walk_decommend + ", walk_weatherinfo=" + walk_weatherinfo + ", walk_bodytype="
				+ walk_bodytype + ", walk_startaddr=" + walk_startaddr + ", page=" + page + ", maxPage=" + maxPage
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", walk_time=" + walk_time + ", walk_people="
				+ walk_people + ", checkcode=" + checkcode + "]";
	}
	
	
	
}
