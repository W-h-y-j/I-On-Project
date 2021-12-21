package main.java.com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import main.java.com.service.MainService;

@Service("mainService")
public class MainServiceImpl implements MainService{

	@Resource(name="mainDao")
	private MainDAO mainDao;
	
	@Override
	public String selectTest() throws Exception {
		System.out.println("serviceImpl");
		return mainDao.selectTest();
	}
}