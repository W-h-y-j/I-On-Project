package com.ion.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ion.service.BlogHelpService;
import com.ion.vo.BlogHelpVO;



@Controller
public class BlogHelpController {
	
	@Autowired
	private BlogHelpService blogHelpService;
	//글 작성
	@PostMapping("/Help/Create_OK")
	public String BlogHelpCre(HttpServletRequest request, HttpServletResponse response, BlogHelpVO hp) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		String hp_title = request.getParameter("hp_title");
		String hp_centerid = request.getParameter("hp_centerid");
		String hp_cont = request.getParameter("hp_cont");
		String hp_stdate = request.getParameter("hp_stdate");
		String hp_endate = request.getParameter("hp_endate");
		String hp_centername = request.getParameter("hp_centername");
		int hp_pe = Integer.parseInt(request.getParameter("hp_pe"));//모집 인원 수 
		
		
		hp.setHp_centerid(hp_centerid); hp.setHp_cont(hp_cont); hp.setHp_endate(hp_endate); hp.setHp_stdate(hp_stdate); hp.setHp_title(hp_title);
		hp.setHp_centername(hp_centername); hp.setHp_pe(hp_pe);
		blogHelpService.insert(hp);
		
		return "redirect:/blog/Help?pr_id="+hp_centerid;
	}
	
	//글 목록
	@RequestMapping("/blog/Help")
	public String BlogHelp(Model list, HttpServletRequest request, @ModelAttribute BlogHelpVO hp)throws Exception {
		
		int page = 1;
		int limit = 8;
		String centerid=request.getParameter("pr_id");
		hp.setHp_centerid(centerid);
		hp.setStartrow((page-1)*limit+1);//시작행
		hp.setEndrow(hp.getStartrow()+limit-1);//끝행
		
		
		
		
		
		int totalCount = this.blogHelpService.getTotalCount(hp);//총 레코드 수 
		System.out.println(totalCount);
		
		List<BlogHelpVO> hplist = this.blogHelpService.gethplist(hp);
		
		
		int maxpage = (int)((double)totalCount/limit+0.95); //총 페이지 
		int startpage = (((int)((double)page/limit+0.9))-1)*8+1;
		int endpage = maxpage;
		if(endpage > startpage+8-1) endpage = startpage+8-1;
		
		list.addAttribute("hplist", hplist);
		list.addAttribute("page", page);
		list.addAttribute("startpage", startpage);
		list.addAttribute("endpage", endpage);
		list.addAttribute("maxpage", maxpage);
		list.addAttribute("totalCount", totalCount);
		
		return "/blog/BlogCenterHelp";
	}
	
	//뷰, 수정폼
	@RequestMapping("/blog/Help/View")
	public ModelAndView BlogHelpView(Model list, int hp_no, @RequestParam("state") String state, int page,BlogHelpVO hp){
		if(state.equals("view")) {//조회수 증가하면서 보기
			this.blogHelpService.upHit(hp_no);
		}
		
		hp = this.blogHelpService.getVeiw(hp_no);
		
		System.out.println(hp_no);
		String hp_cont = hp.getHp_cont().replace("\n","<br/>");
		ModelAndView am = new ModelAndView();
		
		am.addObject("hp_no",hp_no);
		am.addObject("page", page);
		am.addObject("hp_cont",hp_cont);
		am.addObject("hp", hp);
		
		
		if(state.equals("view")) {
			am.setViewName("/blog/view/BlogHelpView");
		}else if(state.equals("edit")) {
			am.setViewName("/blog/edit/BlogHelpEdit");
		}
		
		return am;
	}
	//수정
	@RequestMapping("/Help/Edit_OK")
	public String EditHelp(@RequestParam("hp_centerid1") String hp_centerid, @RequestParam("hp_no") int hp_no,
			@RequestParam("page") int page, BlogHelpVO hp, HttpServletRequest request)throws Exception {
		
		
		blogHelpService.update(hp);
		
		return "redirect:/blog/Help/View?pr_id="+hp_centerid+"&page="+page+"&hp_no="+hp_no+"&state=view";
	}
	
	//봉사신청폼
	@RequestMapping("/blog/HelpRS")
	public ModelAndView HelpPe(Model list, @RequestParam("hp_no") int hp_no, BlogHelpVO hp) {
		
		//stdate, endate 받아오기
		hp = blogHelpService.getCal(hp_no);
		
		ModelAndView hprs = new ModelAndView();
		hprs.addObject("hp_stdate", hp.getHp_stdate());
		hprs.addObject("hp_endate", hp.getHp_endate());
		hprs.addObject("hp_no", hp_no);
		hprs.setViewName("/blog/pop/BlogHelpRS");
		
		return hprs;
	}
	
	//봉사신청
	@RequestMapping("/HelpRS_OK")
	public String HelpPeOK(BlogHelpVO hp, @RequestParam("hp_no") int hp_no, HttpServletRequest request, HttpServletResponse response)throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		String hp_user_id = request.getParameter("user_id");
		String hp_user_tell = request.getParameter("user_tell").replace("-","");//01012341234 <-- 이런형태로 받게
		int hp_user_time = Integer.parseInt(request.getParameter("user_time"));
		
	
		hp.setHp_user_id(hp_user_id); hp.setHp_user_tell(hp_user_tell); hp.setHp_user_time(hp_user_time); hp.setHp_no(hp_no);
		
		blogHelpService.insertRS(hp);
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("opener.parent.location.reload();");
		out.println("alert('신청이 완료되었습니다.');");
		out.println("window.close();");
		out.println("</script>");
		out.flush();
		
		return "/blog/Help";
	}
	
	//봉사자 확인 폼
	@RequestMapping("/blog/HelpCS")
	public ModelAndView HelpCS(@RequestParam("hp_no") int hp_no, BlogHelpVO hp){
		
		List<BlogHelpVO> rslist = this.blogHelpService.getrslist(hp_no);
		
		ModelAndView csm = new ModelAndView();
		csm.addObject("rslist", rslist);
		csm.addObject("hp_no", hp_no);
		csm.setViewName("/blog/pop/BlogHelpCS");
		return csm;
	}
	
	//봉사자 시간 확인
	@RequestMapping("/blog/HelpCS_OK")
	public String HelpCSOK(@RequestParam("hp_no")int hp_no, BlogHelpVO hp, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String hp_reflect = request.getParameter("hp_reflect");
		int hp_user_real_time = Integer.parseInt(request.getParameter("user_real_time"));
		
		hp.setHp_reflect(hp_reflect); hp.setHp_user_real_time(hp_user_real_time); hp.setHp_no(hp_no);
		
		blogHelpService.updateRS(hp);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("opener.parent.location.reload();");
		out.println("alert('반영이 완료되었습니다.');");
		out.println("window.close();");
		out.println("</script>");
		out.flush();
		
		return null;
	}
	
	//진행중, 완료 전환
	@RequestMapping("/blog/Help/Finish_OK")
	public String HelpFinish(HttpServletRequest request, HttpServletResponse response, BlogHelpVO hp) {
		
		//아이디, 페이지 넘버 스테이트
		String hp_centerid = request.getParameter("pr_id");
		int page = Integer.parseInt(request.getParameter("page"));
		int hp_no = Integer.parseInt(request.getParameter("hp_no"));
		String hp_state = "완료";
		System.out.println("==============================");
		System.out.println("hp_centerid : " + hp_centerid);
		System.out.println("page : " + page);
		System.out.println("hp_no : "+ hp_no);
		System.out.println("==============================");
		hp.setHp_no(hp_no); hp.setHp_state(hp_state);
		
		blogHelpService.finish(hp);
		
		
		return "redirect:/blog/Help/View?pr_id="+hp_centerid+"&page="+page+"&hp_no="+hp_no+"&state=view";
	}
}
