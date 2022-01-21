package com.ion.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	@RequestMapping(value = "/CenterUserInsert")
	public String centerUserAdd(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/CenterUserInsert";
	}

	@RequestMapping(value = "/LoginForm")
	public String loginForm(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/LoginForm";
	}

	// 까까오 로그인
	@RequestMapping(value="/kakaologin")
	public String withKakaoLogin(Model model) throws Exception {
		System.out.println("----START KAKAO----");
		
		return "login/kakaologin";
	}

	@RequestMapping(value = "/naverlogin", method = RequestMethod.GET)
	public String naverLogin(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/naverlogin";
	}

	@RequestMapping(value = "/naverCallback", method = RequestMethod.GET)
	public String naverCallBackLogin(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "login/naverlogin";
	}

}
