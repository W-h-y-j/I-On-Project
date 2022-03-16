package com.ion.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ion.vo.BlogGalleryVO;


@Repository
public class BlogGalleryDAOImpl implements BlogGalleryDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertFile(Map<String, Object> map) throws Exception{
		
		sqlSession.insert("in_gal",map);
	}

	@Override
	public void write(BlogGalleryVO ag) {
		sqlSession.insert("ag_ti",ag);
		
	}

	@Override
	public int getTotalCount(BlogGalleryVO ag) {
		return this.sqlSession.selectOne("ag_count",ag);
	}

	@Override
	public List<BlogGalleryVO> getAgList(BlogGalleryVO ag) {
		return this.sqlSession.selectList("ag_list",ag);
	}

	@Override
	public void upHit(int ag_no) {
		this.sqlSession.update("uphit",ag_no);	
	}

	@Override
	public List<BlogGalleryVO> getView(int ag_no) {
		return this.sqlSession.selectList("getView",ag_no);
	}

	
	//수정 상세내역
	@Override
	public void update(BlogGalleryVO ag) {
		sqlSession.update("ag_up0", ag);
		
	}

	@Override
	public void delete(int ag_no) {
		sqlSession.delete("ag_updel",ag_no);
		
	}

	@Override
	public void updateFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("ag_upin", map);
		
	}

	@Override
	public void deleteag(int ag_no) {
		sqlSession.delete("ag_info",ag_no);
		sqlSession.delete("ag_updel",ag_no);
		
	}

	@Override
	public List<BlogGalleryVO> getFiles(int ag_no) {
		return this.sqlSession.selectList("filelist",ag_no);
	}
//댓글
	@Override
	public void insertreply(BlogGalleryVO rv) {
		sqlSession.insert("re_in",rv);
		
	}

	@Override
	public List<BlogGalleryVO> getreply(int ag_no) {
		return sqlSession.selectList("re_get", ag_no);
	}

	@Override
	public void deletereply(int rno) {
		sqlSession.delete("re_del",rno);
	}

	@Override
	public void deletereply2(int ag_no) {
		sqlSession.delete("re_del2",ag_no);
		
	}

	@Override
	public List<BlogGalleryVO> getMain(BlogGalleryVO ag) {
		
		return sqlSession.selectList("get_main", ag);
	}

	
	

	

	


	

	
}
