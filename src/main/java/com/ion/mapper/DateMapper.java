package com.ion.mapper;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ion.vo.DateVO;

@Mapper
public interface DateMapper {	

	void insertDate(DateVO b);

	List<DateVO> getCenterList(DateVO b);

	int getListCount(DateVO b);

	DateVO getDateCont(int cno);

	void updateDate(DateVO date);

	void dateDel(int cno);

}
