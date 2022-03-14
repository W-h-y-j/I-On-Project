package com.ion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.impl.BlogHelpDAO;
import com.ion.vo.BlogHelpVO;



@Service
public class BlogHelpServiceImpl implements BlogHelpService{

	@Autowired
	private BlogHelpDAO blogHelpDao;

	@Override
	public void insert(BlogHelpVO hp) {
		blogHelpDao.insert(hp);
		
	}

	@Override
	public int getTotalCount(BlogHelpVO hp) {
		return this.blogHelpDao.total(hp);
	}

	@Override
	public List<BlogHelpVO> gethplist(BlogHelpVO hp) {
		return this.blogHelpDao.getlist(hp);
	}

	@Override
	public void upHit(int hp_no) {
		blogHelpDao.upHit(hp_no);
	}

	@Override
	public BlogHelpVO getVeiw(int hp_no) {
		return blogHelpDao.getView(hp_no);
	}

	@Override
	public void update(BlogHelpVO hp) {
		blogHelpDao.update(hp);
	}

	@Override
	public BlogHelpVO getCal(int hp_no) {
		return this.blogHelpDao.getCal(hp_no);
	}

	@Override
	public void insertRS(BlogHelpVO hp) {
		blogHelpDao.insertRS(hp);
	}

	@Override
	public List<BlogHelpVO> getrslist(int hp_no) {
		return this.blogHelpDao.getrslist(hp_no);
	}

	@Override
	public void updateRS(BlogHelpVO hp) {
		blogHelpDao.updateRS(hp);
	}

	@Override
	public void finish(BlogHelpVO hp) {
		blogHelpDao.finish(hp);
	}

	




	
	
}
