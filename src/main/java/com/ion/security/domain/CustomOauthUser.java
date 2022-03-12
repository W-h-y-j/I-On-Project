package com.ion.security.domain;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;

import com.ion.vo.LoginVO;

public class CustomOauthUser extends DefaultOAuth2User{
	private LoginVO loginVo;
	
	public CustomOauthUser(Collection<? extends GrantedAuthority> authorities, Map<String, Object> attributes,
			String nameAttributeKey) {
		super(authorities, attributes, nameAttributeKey);
		// TODO Auto-generated constructor stub
	}
	
	
	public CustomOauthUser(DefaultOAuth2User oUser, String nameAttributeKey, LoginVO vo) {
		super( Collections.singleton(new SimpleGrantedAuthority("DONOR_ROLE")), oUser.getAttributes(), nameAttributeKey);
		this.loginVo = vo;	
		// TODO Auto-generated constructor stub
	}
	
}
