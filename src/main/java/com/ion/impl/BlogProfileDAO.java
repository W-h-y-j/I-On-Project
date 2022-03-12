package com.ion.impl;

import com.ion.vo.BlogProfileVO;

public interface BlogProfileDAO {

	void insertProfile(BlogProfileVO bp);

	BlogProfileVO getProfile(String pr_id);

	void deleteProfile(String pr_id);

	String delfile(String pr_id);

	BlogProfileVO sample(String sampleid);

}
