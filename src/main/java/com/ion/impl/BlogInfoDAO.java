package com.ion.impl;

import com.ion.vo.BlogInfoVO;

public interface BlogInfoDAO {


	void insertInfo(BlogInfoVO iv);

	void deleteInfo(String iv_centerid);

	BlogInfoVO getInfo(String pr_id);

	String delfile(String iv_centerid);

	BlogInfoVO sample2(String sampleid);

}
