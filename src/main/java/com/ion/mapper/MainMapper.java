package com.ion.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ion.vo.MainVO;

@Mapper
public interface MainMapper {
	//MainMapper.xml file의 namespace와 연동
	public List<MainVO> view_system_notice();
}
