package com.ion.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BlogProfileVO {
	
	private String pr_id;
	private String pr_centername;
	private String pr_tell;
	private String pr_address;
	private String pr_img;
	private String pr_cont;
	
	//센터유저 테이블 받기용
	private String center_name;
	private String center_add;
	private String center_tel;
	
	
	//이미지 파일 받기용
	private String ag_centerid;
	private int ag_no;
	
	//자원봉사 받기용
	private String hp_centerid;
	private int hp_no;
	private String hp_title;
	
	//공지사항 받기용
	private String notice_title;
	private String notice_writer;
	private int notice_no;
}
