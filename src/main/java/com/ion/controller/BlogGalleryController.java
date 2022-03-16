package com.ion.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ion.service.BlogGalleryService;
import com.ion.vo.BlogGalleryVO;


@Controller
public class BlogGalleryController {
	
	@Autowired
	private BlogGalleryService blogGalleryService;
	
	
	
	@PostMapping("/blog/Gallery/write_OK")
	public String BlogGalleryChange(BlogGalleryVO ag, MultipartHttpServletRequest multireq, HttpServletRequest request) throws Exception{
		blogGalleryService.write(ag, multireq);
		String ag_centerid2 = request.getParameter("pr_id");
		return "redirect:/blog/Gallery?pr_id="+ag.getAg_centerid();
	}
	//목록
	@RequestMapping("/blog/Gallery")
	public String GalleryList(Model listM, HttpServletRequest request, @ModelAttribute BlogGalleryVO ag) {
		int page = 1;
		int limit = 6;
		String ag_centerid2 = request.getParameter("pr_id");
		
		ag.setAg_centerid(ag_centerid2);
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int totalCount = this.blogGalleryService.getTotalCount(ag);
		
		ag.setStartrow((page-1)*6+1);//시작행
		ag.setEndrow(ag.getStartrow()+limit-1);//끝행
		
		List<BlogGalleryVO> aglist = this.blogGalleryService.getAgList(ag);
		
		
		
		int maxpage = (int)((double)totalCount/limit+0.95); //총 페이지 
		int startpage = (((int)((double)page/6+0.9))-1)*6+1;
		int endpage = maxpage;
		if(endpage > startpage+6-1) endpage = startpage+6-1;
		
		listM.addAttribute("aglist", aglist);
		listM.addAttribute("page", page);
		listM.addAttribute("startpage", startpage);
		listM.addAttribute("endpage", endpage);
		listM.addAttribute("maxpage", maxpage);
		listM.addAttribute("totalCount", totalCount);
		listM.addAttribute("centerid", ag_centerid2);
		
		
		return "/blog/BlogCenterGallery";
	}
	
	//뷰,수정
	@RequestMapping("/blog/Gallery/View")
	public ModelAndView GalleryView(Model list, int ag_no, @RequestParam("state") String state, int page, @ModelAttribute BlogGalleryVO ag) {
		//리스트로 가져와야됨. -> Gallery 테이블 것들은 리스트에서 변수로 지정. 다시 모델에 셋. 사진은 리스트 하나 만들어서 그 리스트를 셋하면 굿
		
		if(state.equals("view")) {//조회수 증가하면서 보기
			this.blogGalleryService.upHit(ag_no);
		}
		
		List<BlogGalleryVO> viewlist = this.blogGalleryService.getView(ag_no);
		
		
		
		//제목, 작성자, 작성일 , 조회수 , 내용, 아이디
		String ag_title = viewlist.get(0).getAg_title();
		
		String ag_centername = viewlist.get(0).getAg_centername();
		String ag_centerid = viewlist.get(0).getAg_centerid();
		String ag_cont = viewlist.get(0).getAg_cont().replace("\n","<br/>");
		int ag_view_count = viewlist.get(0).getAg_view_count();
		String ag_write_date = viewlist.get(0).getAg_write_date().substring(0,10);
		
		
		
		ModelAndView am = new ModelAndView();
		
		am.addObject("ag_no", ag_no);
		am.addObject("page", page);
		am.addObject("ag_title",ag_title);
		am.addObject("ag_centername", ag_centername);
		am.addObject("ag_centerid", ag_centerid);
		am.addObject("ag_cont", ag_cont);
		am.addObject("ag_view_count", ag_view_count);
		am.addObject("ag_write_date",ag_write_date);
		am.addObject("viewlist",viewlist);
		
		List<BlogGalleryVO> replylist = this.blogGalleryService.getreply(ag_no);
		if(replylist != null) {
			am.addObject("replylist", replylist);
		}
		
		if(state.equals("view")) {
			am.setViewName("/blog/view/BlogGalleryView");
		}else if(state.equals("edit")) {
			am.setViewName("/blog/edit/BlogGalleryEdit");
		}

		return am;
	}
	
	//수정
	@RequestMapping("/blog/Gallery/edit_OK")
	public String BlogGalleryEdit(int page,int ag_no,String ag_centerid, String state, BlogGalleryVO ag, MultipartHttpServletRequest multireq) throws Exception{
		
		int ag_no1=Integer.parseInt(multireq.getParameter("ag_no"));
		int page1 = Integer.parseInt(multireq.getParameter("page"));
		String ag_centerid1 = multireq.getParameter("ag_centerid");

		ag.setAg_no(ag_no1);
		ag.setAg_centerid(ag_centerid1);
		
		blogGalleryService.update(ag, multireq);
		return "redirect:/blog/Gallery/View?pr_id="+ag_centerid1+"&ag_no="+ag_no1+"&state=view&page="+page1;
	}
	
	//삭제
	@RequestMapping("/blog/Gallery/del_OK")
	public String BlogGalleryDel(@RequestParam("ag_no") int ag_no, @RequestParam("page")int page,@RequestParam("pr_id")String pr_id) {
		
		blogGalleryService.deleteag(ag_no);
		return "redirect:/blog/Gallery?pr_id="+pr_id+"&page="+page;
	}
	
	//댓글 작성
	@PostMapping("/blog/Gallery/Reply_write_OK")
	public String replyWrite(BlogGalleryVO rv, HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		
		String pr_id = request.getParameter("pr_id1");
		
		int ag_no = Integer.parseInt(request.getParameter("ag_no1"));
		
		int page = Integer.parseInt(request.getParameter("page1"));
		
		String re_writer = request.getParameter("re_writer");
		
		String re_cont = request.getParameter("re_cont").trim().replace("\n", "<br/>");
		
		
		rv.setAg_no(ag_no);
		rv.setRe_cont(re_cont);
		rv.setRe_writer(re_writer);
		
		blogGalleryService.replywrite(rv);
		
		return "redirect:/blog/Gallery/View?pr_id="+pr_id+"&ag_no="+ag_no+
				"&state=view&page="+page;
	}
	
	//댓글 수정
	@RequestMapping("/blog/Gallery/Reply_update_OK")
	public String reply_update(@RequestParam("rno") int rno, @RequestParam("re_cont") String re_cont,
			@RequestParam("pr_id")String ag_centerid, @RequestParam("ag_no") int ag_no,
			@RequestParam("page") int page, @RequestParam("state") String state,BlogGalleryVO agre) throws Exception{
		
		agre.setRno(rno);
		agre.setAg_no(ag_no);
		agre.setRe_cont(re_cont);
		
		
		
		return null;
	}
	
	//댓글 삭제
	@RequestMapping("/blog/Gallery/Reply_delete_OK")
	public String reply_delete(@RequestParam("rno") int rno,@RequestParam("pr_id")String ag_centerid, @RequestParam("ag_no") int ag_no,
			@RequestParam("page") int page, BlogGalleryVO agre) throws Exception{
			
			agre.setAg_centerid(ag_centerid);
			agre.setRno(rno);
			
			
			System.out.println(rno);
			blogGalleryService.replydelete(rno);
		
		return "redirect:/blog/Gallery/View?pr_id="+ag_centerid+"&ag_no="+ag_no+"&state=view&page="+page;
	}
}