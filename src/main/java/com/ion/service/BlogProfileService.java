package com.ion.service;

import com.ion.vo.BlogProfileVO;

public interface BlogProfileService {

	void insertProfile(BlogProfileVO bp);

	BlogProfileVO getBbsCont(String pr_id) throws Exception;

	void deleteProfile(String pr_id);

	String delfile(String pr_id);

	BlogProfileVO getBbsSample(String sampleid);

}
