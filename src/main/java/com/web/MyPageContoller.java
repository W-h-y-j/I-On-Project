package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyPageContoller {
	@RequestMapping(value = "/Notice")
	public String test3(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "myPage/Notice";
	}
}
