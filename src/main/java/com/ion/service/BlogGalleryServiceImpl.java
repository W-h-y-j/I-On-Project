package com.ion.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ion.controller.FileUtils;
import com.ion.impl.BlogGalleryDAO;
import com.ion.vo.BlogGalleryVO;

@Service
public class BlogGalleryServiceImpl implements BlogGalleryService{

	
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private BlogGalleryDAO blogGalleryDao;
	//작성
	@Override
	public void write(BlogGalleryVO ag, MultipartHttpServletRequest multireq) throws Exception{
		
		blogGalleryDao.write(ag);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(ag, multireq);
		for(int i=0; i<list.size(); i++) {
			
			blogGalleryDao.insertFile(list.get(i));
		}	
	}
	//총 레코드 수 조회
	@Override
	public int getTotalCount(BlogGalleryVO ag) {		
		return this.blogGalleryDao.getTotalCount(ag);
	}
	//목록 리스트
	@Override
	public List<BlogGalleryVO> getAgList(BlogGalleryVO ag) {
		return this.blogGalleryDao.getAgList(ag);
	}
	//조회수 증가
	@Override
	public void upHit(int ag_no) {
		this.blogGalleryDao.upHit(ag_no);		
	}
	//상세 보기
	@Override
	public List<BlogGalleryVO> getView(int ag_no) {
		return this.blogGalleryDao.getView(ag_no);
	}
	//수정
	@Override
	public void update(BlogGalleryVO ag, MultipartHttpServletRequest multireq) throws Exception {
		blogGalleryDao.update(ag);
		//디비 조회해서 리스트로 목록 넘버에 해당하는거 받고 파일 지우고 디비지우고 새로 등록으로 수정.
		filedel(ag.getAg_no());
		
		blogGalleryDao.delete(ag.getAg_no());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(ag, multireq);
		
		for(int i=0; i<list.size(); i++) {
			
			blogGalleryDao.updateFile(list.get(i));
		}	
		
	}
	//삭제
	@Override
	public void deleteag(int ag_no) {
		filedel(ag_no);
		blogGalleryDao.deleteag(ag_no);
		blogGalleryDao.deletereply2(ag_no);
		
	}
	
	//디비에서 지우기전에 서버에 있는 파일 먼저 지우기용 메서드
	public void filedel(int ag_no) {
		List<BlogGalleryVO> filelist = this.blogGalleryDao.getFiles(ag_no);
		String path = "C:\\20210927\\My Java\\WorkSpace8\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\I-ON_Project\\Resources\\upload";
		
		for(int i=0; i<filelist.size(); i++) {
			File file = new File(path+"/"+filelist.get(0).getAg_img());
			if(file.exists()) {
				file.delete();
			}
		}
	}
	//댓글작성
	@Override
	public void replywrite(BlogGalleryVO rv) {
		blogGalleryDao.insertreply(rv);
		
	}
	@Override
	public List<BlogGalleryVO> getreply(int ag_no) {
		return this.blogGalleryDao.getreply(ag_no);
	}
	@Override
	public void replydelete(int rno) {
		blogGalleryDao.deletereply(rno);
		
	}
	@Override
	public List<BlogGalleryVO> getMain(BlogGalleryVO ag, String pr_id) {
		int page=1;
		int limit=3;
		
		ag.setStartrow((page-1)*3+1);
		ag.setEndrow(ag.getStartrow()+limit-1);
		ag.setAg_centerid(pr_id);
		return blogGalleryDao.getMain(ag);
	}
	
	
	
	
	

	

	

	
}