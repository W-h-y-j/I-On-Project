package com.ion.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.impl.BlogProfileDAO;
import com.ion.vo.BlogProfileVO;

@Service
public class BlogProfileServiceImpl implements BlogProfileService{

	@Autowired
	private BlogProfileDAO blogProfileDao;

	@Override
	public void insertProfile(BlogProfileVO bp) {
		this.blogProfileDao.insertProfile(bp);
	}

	@Override
	public BlogProfileVO getBbsCont(String pr_id) throws Exception{
		return this.blogProfileDao.getProfile(pr_id);
	}

	@Override
	public void deleteProfile(String pr_id) {
		this.blogProfileDao.deleteProfile(pr_id);
		
	}

	@Override
	public String delfile(String pr_id) {
		return this.blogProfileDao.delfile(pr_id);
	}

	@Override
	public BlogProfileVO getBbsCont2(String pr_id) {
		return this.blogProfileDao.getidinfo(pr_id);
	}


}
