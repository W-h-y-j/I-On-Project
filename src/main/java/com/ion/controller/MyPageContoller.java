package com.ion.controller;

import java.io.File;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ion.service.MyPageService;
import com.ion.vo.MyPageVO;
import com.oreilly.servlet.MultipartRequest;


@Controller
public class MyPageContoller {
	
	@Autowired
	private MyPageService mypageService;

	// 공지사항 리스트 조회
	@RequestMapping(value = "/Notice")
	public String systemNotice(Model model, HttpServletRequest request, @ModelAttribute MyPageVO mypage) {
		/* 쪽 나누기 -> 페이징 처리  */
		int page=1; // 현재 페이지
		int limit =10; // 한 페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") !=null) {
			// get으로 전달된 쪽번호가 있는 경우 실행
			page=Integer.parseInt(request.getParameter("page")); // 쪽 번호를 정수 숫자로 변경하여 저장시킴
		}
		System.out.println("********* mypage: "+mypage);
		mypage.setStartrow((page -1)*10+1);// 시작번호
		mypage.setEndrow(mypage.getStartrow()+limit-1);//끝행 번호
		
		int totalCount = this.mypageService.totalNoticeCount(mypage);// 총 게시글 수 
		System.out.println("totalCount: "+totalCount);
		
		List<MyPageVO> noticeList=this.mypageService.view_notice_list(mypage);//게시물 목록

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
	    model.addAttribute("noticeList", noticeList); 
	    model.addAttribute("totalCount", totalCount); 
	    model.addAttribute("startpage", startpage);
	    model.addAttribute("endpage", endpage);
	    model.addAttribute("maxpage", maxpage);
		model.addAttribute("page", page);
		
		return "myPage/Notice";
	}
	

	// 공지사항 조회
	@RequestMapping(value="/Notice-View")
	public ModelAndView systemNoticeView(@RequestParam("system_notice_no") int system_notice_no, int page) throws Exception {
		
		MyPageVO myPage = this.mypageService.view_notice_cont(system_notice_no);
		ModelAndView mav = new ModelAndView("myPage/Notice-View");
		mav.addObject("myPage",myPage);
		mav.addObject("page",page);
		
		return mav;
		
	}

	// 공지사항 등록
	@RequestMapping(value = "/Notice-Add", method=RequestMethod.GET)
	public String systemNoticeAdd() throws Exception {
		return "myPage/Notice-Add";
	}

	// 공지사항 등록 저장
	@RequestMapping(value = "/Notice-Add" , method=RequestMethod.POST)
	public String systemNoticeAdd(@ModelAttribute MyPageVO myPage, RedirectAttributes r, HttpServletRequest request) throws Exception {
		
		this.mypageService.insertNotice(myPage);
		r.addFlashAttribute("msg", "SUCCESS");
		
		return "myPage/Notice-Add";
	}
	
	// 공지사항 수정
	@RequestMapping(value = "/Notice-Mod", method=RequestMethod.GET)
	public ModelAndView systemNoticeMod(int system_notice_no, int page) throws Exception {
		
		MyPageVO myPage = this.mypageService.view_notice_cont(system_notice_no);
		ModelAndView mav = new ModelAndView();	//"myPage/Notice-Mod"
		mav.addObject("myPage",myPage);
		mav.addObject("page",page);
		mav.setViewName("myPage/Notice-Mod");
		
		return mav;
	}
	
	// 공지사항 수정 저장
	@RequestMapping(value="/Notice-Mod", method=RequestMethod.POST)
	public String systemNoticeMod(@ModelAttribute MyPageVO myPage, int system_notice_no, RedirectAttributes r ) throws Exception {
		
		this.mypageService.modNotice(myPage);
		r.addFlashAttribute("msg", "SUCCESS");
		return "myPage/Notice-Mod";
	}
	
	
	// 공지사항 삭제
	@RequestMapping(value="/Notice-Del", method=RequestMethod.GET)
	public String notice_delete(int system_notice_no, int page) {
		this.mypageService.deleteNotice(system_notice_no);
		
		return "redirect:Notice";
	}
	
	
	// 도네이션 이력 조회
	@RequestMapping(value = "/DonationHistory")
	public String donationHistory(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/DonationHistory";
	}
	
	@RequestMapping(value = "/CenterUserManagment")
	public String CenterUserConfirm(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/CenterUserManagment";
	}
	
	@RequestMapping(value = "/DonationUserManagment")
	public String DonationUserManagment(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/DonationUserManagment";
	}
	
	@RequestMapping(value = "/MyPageSecurity")
	public String MyPageSecurity(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/MyPageSecurity";
	}
	
	@RequestMapping(value = "/UserInfo")
	public String UserInfo(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage//UserInfo";
	}
}
