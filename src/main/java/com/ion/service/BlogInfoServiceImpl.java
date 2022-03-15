package com.ion.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.impl.BlogInfoDAO;
import com.ion.vo.BlogInfoVO;

@Service
public class BlogInfoServiceImpl implements BlogInfoService{

	@Autowired
	private BlogInfoDAO blogInfoDao;

	@Override
	public void insertInfo(BlogInfoVO iv) {
		this.blogInfoDao.insertInfo(iv);
	}

	@Override
	public void deleteInfo(String iv_centerid) {
		this.blogInfoDao.deleteInfo(iv_centerid);
	}

	@Override
	public BlogInfoVO getInfoCont(String pr_id) throws Exception{
		return this.blogInfoDao.getInfo(pr_id);
	}

	@Override
	public String delfile(String iv_centerid) {
		return this.blogInfoDao.delfile(iv_centerid);
	}

	@Override
	public BlogInfoVO sample2(String sampleid) {
		return this.blogInfoDao.sample2(sampleid);
	}
}
