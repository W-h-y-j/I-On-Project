package com.ion.controller;


import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ion.service.MyPageService;
import com.ion.vo.MyPageVO;


@Controller
public class MyPageContoller {
	
	@Autowired
	private MyPageService mypageService;
	
	@RequestMapping(value = "/Notice")
	public String systemNotice(Model model) throws Exception {
		model.addAttribute("notice_list", mypageService.view_notice_list());
		return "myPage/Notice";
	}

	// 조회 
//	@RequestMapping(value = "/Notice-View")
//	public String systemNoticeView(Model model) throws Exception {
//		model.addAttribute("notice_cont", mypageService.view_notice_cont());
//		return "myPage/Notice-View";
//	}
	
	@RequestMapping(value="/Notice-View")
	public ModelAndView systemNoticeView(@RequestParam("system_notice_no") int system_notice_no) throws Exception {
		
		MyPageVO myPage = this.mypageService.view_notice_cont(system_notice_no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("myPage/Notice-View");
		mav.addObject("myPage",myPage);
		return mav;
		
	}

	// 글쓰기 화면
	@RequestMapping(value = "/Notice-Add", method=RequestMethod.GET)
	public String systemNoticeAdd() throws Exception {
		return "myPage/Notice-Add";
	}

	// 저장
	@RequestMapping(value = "/Notice-Add", method=RequestMethod.POST)
	public String systemNoticeAdd(MyPageVO myPage, RedirectAttributes r ) throws Exception {
	// public String systemNoticeAdd(@ModelAttribute MyPageVO myPage, RedirectAttributes r, HttpServletRequest request) throws Exception 
		
		// 파일 저장
		
//		String saveFolder =request.getRealPath("./resources/upload");
//		int fileSize = 20*1024*1024;
//		MultipartRequest multi = null;
//		
//		multi = new MultipartRequest(request, saveFolder, fileSize,"UTF-8");
//		
//		String title = multi.getParameter();
		
		// ----
		
		this.mypageService.insertNotice(myPage);
		//model.addAttribute("notice_add", mypageService.add_notice());
		r.addFlashAttribute("msg", "SUCCESS");
		
		return "myPage/Notice-Add";
	}
	
	@RequestMapping(value = "/Notice-Mod")
	public String systemNoticeMod(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/Notice-Mod";
	}
	
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
