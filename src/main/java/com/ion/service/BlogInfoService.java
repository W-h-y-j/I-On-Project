package com.ion.service;

import com.ion.vo.BlogInfoVO;

public interface BlogInfoService {


	void insertInfo(BlogInfoVO iv);

	void deleteInfo(String iv_centerid);

	BlogInfoVO getInfoCont(String pr_id) throws Exception;

	String delfile(String iv_centerid);

	BlogInfoVO sample2(String sampleid);

}
