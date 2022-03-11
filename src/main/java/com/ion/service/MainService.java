package com.ion.service;

import java.util.List;

import com.ion.vo.CenterVO;
import com.ion.vo.MainVO;

public interface MainService {
	/* String selectTest() throws Exception; */
	
	
	// MainVO 타입만 담을 수 있는 list 타입으로 메서드 정의 하고 Mapper 파일에서 불러올 sql문의 id를 매서드 명으로 입력해준다. 
	public List<MainVO> view_system_notice();

	public List<CenterVO> getCenterList(CenterVO b);

	public int getListCount(CenterVO b);
	
	
}