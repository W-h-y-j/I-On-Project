package com.ion.impl;

import java.util.List;
import java.util.Map;

import com.ion.vo.BlogGalleryVO;

public interface BlogGalleryDAO {

	

	void insertFile(Map<String, Object> map) throws Exception;

	void write(BlogGalleryVO ag);

	int getTotalCount(BlogGalleryVO ag);

	List<BlogGalleryVO> getAgList(BlogGalleryVO ag);

	void upHit(int ag_no);

	List<BlogGalleryVO> getView(int ag_no);

	void update(BlogGalleryVO ag);

	void delete(int ag_no);

	void updateFile(Map<String, Object> map) throws Exception;

	void deleteag(int ag_no);

	List<BlogGalleryVO> getFiles(int ag_no);
//댓글
	void insertreply(BlogGalleryVO rv);

	List<BlogGalleryVO> getreply(int ag_no);

	void deletereply(int rno);

	void deletereply2(int ag_no);

	List<BlogGalleryVO> getMain(BlogGalleryVO ag);

	

	

	

	


	

	

}
