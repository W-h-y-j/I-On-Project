package com.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.MainService;

@Controller
public class MainContoller {
	/*
	 * @Resource(name="mainService") private MainService mainService;
	 */

	@RequestMapping(value = "/")
	public String main(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Main";
	}

	@RequestMapping(value="/CL")
	public String searchCenter(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/CL";
	}


	@RequestMapping(value = "/CenterNotice")
	public String centerNotice(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/CenterNotice";
	}

}
