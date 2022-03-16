package com.ion.service;

import java.util.List;

import com.ion.vo.BlogVO;
import com.ion.vo.CalVO;


public interface BlogService {
	
	public List<BlogVO> view_blog_notice();
	
	public void insertCal(CalVO cal);
	
	public void insert_blog_notice(BlogVO blog);
	
	public int listcount(BlogVO blog);

	public List<BlogVO> view_notice_list(BlogVO blog);
	
	public BlogVO view_notice_cont(int notice_no);

	public void updateHit(int notice_no);

	public void deleteNotice(int notice_no);

	public void editNotice(BlogVO blog);

	public void viewup(int notice_no);

	public BlogVO getView(int notice_no);

	
	
}
