package com.ion.vo;

import lombok.Data;

@Data
public class DateVO {
	
	//Center_Date
	private int cno;
	private String center_name;
	private String center_title;
	private String center_cont;
	private String center_date;
	private String start1;
	private String end1;
	private boolean allday;
	
	//페이징 쪽나누기 관련변수
    private int startrow;//시작행 번호
    private int endrow;//끝행 번호
    
    //검색기능
    private String find_name;//검색어
    private String find_field;//검색필드

}
