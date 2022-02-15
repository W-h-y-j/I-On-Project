package com.ion.service;

import java.util.List;

import com.ion.vo.MyPageVO;

public interface MyPageService {
	
	public List<MyPageVO> view_notice_list();

	MyPageVO view_notice_cont(int system_notice_no);

	public String add_notice();

	public void insertNotice(MyPageVO myPage);
}
