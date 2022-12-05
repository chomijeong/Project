package com.GroupProject.dto;

public class BasketDto {

	private String basket_id;
	private String basket_gcode;
	private int basket_gamount;
	private String basket_gname;
	private String basket_gimage;
	private String basket_gprice;
	
	
	public String getBasket_gname() {
		return basket_gname;
	}
	public void setBasket_gname(String basket_gname) {
		this.basket_gname = basket_gname;
	}
	public String getBasket_gimage() {
		return basket_gimage;
	}
	public void setBasket_gimage(String basket_gimage) {
		this.basket_gimage = basket_gimage;
	}
	public String getBasket_gprice() {
		return basket_gprice;
	}
	public void setBasket_gprice(String basket_gprice) {
		this.basket_gprice = basket_gprice;
	}
	public String getBasket_id() {
		return basket_id;
	}
	public void setBasket_id(String basket_id) {
		this.basket_id = basket_id;
	}
	public String getBasket_gcode() {
		return basket_gcode;
	}
	public void setBasket_gcode(String basket_gcode) {
		this.basket_gcode = basket_gcode;
	}
	public int getBasket_gamount() {
		return basket_gamount;
	}
	public void setBasket_gamount(int basket_gamount) {
		this.basket_gamount = basket_gamount;
	}
	@Override
	public String toString() {
		return "BasketDto [basket_id=" + basket_id + ", basket_gcode=" + basket_gcode + ", basket_gamount="
				+ basket_gamount + ", basket_gname=" + basket_gname + ", basket_gimage=" + basket_gimage
				+ ", basket_gprice=" + basket_gprice + "]";
	}
	
	
	
}
