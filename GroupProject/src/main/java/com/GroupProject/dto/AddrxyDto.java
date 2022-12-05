package com.GroupProject.dto;

import lombok.Data;

@Data
public class AddrxyDto {

	private String addr;
	private String detailaddr;
	private int x;
	private int y;
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetailaddr() {
		return detailaddr;
	}
	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	@Override
	public String toString() {
		return "AddrxyDto [addr=" + addr + ", detailaddr=" + detailaddr + ", x=" + x + ", y=" + y + "]";
	}
	
	
}
