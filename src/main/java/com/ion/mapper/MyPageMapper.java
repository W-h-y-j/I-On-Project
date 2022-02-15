package com.ion.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.ion.vo.MyPageVO;

@Mapper
public interface MyPageMapper {
	
	public List<MyPageVO> view_notice_list();

	MyPageVO view_notice_cont(int system_notice_no);

	public String add_notice();

	public void insertNotice(MyPageVO myPage);
}
