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
}
