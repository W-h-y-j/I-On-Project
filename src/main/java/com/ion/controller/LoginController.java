package com.ion.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ion.service.LoginService;
import com.ion.vo.LoginVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	
	// 유저 가입
	@RequestMapping(value = "/CenterUserInsert")
	public String centerUserInsert(Model model) throws Exception {
		return "login/CenterUserInsert";
	}
	
	// ID 중복 체크
	@RequestMapping("/Center_idCheck")
	public String center_idcheck(@RequestParam("center_id") String center_id, HttpServletResponse response) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		LoginVO check = this.loginService.idCheck(center_id);
		// 중복 아이디가 없는 경우
		int re= -1;	
		
		// 중복아이디가 있는 경우
		if(check != null) {
			re=1;
		}
		return null;
	}
	
	// 센터찾기 팝업
	
	@RequestMapping("/CenterSearch")
	public ModelAndView center_find() {
		ModelAndView mav = new ModelAndView("login/popup/CenterSearch");
		return mav;
	}
	
	// 센터찾기 팝업 완료
	@RequestMapping("/centerfind")
	@ResponseBody
	public List<LoginVO> center_find_ok(@RequestBody Map<String,Object> params, Model model, HttpServletRequest request) throws Exception{
		
		String center_name = params.get("center_name") != null ? params.get("center_name").toString() : null;
		List<LoginVO> centerList = this.loginService.center_find(center_name);
		
		return centerList;
	} 
	
	// 센터 사용자 저장 완료
	@RequestMapping(value = "/CenterUserInsert", method=RequestMethod.POST)
	public String centerUserInsert(LoginVO login) throws Exception {
		System.out.println("********** login"+login);
		this.loginService.insertUser(login);
		
		return "login/LoginForm";
	}

	@RequestMapping(value = "/LoginForm")
	public String loginForm(Model model) throws Exception {
		return "login/LoginForm";
	}
	
	@RequestMapping(value="/LoginForm/center", method=RequestMethod.POST)
	public String loginSuccess (LoginVO login, HttpServletResponse response, HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8;");
		PrintWriter out = response.getWriter();
		
		LoginVO login_check = this.loginService.loginUser(login.getUser_id());
		
		if(login_check == null) {
			out.println("<script>");
			out.println("alert('계정 정보가 없습니다!');");
			out.println("history.go(-1);");
			out.println("</script>");
		} else {
			if(!login_check.getPassword().equals(login.getPassword())) {
				out.println("<script>");
				out.println("alert('비밀번호가 다릅니다!');");
				out.println("history.back();");
				out.println("</script>");
			} else {
				session.setAttribute("center_id",login.getCenter_id());//세션 키이름 center_id에 관리자 아이디를 저장
//				session.setAttribute("admin_name",login_check.getCenter_id());
			}
			
		}
		
		return null;
	}
	

	// 카카오 로그인
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
