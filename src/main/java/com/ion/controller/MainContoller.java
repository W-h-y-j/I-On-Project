package com.ion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ion.service.MainService;
import com.ion.vo.CenterVO;

@Controller
public class MainContoller {

	@Autowired
	private MainService mainService;
	// mainService변수가 MainService객체를 주입받아 MainServiceImpl에서 작성한 기능을 사용 할 수 있음

	@RequestMapping(value = "/")
	public String main(Model model) throws Exception {
		model.addAttribute("systemNotice", mainService.view_system_notice());
		return "main/Main";
	}

	//@RequestMapping

	@RequestMapping("Center_Location")
	public ModelAndView center_location(@ModelAttribute CenterVO b, HttpServletRequest request) {
		System.out.println("CENTER-LOCATION START ===================");
		int page = 1;// 쪽번호
		int limit = 10;// 한페이지에 보여지는 목록개수
		
		System.out.println("CENTER-LOCATION START2 ===================");
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		String find_name = request.getParameter("find_name");// 검색어
		String find_field = request.getParameter("find_field");// 검색
		// 필드
		b.setFind_field(find_field);
		b.setFind_name("%" + find_name + "%");
		// %는 오라클 와일드 카드 문자로서 하나이상의 임의의 문자와
		// 매핑 대응
		System.out.println("CENTER-LOCATION START3 ===================");
		int listcount = this.mainService.getListCount(b);
		// 전체 레코드 개수 또는 검색전후 레코드 개수
		System.out.println("총 게시물수:"+listcount+"개");

		b.setStartrow((page - 1) * 10 + 1);// 시작행번호
		b.setEndrow(b.getStartrow() + limit - 1);// 끝행번호
		System.out.println("CENTER-LOCATION START 4 ===================");
		List<CenterVO> blist = this.mainService.getCenterList(b);
		// 목록
		
		System.out.println("CENTER-LOCATION START 5 ===================");

		// 총페이지수
		int maxpage = (int) ((double) listcount / limit + 0.95);
		// 현재 페이지에 보여질 시작페이지 수(1,11,21)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
		int endpage = maxpage;
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		ModelAndView listM = new ModelAndView();
		listM.addObject("blist", blist);// blist 키이름에 값
		// 저장
		listM.addObject("page", page);
		listM.addObject("startpage", startpage);
		listM.addObject("endpage", endpage);
		listM.addObject("maxpage", maxpage);
		listM.addObject("listcount", listcount);
		listM.addObject("find_field", find_field);
		listM.addObject("find_name", find_name);
		System.out.println("CENTER-LOCATION START 6 ===================");
		
		listM.setViewName("main/Center_Location");// 뷰페이지 폴더
		System.out.println("listM: "+listM);

		return listM;
	}
	
	/*
	@RequestMapping ("/Center_Location" )
	public String  center_location (@ModelAttribute CenterVO b, HttpServletRequest request, Model model) {
		System.out.println("CENTER-LOCATION START ===================");
		
		int page = 1;// 쪽번호
		int limit = 10;// 한페이지에 보여지는 목록개수
		
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		String find_name = request.getParameter("find_name");// 검색어
		String find_field = request.getParameter("find_field");// 검색
		
		b.setFind_field(find_field);
		b.setFind_name("%" + find_name + "%");
		int listcount = this.mainService.getListCount(b);
		
		b.setStartrow((page - 1) * 10 + 1);// 시작행번호
		b.setEndrow(b.getStartrow() + limit - 1);// 끝행번호
		System.out.println("CENTER-LOCATION START 4 ===================");
		List<CenterVO> blist = this.mainService.getCenterList(b);
		System.out.println(blist);
		// 총페이지수
		int maxpage = (int) ((double) listcount / limit + 0.95);
		// 현재 페이지에 보여질 시작페이지 수(1,11,21)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
		int endpage = maxpage;
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		model.addAttribute("blist",blist);
		model.addAttribute("page",page);
		model.addAttribute("startpage",startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("listcount",listcount);
		model.addAttribute("find_field",find_field);
		model.addAttribute("find_name",find_name);

		return "/Center_Location";
	} */


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
