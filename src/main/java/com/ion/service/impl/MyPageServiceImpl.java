package com.ion.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.mapper.MyPageMapper;
import com.ion.service.MyPageService;
import com.ion.vo.MyPageVO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageMapper myMapper;
	
	@Override
	public List<MyPageVO> view_notice_list() {
		
		return myMapper.view_notice_list();
	}

//	@Override
//	public String view_notice_cont() {
//		return myMapper.view_notice_cont();
//	}

	@Override
	public MyPageVO view_notice_cont(int system_notice_no) {
		return this.myMapper.view_notice_cont(system_notice_no);
	}
	
	@Override
	public String add_notice() {
		return myMapper.add_notice();
	}

	@Override
	public void insertNotice(MyPageVO myPage) {
		this.myMapper.insertNotice(myPage);
	}

}
