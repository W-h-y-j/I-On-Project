package com.ion.service;

import java.util.List;

import com.ion.vo.MyPageVO;

public interface MyPageService {
	
	public List<MyPageVO> view_notice_list(MyPageVO mypage);

	MyPageVO view_notice_cont(int system_notice_no);

	public void insertNotice(MyPageVO myPage);

	public int totalNoticeCount(MyPageVO mypage);

	public void deleteNotice(int system_notice_no);

	public void modNotice(MyPageVO myPage);

}
