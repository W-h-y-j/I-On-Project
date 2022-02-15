package com.ion.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ion.vo.MainVO;

@Mapper
public interface MainMapper {
	//MainMapper.xml file의 namespace와 연동
	//즉 sql을 호출하기 위한 인터페이스 ㅇㅅㅇ 
	// dao를 사용 하지 안호음으로서  SqlSession을 등록하지 않아도 됩ㄴ디ㅏ. 
	// xml 파일의 id와 동일한 이름으로 작성해야 합니다. 
	public List<MainVO> view_system_notice();
}
