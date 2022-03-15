package com.ion.service;

import java.util.List;

import com.ion.vo.BlogHelpVO;

public interface BlogHelpService {

	void insert(BlogHelpVO hp);

	int getTotalCount(BlogHelpVO hp);

	List<BlogHelpVO> gethplist(BlogHelpVO hp);

	void upHit(int hp_no);

	BlogHelpVO getVeiw(int hp_no);

	void update(BlogHelpVO hp);

	BlogHelpVO getCal(int hp_no);

	void insertRS(BlogHelpVO hp);

	List<BlogHelpVO> getrslist(int hp_no);

	void updateRS(BlogHelpVO hp);

	void finish(BlogHelpVO hp);

	List<BlogHelpVO> getMain2(BlogHelpVO hp, String pr_id);

	

	
	

	

	

	

}
