package com.ion.mapper;

import java.util.List;

import com.ion.vo.LoginVO;

public interface LoginMapper {
	
	LoginVO read(String center_id);

	void insertCenterUser(LoginVO loginVo);

	LoginVO loginUser(String login_id);

	LoginVO idCheck(String center_id);

	List<LoginVO> center_find(String center_name);

	int totalCenterCount(List<LoginVO> centerList);

}
