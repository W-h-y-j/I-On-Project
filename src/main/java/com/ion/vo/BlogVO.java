package com.ion.vo;

import lombok.Data;

@Data
public class BlogVO {
	
	
private String notice_no;
	
	private String notice_div;
	private String notice_title; 	
	private String notice_date;
	private String notice_writer;
	private int notice_view;
	
	private String notice_email;
	private String notice_password;
	private String notice_content;
	private String notice_center;
	private String update_dt;
	
	
	//페이징 처리
		private int startrow;
		private int endrow;

	
}
