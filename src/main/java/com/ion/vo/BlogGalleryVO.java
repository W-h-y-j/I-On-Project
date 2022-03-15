package com.ion.vo;



import lombok.Data;


@Data
public class BlogGalleryVO {
	private String ag_centerid;
	private String centerpwd;
	private String ag_centername;
	private String ag_pwd;
	private String ag_title;
	private String ag_img;
	private String ag_cont;
	private String ag_write_date;
	private int ag_no;
	private String ORG_FILE_NAME;
	private int file_no;
	private int FILE_SIZE;
	private int ag_view_count;
	
	//페이징용
	private int startrow;
	private int endrow;
	
	
	//댓글용
	private int rno;
	private String re_writer;
	private String re_cont;
	private String redate;

	
}
