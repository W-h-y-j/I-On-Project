package com.ion.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class MyPageVO {
	
	// 시스템 공지사항
	private String system_notice_no;
	private String title;
	private String content;
	private String insert_id;
	private String insert_dt;
	private String last_change_dt;
	private String last_change_id;
	
	//페이징 처리
	private int startrow;
	private int endrow;
}
