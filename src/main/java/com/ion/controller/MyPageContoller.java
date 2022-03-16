package com.ion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ion.security.domain.CustomOauthUser;
import com.ion.security.domain.CustomUser;
import com.ion.service.MyPageService;
import com.ion.vo.LoginVO;
import com.ion.vo.MyPageVO;


@Controller
public class MyPageContoller {
	
	@Autowired
	private MyPageService mypageService;

	// 공지사항 리스트 조회
	@RequestMapping(value = "/Notice")
	public String systemNotice(Model model, HttpServletRequest request, @ModelAttribute MyPageVO mypage) {
		/* 쪽 나누기 -> 페이징 처리  */
		int page=1; // 현재 페이지
		int limit =10; // 한 페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") !=null) {
			// get으로 전달된 쪽번호가 있는 경우 실행
			page=Integer.parseInt(request.getParameter("page")); // 쪽 번호를 정수 숫자로 변경하여 저장시킴
		}
		System.out.println("********* mypage: "+mypage);
		mypage.setStartrow((page -1)*10+1);// 시작번호
		mypage.setEndrow(mypage.getStartrow()+limit-1);//끝행 번호
		
		int totalCount = this.mypageService.totalNoticeCount(mypage);// 총 게시글 수 
		System.out.println("totalCount: "+totalCount);
		
		List<MyPageVO> noticeList=this.mypageService.view_notice_list(mypage);//게시물 목록

		//총페이지 수
	    int maxpage = (int)((double)totalCount/limit+0.95);
	      //현재 페이지에 보여질 시작페이지
	    int startpage = (((int)((double)page/10+0.9))-1)*10+1;
	      //현재 페이지에 보여질 마지막 페이지
	    int endpage = maxpage;
	    System.out.println("maxpage:"+maxpage); 
	    System.out.println("startpage:"+startpage); 
	    System.out.println("endpage:"+endpage); 
	    
	    
	    if(endpage > startpage+10-1) endpage=startpage+10-1;
	    model.addAttribute("noticeList", noticeList); 
	    model.addAttribute("totalCount", totalCount); 
	    model.addAttribute("startpage", startpage);
	    model.addAttribute("endpage", endpage);
	    model.addAttribute("maxpage", maxpage);
		model.addAttribute("page", page);
		
		return "myPage/Notice";
	}
	

	// 공지사항 조회
	@RequestMapping(value="/Notice-View")
	public ModelAndView systemNoticeView(@RequestParam("system_notice_no") int system_notice_no, int page) throws Exception {
		
		MyPageVO myPage = this.mypageService.view_notice_cont(system_notice_no);
		ModelAndView mav = new ModelAndView("myPage/Notice-View");
		mav.addObject("myPage",myPage);
		mav.addObject("page",page);
		
		return mav;
		
	}

	// 공지사항 등록
	@RequestMapping(value = "/Notice-Add", method=RequestMethod.GET)
	public String systemNoticeAdd() throws Exception {
		return "myPage/Notice-Add";
	}

	// 공지사항 등록 저장
	@RequestMapping(value = "/Notice-Add" , method=RequestMethod.POST)
	public String systemNoticeAdd(@ModelAttribute MyPageVO myPage, RedirectAttributes r, HttpServletRequest request) throws Exception {
		
		this.mypageService.insertNotice(myPage);
		r.addFlashAttribute("msg", "SUCCESS");
		
		return "myPage/Notice-Add";
	}
	
	// 공지사항 수정
	@RequestMapping(value = "/Notice-Mod", method=RequestMethod.GET)
	public ModelAndView systemNoticeMod(int system_notice_no, int page) throws Exception {
		
		MyPageVO myPage = this.mypageService.view_notice_cont(system_notice_no);
		ModelAndView mav = new ModelAndView();	//"myPage/Notice-Mod"
		mav.addObject("myPage",myPage);
		mav.addObject("page",page);
		mav.setViewName("myPage/Notice-Mod");
		
		return mav;
	}
	
	// 공지사항 수정 저장
	@RequestMapping(value="/Notice-Mod", method=RequestMethod.POST)
	public String systemNoticeMod(@ModelAttribute MyPageVO myPage, int system_notice_no, RedirectAttributes r ) throws Exception {
		
		this.mypageService.modNotice(myPage);
		r.addFlashAttribute("msg", "SUCCESS");
		return "myPage/Notice-Mod";
	}
	
	
	// 공지사항 삭제
	@RequestMapping(value="/Notice-Del", method=RequestMethod.GET)
	public String notice_delete(int system_notice_no, int page) {
		this.mypageService.deleteNotice(system_notice_no);
		
		return "redirect:Notice";
	}
	
	
	// 도네이션 이력 조회
	@RequestMapping(value = "/DonationHistory", method=RequestMethod.GET)
	public String donationHistory(Model model, MyPageVO mp) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		
		//필요정보 -> 타이틀, 봉사시간, 확인여부, 후원일자(endate기준으로 할 예정) -> vo에 hp_title, hp_real_time, reflect, hp_endate 추가해야함.
		//검색 수단 -> outer join no가 같으면 묶고 그 밖에 where 로그인 아이디 and REFLECT='Y' 로 리스트 가져오기
		//그래서 그거 뿌려서 나오게 하기. 페이징 처리까지 6개 제한인거 같음. 
		LoginVO user= getLogonUser();
		if(user == null ) {//
			System.out.println("==============================");
			System.out.println("미로그인");
			System.out.println("==============================");
		} else if(user.getSns() == null ) {// 센터 로그인
			System.out.println("==============================");
			System.out.println(user.getCenter_id());
			System.out.println("==============================");
		} else { //후원 로그인
			System.out.println("==============================");
			System.out.println(user.getEmail());
			System.out.println("==============================");
		}
		
		String userid = user.getEmail();
		int page=1;
		int limit=6;
		mp.setStartrow((page-1)*limit+1);//시작행
		mp.setEndrow(mp.getStartrow()+limit-1);//끝행
		
		try {
			int totalCount = mypageService.HpTotal(userid,mp);
		
			List<MyPageVO> hpli = mypageService.getHP(userid,mp);
		
		
		
			int maxpage = (int)((double)totalCount/limit+0.95); //총 페이지 
			int startpage = (((int)((double)page/limit+0.9))-1)*6+1;
			int endpage = maxpage;
			if(endpage > startpage+6-1) endpage = startpage+6-1;
		
			model.addAttribute("hpli", hpli);
			model.addAttribute("maxpage",maxpage);
			model.addAttribute("startpage",startpage);
			model.addAttribute("endpage",endpage);
			model.addAttribute("totalCount",totalCount);
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("page",page);
		
		
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
	
	
	public LoginVO getLogonUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		LoginVO loginVo = null;
		if(authentication == null) {
			return loginVo;
		}
		if(authentication.getAuthorities().contains(new SimpleGrantedAuthority("CENTER_ROLE"))) { // 센터로그인 
			CustomUser user = (CustomUser) authentication.getPrincipal();
			loginVo = user.getLoginVo();
		} else if(authentication.getAuthorities().contains(new SimpleGrantedAuthority("DONOR_ROLE"))) { // 후원로그인 
			CustomOauthUser user = (CustomOauthUser) authentication.getPrincipal();
			loginVo = user.getLoginVo();
		}
		
		return loginVo;
	}
}
