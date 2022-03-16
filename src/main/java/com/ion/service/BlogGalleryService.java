package com.ion.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ion.vo.BlogGalleryVO;

public interface BlogGalleryService {

	

	void write(BlogGalleryVO ag, MultipartHttpServletRequest multireq) throws Exception;

	int getTotalCount(BlogGalleryVO ag);

	List<BlogGalleryVO> getAgList(BlogGalleryVO ag);

	void upHit(int ag_no);

	List<BlogGalleryVO> getView(int ag_no);

	void update(BlogGalleryVO ag, MultipartHttpServletRequest multireq) throws Exception;

	void deleteag(int ag_no);
	//댓글작성
	void replywrite(BlogGalleryVO rv);

	List<BlogGalleryVO> getreply(int ag_no);

	void replydelete(int rno);

	List<BlogGalleryVO> getMain(BlogGalleryVO ag, String pr_id);

	

	

	

	

	

	


}
