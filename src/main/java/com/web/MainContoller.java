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

	@RequestMapping(value="/Center_Location")
	public String searchCenter(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Location";
	}


	@RequestMapping(value = "/CenterNotice")
	public String centerNotice(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/CenterNotice";
	}
	
	@RequestMapping(value = "/Center_Notice")
	public String center_Notice(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Notice";
	}
	
	@RequestMapping(value = "/Center_Thk")
	public String Center_Thk(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Thk";
	}
	
	@RequestMapping(value = "/Center_Image")
	public String Center_Image(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Image";
	}
	
	@RequestMapping(value = "/Center_Help")
	public String Center_Help(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Help";
	}

	
}
