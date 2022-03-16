package com.ion.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.mapper.MainMapper;
import com.ion.service.MainService;
import com.ion.vo.CenterVO;
import com.ion.vo.MainVO;

@Service
public class MainServiceImpl implements MainService {

	// @Autowired를 이용하여 Spring이 MainMapper를 참조함
	@Autowired
	private MainMapper mapper;
	
	// MainMapper와 연동된 Mainmapper.xml 를 참고하여 객체 생성후 mapper에 주입함 --> 이것을 Dependency Injection이라 함 (의존성 주입)
	
	
	// 의존성 주입을 받은 mapper가 MainMapper 인터페이스에 가서 Mainmapper.xml에 view_system_notice를 참조하여 sql문을 리턴 해줌
	@Override
	public List<MainVO> view_system_notice() {		
		return mapper.view_system_notice();		
	}

	@Override
	public List<CenterVO> getCenterList(CenterVO b) {
		return this.mapper.getCenterList(b);
	}

	@Override
	public int getListCount(CenterVO b) {
		return this.mapper.getListCount(b);
	}
	
	@Override
	public List<MainVO> view_blog_notice() {		
		return mapper.view_blog_notice();
	}
	
	@Override
	public List<MainVO> view_blog_help() {
		return mapper.view_blog_help();
	}
	

	
	
	

}
