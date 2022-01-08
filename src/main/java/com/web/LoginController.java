package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="/CenterUserInsert")
	public String centerUserAdd(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/CenterUserInsert";
	}
	
	@RequestMapping(value="/LoginForm")
	public String loginForm(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/LoginForm";
	}
	
	@RequestMapping(value="/kakaologin")
	public String kakaoLogin(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/kakaologin";
	}
	
	@RequestMapping(value="/kakaoCallback")
	public String kakaoCallbackLogin(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/kakaologin";
	}
	
	@RequestMapping(value="/naverlogin", method=RequestMethod.GET)
	public String naverLogin(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/naverlogin";
	}
	
	@RequestMapping(value="/naverCallback", method=RequestMethod.GET)
	public String naverCallBackLogin(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/naverlogin";
	}
	
	
	
}
