package com.ion.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ion.vo.BlogProfileVO;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class BlogProfileDAOImlp implements BlogProfileDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertProfile(BlogProfileVO bp) {
		this.sqlSession.insert("profile_in", bp);
	}

	@Override
	public BlogProfileVO getProfile(String pr_id) {
		
		return this.sqlSession.selectOne("bm",pr_id);
	}

	@Override
	public void deleteProfile(String pr_id) {
		this.sqlSession.delete("dp", pr_id);
		
	}

	@Override
	public String delfile(String pr_id) {
		return this.sqlSession.selectOne("bdf",pr_id);
	}

	@Override
	public BlogProfileVO sample(String sampleid) {
		return this.sqlSession.selectOne("sam",sampleid);
	}
}
