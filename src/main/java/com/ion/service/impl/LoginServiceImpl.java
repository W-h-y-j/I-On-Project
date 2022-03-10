package com.ion.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.mapper.LoginMapper;
import com.ion.service.LoginService;
import com.ion.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public void insertUser(LoginVO loginVo) {
		this.loginMapper.insertCenterUser(loginVo);
	}

	/*
	 * @Override public LoginVO loginUser(String login_id) { return
	 * this.loginMapper.loginUser(login_id); }
	 */

	@Override
	public LoginVO idCheck(String center_id) {
		return this.loginMapper.idCheck(center_id);
	}

	@Override
	public List<LoginVO> center_find(String center_name) {
		return this.loginMapper.center_find(center_name);
	}

	@Override
	public int totalCenter(List<LoginVO> centerList) {
		return this.loginMapper.totalCenterCount(centerList);
	}


}
