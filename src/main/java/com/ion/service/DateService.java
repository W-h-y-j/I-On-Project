package com.ion.service;

import java.util.List;

import com.ion.vo.DateVO;


public interface DateService {

	void insertDate(DateVO b);

	List<DateVO> getCenterList(DateVO b);

	int getListCount(DateVO b);

	DateVO getDateCont(int cno);

	void updateDate(DateVO date);

	void dateDel(int cno);	
	
}
