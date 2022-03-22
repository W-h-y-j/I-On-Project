package com.ion.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MainVO {
	
	// sample로 넣은 시스템 공지사항
	private String title;
	private Date insert_dt;
	
	//center_location
	private String center_name;
	private String center_add;
	private String center_tel;
	
	//페이징 쪽나누기 관련변수
    private int startrow;//시작행 번호
    private int endrow;//끝행 번호
    
    //검색기능
    private String find_name;//검색어
    private String find_field;//검색필드
    
    //center
private int notice_no;
	
	private String notice_div;
	private String notice_title;
	private String notice_date;
	private String notice_writer;
	private String notice_center;
	
	private int notice_view;
	
	private int hp_no;
	private String hp_title;
	private String hp_centername;
	private String hp_write_date;

	
	
}
