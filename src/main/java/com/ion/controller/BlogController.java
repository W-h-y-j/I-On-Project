package com.ion.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ion.service.BlogService;
import com.ion.vo.BlogVO;


@Controller
public class BlogController {
	

	


	@Autowired
	private BlogService blogService;
	
	
	
	@RequestMapping(value = "/blog/Notice")
	public String BlogCenterNotice(Model model, HttpServletRequest request, @ModelAttribute BlogVO blog) throws Exception {
		
		String notice_writer=request.getParameter("pr_id");
		blog.setNotice_writer(notice_writer);
		/* 쪽 나누기 -> 페이징 처리  */
		int page=1; // 현재 페이지
		int limit =10; // 한 페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") !=null) {
			// get으로 전달된 쪽번호가 있는 경우 실행
			page=Integer.parseInt(request.getParameter("page")); // 쪽 번호를 정수 숫자로 변경하여 저장시킴
		}
		System.out.println("********* blog: "+blog);
		
		blog.setStartrow((page -1)*10+1);// 시작번호
		blog.setEndrow(blog.getStartrow()+limit-1);//끝행 번호
		
		int totalCount = this.blogService.listcount(blog);// 총 게시글 수 
		System.out.println("totalCount: "+totalCount);
		
		List<BlogVO> blogList=this.blogService.view_notice_list(blog);//게시물 목록

		//총페이지 수
	    int maxpage = (int)((double)totalCount/limit+0.95);
	      //현재 페이지에 보여질 시작페이지
	    int startpage = (((int)((double)page/10+0.9))-1)*10+1;
	      //현재 페이지에 보여질 마지막 페이지
	    int endpage = maxpage;
	    System.out.println("maxpage:"+maxpage); 
	    System.out.println("startpage:"+startpage); 
	    System.out.println("endpage:"+endpage); 
	    
	    
	    if(endpage > startpage+10-1) endpage=startpage+10-1;
	    model.addAttribute("blogList", blogList); 
	    model.addAttribute("totalCount", totalCount); 
	    model.addAttribute("startpage", startpage);
	    model.addAttribute("endpage", endpage);
	    model.addAttribute("maxpage", maxpage);
		model.addAttribute("page", page);
		return "blog/BlogCenterNotice";
	}
	
	//공지사항 조회,수정
		@RequestMapping(value = "/blog/Notice/View")
		public ModelAndView  BlogNoticeView(Model model,int notice_no, int page,HttpServletRequest request,BlogVO blog) throws Exception {
			
			
			blog= this.blogService.view_notice_cont(notice_no);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("blog/view/BlogNoticeView");
			mav.addObject("blog",blog);
			mav.addObject("page",page);
			
			
			return mav;
		}
	
		
		  // 공지사항 수정
		  
			@RequestMapping(value = "/blog/Notice/Edit", method = RequestMethod.GET)
			public ModelAndView BlogNoticeEdit(@RequestParam("notice_no") int notice_no,@RequestParam("page")  int page,
					HttpServletRequest request, BlogVO blog) throws Exception {

				blog = this.blogService.view_notice_cont(notice_no);
				
				ModelAndView mav = new ModelAndView(); // "myPage/Notice-Mod"
				mav.addObject("blog", blog);
				mav.addObject("page",page);
			System.out.println("-----****----"+blog+page);

				mav.setViewName("blog/edit/BlogNoticeEdit");
				return mav;
			}
				
					@RequestMapping(value = "/blog/Notice/Edit")
					public String BlogNoticeMod(@RequestParam("notice_no") int notice_no, BlogVO blog, HttpServletRequest request
							)throws Exception {		
						String notice_writer= request.getParameter("notice_writer");
						blog.setNotice_writer(notice_writer);
						blogService.editNotice(blog);
						System.out.println("---------------------"+blog);
						
						return "redirect:/blog/Notice?pr_id="+notice_writer;
					}	
				
				//공지사항 삭제
				@RequestMapping(value="/blog/Notice/del", method=RequestMethod.GET)
				public String notice_delete(int notice_no, int page,HttpServletRequest request,BlogVO blog) {
					String notice_writer= request.getParameter("notice_writer");
					blog.setNotice_writer(notice_writer);
					this.blogService.deleteNotice(notice_no);
					
					return "redirect:/blog/Notice?pr_id="+notice_writer;
				}
			
			//공지사항 등록
			@RequestMapping(value = "/blog/Notice/Create", method = RequestMethod.GET)
			public String BlogCenterNoticeCreate(Model model) throws Exception {
				
				blogService.view_blog_notice();
				return "blog/create/BlogCenterNoticeCreate";
			}
			//공지사항 저장
			@RequestMapping(value = "/blog/Notice/Create_Action", method = RequestMethod.POST)
			public String BlogCenterNoticeCreate(@ModelAttribute BlogVO blog,RedirectAttributes r, HttpServletRequest request) throws Exception {
				
				
				String notice_writer= request.getParameter("notice_writer");
				blogService.insert_blog_notice(blog);
				
				
				return "redirect:/blog/Notice?pr_id="+notice_writer;
			}
	
	/*
	 * @RequestMapping(value = "/blog/Help") public String BlogCenterHelp(Model
	 * model) throws Exception { return "blog/BlogCenterHelp"; }
	 */
	
	/*
	 * @RequestMapping(value = "/blog/Help/View") public String BlogHelpView(Model
	 * model) throws Exception { return "blog/view/BlogHelpView"; }
	 */
	
	@RequestMapping(value = "/blog/Help/Create")
	public String BlogCenterHelpCreate(Model model) throws Exception {
		return "blog/create/BlogCenterHelpCreate";
	}
	
	
	@RequestMapping(value = "/blog/Info/Change")
	public String BlogCenterInfoChange(Model model) throws Exception {
		return "blog/create/BlogCenterInfoChange";
	}
	
	@RequestMapping(value = "/blog/Thk")
	public String BlogCenterThk(Model model) throws Exception {
		return "blog/BlogCenterThk";
	}
	
	@RequestMapping(value = "/blog/Thk/View")
	public String BlogThkView(Model model) throws Exception {
		return "blog/view/BlogThkView";
	}
	
	@RequestMapping(value = "/blog/Thk/Create")
	public String BlogCenterThkCreate(Model model) throws Exception {
		return "blog/create/BlogCenterThkCreate";
	}
	
	@RequestMapping(value = "/blog/Use")
	public String BlogCenterUse(Model model) throws Exception {
		return "blog/BlogCenterUse";
	}
	
	@RequestMapping(value = "/blog/Use/Create")
	public String BlogCenterUseCreate(Model model) throws Exception {
		return "blog/create/BlogCenterUseCreate";
	}
	
	@RequestMapping(value = "/blog/CenterProfile")
	public String BlogProfileChange(Model model) throws Exception {
		return "blog/pop/BlogProfileChange";
	}
	
	@RequestMapping(value = "/blog/HelpCM")
	public String BlogHelpCM(Model model) throws Exception {
		return "blog/pop/BlogHelpCM";
	}
	
	@RequestMapping(value = "/blog/HelpCP")
	public String BlogHelpCP(Model model) throws Exception {
		return "blog/pop/BlogHelpCP";
	}
	
	/*
	 * @RequestMapping(value = "/blog/HelpCS") public String BlogHelpCS(Model model)
	 * throws Exception { return "blog/pop/BlogHelpCS"; }
	 */
	
	@RequestMapping(value = "/blog/HelpRM")
	public String BlogHelpRM(Model model) throws Exception {
		return "blog/pop/BlogHelpRM";
	}
	
	/*
	 * @RequestMapping(value = "/blog/HelpRS") public String BlogHelpRS(Model model)
	 * throws Exception { return "blog/pop/BlogHelpRS"; }
	 */
	
	@RequestMapping(value = "/blog/HelpRP")
	public String BlogHelpRP(Model model) throws Exception {
		return "blog/pop/BlogHelpRP";
	}
	
	@RequestMapping(value = "/blog/Calendar",method = RequestMethod.POST)
	public Map<Object,Object> addSchedule(@RequestBody BlogVO blog) throws Exception {
		Map<Object,Object>map = new HashMap<Object,Object>();
		return map;
	}

	
}
