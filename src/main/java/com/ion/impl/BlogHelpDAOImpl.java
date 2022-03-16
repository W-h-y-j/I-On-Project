package com.ion.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ion.vo.BlogHelpVO;

@Repository
public class BlogHelpDAOImpl implements BlogHelpDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insert(BlogHelpVO hp) {
		sqlSession.insert("hp_ins",hp);	
	}

	@Override
	public int total(BlogHelpVO hp) {
		return this.sqlSession.selectOne("hp_count",hp);
	}

	@Override
	public List<BlogHelpVO> getlist(BlogHelpVO hp) {
		return this.sqlSession.selectList("hp_list",hp);
	}

	@Override
	public void upHit(int hp_no) {
		sqlSession.update("hp_hit_up", hp_no);
	}

	@Override
	public BlogHelpVO getView(int hp_no) {
		return sqlSession.selectOne("hp_view",hp_no);
	}

	@Override
	public void update(BlogHelpVO hp) {
		sqlSession.update("hp_up1",hp);
	}

	@Override
	public BlogHelpVO getCal(int hp_no) {
		return sqlSession.selectOne("hp_cal", hp_no);
	}

	@Override
	public void insertRS(BlogHelpVO hp) {
		sqlSession.insert("rs_in",hp);
	}

	@Override
	public List<BlogHelpVO> getrslist(int hp_no) {
		return sqlSession.selectList("ge_rslist", hp_no);
	}

	@Override
	public void updateRS(BlogHelpVO hp) {
		sqlSession.update("rs_up", hp);
	}

	@Override
	public void finish(BlogHelpVO hp) {
		sqlSession.update("hp_up4",hp);
	}

	@Override
	public List<BlogHelpVO> main(BlogHelpVO hp) {
		return sqlSession.selectList("main_hp", hp);
	}

	
	

	

	
	
	
}
