package com.ion.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ion.vo.BlogInfoVO;

@Repository
public class BlogInfoDAOImpl implements BlogInfoDAO{
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public void insertInfo(BlogInfoVO iv) {
		this.sqlSession.insert("info_in", iv);
	}


	@Override
	public void deleteInfo(String iv_centerid) {
		this.sqlSession.delete("dinfo", iv_centerid);
	}


	@Override
	public BlogInfoVO getInfo(String pr_id) {
		return this.sqlSession.selectOne("im",pr_id);
	}


	@Override
	public String delfile(String iv_centerid) {
		return this.sqlSession.selectOne("idf",iv_centerid);
	}


	@Override
	public BlogInfoVO sample2(String sampleid) {
		return this.sqlSession.selectOne("sam2",sampleid);
	}
	
	
}
