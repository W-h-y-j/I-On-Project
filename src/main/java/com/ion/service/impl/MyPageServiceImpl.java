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

	// 공지사항 조회
	@Override
	public MyPageVO view_notice_cont(int system_notice_no) {
		return this.myMapper.view_notice_cont(system_notice_no);
	}
	
	//공지사항 등록
	@Override
	public void insertNotice(MyPageVO myPage) {
		this.myMapper.insertNotice(myPage);
	}
	
	//전체 공지사항 count
	@Override
	public int totalNoticeCount(MyPageVO mypage) {
		return this.myMapper.totalNoticeCount(mypage);
	}

	// list 조회
	@Override
	public List<MyPageVO> view_notice_list(MyPageVO mypage) {
		return myMapper.view_notice_list(mypage);
	}

	// 삭제
	@Override
	public void deleteNotice(int system_notice_no) {
		this.myMapper.deleteNotice(system_notice_no);
	}

	// 공지사항 수정 
	@Override
	public void modNotice(MyPageVO myPage) {
		this.myMapper.modNotice(myPage);
	}
	//후원이력
	@Override
	public List<MyPageVO> getHP(String userid, MyPageVO mp) {
		
		mp.setHp_user_id(userid);
		
		return this.myMapper.get_hp(mp);
	}

	@Override
	public int HpTotal(String userid, MyPageVO mp) {
		mp.setHp_user_id(userid);
		return this.myMapper.hp_total(mp);
	}
	
	


}
