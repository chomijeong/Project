package com.GroupProject.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class MembersDto {

	private String member_id;		// 아이디
	private String member_pw;		// 비밀번호
	private String member_name;		// 이름
	private String member_birth;	// 생년월일
	private String member_tel;		// 연락처
	private String member_email;	// 이메일
	// 이메일 분리
	private String member_emailid; 	// 이메일 아이디
	private String member_emaildomain;	// 이메일 주소 도메인
	
	
	private String member_address;	// 주소
	// 주소 분리
	private String member_addr;		// 주소
	private String member_postcode;	// 우편번호
	private String member_detailaddr;	// 상세주소
	private String member_extraaddr;	// 참고항목
	
	private String member_profile;	// 프로필 이미지
	private MultipartFile member_file;
	private String member_fileState;
	
	private String member_crewcode;	// 크루 코드
	private String member_crewname; // 소속 크루 명
	private String member_crewmaster; // 소속 크루 마스터
	private int member_state;		// 회원 상태
	private int walk_state;			// 산책 모임 상태
	private String member_gender;	// 성별
	
	private String dogsWeightCode;
	
	private String member_statename; // 회원상태여부표시
	
	@Override
	public String toString() {
		return "MembersDto [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_birth=" + member_birth + ", member_tel=" + member_tel + ", member_email=" + member_email
				+ ", member_emailid=" + member_emailid + ", member_emaildomain=" + member_emaildomain
				+ ", member_address=" + member_address + ", member_addr=" + member_addr + ", member_postcode="
				+ member_postcode + ", member_detailaddr=" + member_detailaddr + ", member_extraaddr="
				+ member_extraaddr + ", member_profile=" + member_profile + ", member_file=" + member_file
				+ ", member_fileState=" + member_fileState + ", member_crewcode=" + member_crewcode
				+ ", member_crewname=" + member_crewname + ", member_crewmaster=" + member_crewmaster
				+ ", member_state=" + member_state + ", walk_state=" + walk_state + ", member_gender=" + member_gender
				+ ", dogsWeightCode=" + dogsWeightCode + "]";
	}
	public String getDogsWeightCode() {
		return dogsWeightCode;
	}
	public void setDogsWeightCode(String dogsWeightCode) {
		this.dogsWeightCode = dogsWeightCode;
	}
	public String getMember_fileState() {
		return member_fileState;
	}
	public void setMember_fileState(String member_fileState) {
		this.member_fileState = member_fileState;
	}
	public MultipartFile getMember_file() {
		return member_file;
	}
	public void setMember_file(MultipartFile member_file) {
		this.member_file = member_file;
	}
	public String getMember_crewmaster() {
		return member_crewmaster;
	}
	public void setMember_crewmaster(String member_crewmaster) {
		this.member_crewmaster = member_crewmaster;
	}
	public String getMember_crewname() {
		return member_crewname;
	}
	public void setMember_crewname(String member_crewname) {
		this.member_crewname = member_crewname;
	}
	public String getMember_emailid() {
		return member_emailid;
	}
	public void setMember_emailid(String member_emailid) {
		this.member_emailid = member_emailid;
	}
	public String getMember_emaildomain() {
		return member_emaildomain;
	}
	public void setMember_emaildomain(String member_emaildomain) {
		this.member_emaildomain = member_emaildomain;
	}
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	public String getMember_postcode() {
		return member_postcode;
	}
	public void setMember_postcode(String member_postcode) {
		this.member_postcode = member_postcode;
	}
	public String getMember_detailaddr() {
		return member_detailaddr;
	}
	public void setMember_detailaddr(String member_detailaddr) {
		this.member_detailaddr = member_detailaddr;
	}
	public String getMember_extraaddr() {
		return member_extraaddr;
	}
	public void setMember_extraaddr(String member_extraaddr) {
		this.member_extraaddr = member_extraaddr;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_profile() {
		return member_profile;
	}
	public void setMember_profile(String member_profile) {
		this.member_profile = member_profile;
	}
	public String getMember_crewcode() {
		return member_crewcode;
	}
	public void setMember_crewcode(String member_crewcode) {
		this.member_crewcode = member_crewcode;
	}
	public int getMember_state() {
		return member_state;
	}
	public void setMember_state(int member_state) {
		this.member_state = member_state;
	}
	public int getWalk_state() {
		return walk_state;
	}
	public void setWalk_state(int walk_state) {
		this.walk_state = walk_state;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	
	
}
