package com.GroupProject.dto;

public class PayDto {

	private String pay_mid;
	private int pay_amount;
	private String pay_date;
	private int pay_state;
	
	public String getPay_mid() {
		return pay_mid;
	}
	public void setPay_mid(String pay_mid) {
		this.pay_mid = pay_mid;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public int getPay_state() {
		return pay_state;
	}
	public void setPay_state(int pay_state) {
		this.pay_state = pay_state;
	}
	@Override
	public String toString() {
		return "PayDto [pay_mid=" + pay_mid + ", pay_amount=" + pay_amount + ", pay_date=" + pay_date + ", pay_state="
				+ pay_state + "]";
	}
	
	
}
