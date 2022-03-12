package com.ion.service;

import java.util.List;

import com.ion.vo.LoginVO;

public interface LoginService {
	
	void insertUser(LoginVO loginVo);
	LoginVO idCheck(String center_id);
	List<LoginVO> center_find(String center_name);
	int totalCenter(List<LoginVO> centerList);
	
	
}
