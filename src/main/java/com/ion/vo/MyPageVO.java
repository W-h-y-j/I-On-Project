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
	
	//후원이력 
	private String hp_title;
	private String hp_user_real_time;
	private String hp_reflect;
	private String hp_endate;
	private String hp_user_id;
}
