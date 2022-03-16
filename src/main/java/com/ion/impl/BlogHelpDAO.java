package com.ion.impl;

import java.util.List;

import com.ion.vo.BlogHelpVO;

public interface BlogHelpDAO {

	void insert(BlogHelpVO hp);

	int total(BlogHelpVO hp);

	List<BlogHelpVO> getlist(BlogHelpVO hp);

	void upHit(int hp_no);

	BlogHelpVO getView(int hp_no);

	void update(BlogHelpVO hp);

	BlogHelpVO getCal(int hp_no);

	void insertRS(BlogHelpVO hp);

	List<BlogHelpVO> getrslist(int hp_no);

	void updateRS(BlogHelpVO hp);

	void finish(BlogHelpVO hp);

	List<BlogHelpVO> main(BlogHelpVO hp);

	
	

	
	

	

}
