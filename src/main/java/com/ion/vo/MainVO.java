package com.ion.vo;

import java.util.Date;

import javax.annotation.Generated;

public class MainVO {
	
	// sample로 넣은 시스템 공지사항
	private String title;
	private Date insert_dt;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getInsert_dt() {
		return insert_dt;
	}
	public void setInsert_dt(Date insert_dt) {
		this.insert_dt = insert_dt;
	}
	
}
