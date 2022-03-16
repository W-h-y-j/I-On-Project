package com.ion.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ion.vo.BlogVO;
import com.ion.vo.CalVO;


@Mapper
public interface BlogMapper {
	//MainMapper.xml file의 namespace와 연동
	public List<BlogVO> view_blog_notice();
	
	public void insertCal(CalVO cal);

	public void insert_blog_notice(BlogVO blog);

	public int listcount(BlogVO blog);
	//게시판 조회
	public BlogVO view_notice_cont(int notice_no);

	public List<BlogVO> view_notice_list(BlogVO blog);

	public void updateHit(int notice_no);

	public void deleteNotice(int notice_no);

	public void editNotice(BlogVO blog);

	public void viewup(int notice_no);

	public BlogVO getView(int notice_no);


	
}
