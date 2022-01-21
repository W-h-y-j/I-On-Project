package com.ion.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ion.service.MainService;
import com.ion.service.impl.MainServiceImpl;

@Controller
public class MainContoller {
	/*
	 * @Resource(name="mainService") private MainService mainService;
	 */

	@Autowired
	private MainService mainService;
	// mainService변수가 MainService객체를 주입받아 MainServiceImpl에서 작성한 기능을 사용 할 수 있음
	
	@RequestMapping(value = "/")
	public String main(Model model) throws Exception {
		model.addAttribute("systemNotice", mainService.view_system_notice());
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
	
	@RequestMapping(value = "/Center_Date1")
	public String Center_Date1(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Date1";
	}

	
}
