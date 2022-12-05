package com.GroupProject.dto;

public class DogTypeDto {
	
	private String dog_type;

	public String getDog_type() {
		return dog_type;
	}

	public void setDog_type(String dog_type) {
		this.dog_type = dog_type;
	}

	
	@Override
	public String toString() {
		return "DogTypeDto [dog_type=" + dog_type + "]";
	}
	
}
