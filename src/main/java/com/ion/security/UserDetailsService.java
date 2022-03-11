package com.ion.security;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.ion.mapper.LoginMapper;
import com.ion.security.domain.CustomOauthUser;
import com.ion.security.domain.CustomUser;
import com.ion.vo.LoginVO;

import lombok.Setter;

public class UserDetailsService extends DefaultOAuth2UserService implements org.springframework.security.core.userdetails.UserDetailsService {

	@Setter(onMethod_ = {@Autowired})
	private LoginMapper loginMapper;
	
	// 센터 로그인 
	@Override
	public UserDetails loadUserByUsername(String center_id) throws UsernameNotFoundException {
		
		System.out.println("Load User id : " + center_id);
		LoginVO vo = loginMapper.read(center_id);
		
		System.out.println("query by member: " + vo);
		
		return vo == null? null : new CustomUser(vo);
	}
	
	// SNS 로그인
	@Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		String attributeName = userRequest.getClientRegistration().getProviderDetails().getUserInfoEndpoint().getUserNameAttributeName();

        String clientName = userRequest.getClientRegistration().getClientName();

        DefaultOAuth2User oAuth2User = (DefaultOAuth2User) super.loadUser(userRequest);
        
        Map<String, Object> param = oAuth2User.getAttributes();
        if("Naver".equals(clientName)) {
        	param = (Map<String, Object>) param.get(attributeName);
        } else if("Kakao".equals(clientName)) {
        	Map<String, Object> prop = (Map<String, Object>) param.get("properties");
        	Map<String, Object> nParam = new HashMap<String, Object>();
        	nParam.putAll(param);
        	nParam.put("name",prop.get("nickname"));
        	
        	prop = (Map<String, Object>) param.get("kakao_account");
         	nParam.put("email",prop.get("email"));
        	
        	param = nParam;
        }
        
        param.put("sns", clientName);
        LoginVO vo = loginMapper.donorRead(param.get("email").toString());
    	param.put("sns", clientName);
    	if(vo == null) {
    		loginMapper.insertDonor(param);
    		vo = loginMapper.donorRead(param.get("email").toString());
    	}
    	
    	return new CustomOauthUser(oAuth2User, attributeName, vo);
	}
}
