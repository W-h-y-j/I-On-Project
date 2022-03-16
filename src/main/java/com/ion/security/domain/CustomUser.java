package com.ion.security.domain;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.ion.vo.LoginVO;

public class CustomUser extends User{

	private LoginVO loginVo;
	
	public CustomUser(String center_id, String password, Collection<? extends GrantedAuthority> authorities) {
		
		super(center_id, password, authorities);
	}
	
	public CustomUser(LoginVO vo) {
		super(vo.getCenter_id(), vo.getPassword() , Arrays.asList(new SimpleGrantedAuthority(vo.getAuth())));
		
		this.loginVo = vo;
	}
	
	public LoginVO getLoginVo() {
		return loginVo;
	}
}
