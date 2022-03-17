package com.ion.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.mapper.DateMapper;
import com.ion.service.DateService;
import com.ion.vo.DateVO;

@Service
public class DateServiceImpl implements DateService {
	
	@Autowired
	private DateMapper dateMapper;

	@Override
	public void insertDate(DateVO b) {
		this.dateMapper.insertDate(b);
	}

	@Override
	public List<DateVO> getCenterList(DateVO b) {
		return this.dateMapper.getCenterList(b);
	}

	@Override
	public int getListCount(DateVO b) {
		return this.dateMapper.getListCount(b);
	}

	@Override
	public DateVO getDateCont(int cno) {
		return this.dateMapper.getDateCont(cno);
	}

	@Override
	public void updateDate(DateVO date) {
		this.dateMapper.updateDate(date);
	}

	@Override
	public void dateDel(int cno) {
		this.dateMapper.dateDel(cno);
	}	
		
}
