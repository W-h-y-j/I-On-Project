package com.ion.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ion.vo.BlogVO;


@Mapper
public interface BlogMapper {
	//MainMapper.xml file의 namespace와 연동
	public List<BlogVO> view_blog_notice();
	
	public List<BlogVO> showSchedule();
	
	
}
