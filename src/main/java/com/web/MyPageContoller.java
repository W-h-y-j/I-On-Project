package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyPageContoller {
	@RequestMapping(value = "/Notice")
	public String systemNotice(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/Notice";
	}
	
	@RequestMapping(value = "/Notice-View")
	public String systemNoticeView(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/Notice-View";
	}
	
	@RequestMapping(value = "/Notice-Add")
	public String systemNoticeAdd(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
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
