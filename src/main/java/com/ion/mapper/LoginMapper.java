package com.ion.mapper;

import java.util.List;
import java.util.Map;

import com.ion.vo.LoginVO;

public interface LoginMapper {
	
	LoginVO read(String center_id);
	
	void insertCenterUser(LoginVO loginVo);

	LoginVO loginUser(String login_id);

	LoginVO idCheck(String center_id);

	List<LoginVO> center_find(String center_name);

	int totalCenterCount(List<LoginVO> centerList);
	
	LoginVO donorRead(String user_id);
	
	void insertDonor(Map<String, Object> param);

	LoginVO Adminread(String center_id);

	
}
