package com.GroupProject.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class DogInfoDto {

	private String dog_owner;
	private String dog_name;
	private String dog_type;
	private double dog_weight;
	private String dog_gender;
	private String dog_spaying;
	private int dog_state;
	private String dog_image;
	private String dog_fileState;
	private String dog_birth;
	private MultipartFile dog_file;
	
	
	@Override
	public String toString() {
		return "DogInfoDto [dog_owner=" + dog_owner + ", dog_name=" + dog_name + ", dog_type=" + dog_type
				+ ", dog_weight=" + dog_weight + ", dog_gender=" + dog_gender + ", dog_spaying=" + dog_spaying
				+ ", dog_state=" + dog_state + ", dog_image=" + dog_image + ", dog_fileState=" + dog_fileState
				+ ", dog_birth=" + dog_birth + ", dog_file=" + dog_file + "]";
	}
	public String getDog_fileState() {
		return dog_fileState;
	}
	public void setDog_fileState(String dog_fileState) {
		this.dog_fileState = dog_fileState;
	}
	public String getDog_spaying() {
		return dog_spaying;
	}
	public void setDog_spaying(String dog_spaying) {
		this.dog_spaying = dog_spaying;
	}
	public String getDog_owner() {
		return dog_owner;
	}
	public void setDog_owner(String dog_owner) {
		this.dog_owner = dog_owner;
	}
	public String getDog_name() {
		return dog_name;
	}
	public void setDog_name(String dog_name) {
		this.dog_name = dog_name;
	}
	public String getDog_type() {
		return dog_type;
	}
	public void setDog_type(String dog_type) {
		this.dog_type = dog_type;
	}
	public double getDog_weight() {
		return dog_weight;
	}
	public void setDog_weight(double dog_weight) {
		this.dog_weight = dog_weight;
	}
	public String getDog_gender() {
		return dog_gender;
	}
	public void setDog_gender(String dog_gender) {
		this.dog_gender = dog_gender;
	}
	public int getDog_state() {
		return dog_state;
	}
	public void setDog_state(int dog_state) {
		this.dog_state = dog_state;
	}
	public String getDog_image() {
		return dog_image;
	}
	public void setDog_image(String dog_image) {
		this.dog_image = dog_image;
	}
	public String getDog_birth() {
		return dog_birth;
	}
	public void setDog_birth(String dog_birth) {
		this.dog_birth = dog_birth;
	}
	public MultipartFile getDog_file() {
		return dog_file;
	}
	public void setDog_file(MultipartFile dog_file) {
		this.dog_file = dog_file;
	}
	
	
}
