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

}
