package com.ion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ion.service.DateService;
import com.ion.vo.DateVO;

@Controller
public class DateController {
	
	@Autowired
	private DateService dateService;
	
	@RequestMapping(value = "/Center_Date1")
	public String Center_Date1(Model model) throws Exception {
		/* String test=mainService.selectTest(); */
		/* model.addAttribute("selectTableList", test); */
		return "main/Center_Date1";
	}
		
	@RequestMapping(value = "/Center_Date2")
	public ModelAndView Center_Date2(@ModelAttribute DateVO b, HttpServletRequest request) throws Exception {
		int page = 1;//쪽번호
		int limit = 10;//한페이지에 보여지는 목록개수
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));			
		}
		String find_name=request.getParameter("find_name");//검색어
		String find_field=request.getParameter("find_field");//검색
		//필드
        b.setFind_field(find_field);
        b.setFind_name("%"+find_name+"%");
        //%는 오라클 와일드 카드 문자로서 하나이상의 임의의 문자와
        //매핑 대응		
		
        int listcount=this.dateService.getListCount(b);
		//전체 레코드 개수 또는 검색전후 레코드 개수
		//System.out.println("총 게시물수:"+listcount+"개");
		
		b.setStartrow((page-1)*10+1);//시작행번호
		b.setEndrow(b.getStartrow()+limit-1);//끝행번호
		
		List<DateVO> blist=this.dateService.getCenterList(b);
		//목록
		
		//총페이지수
		int maxpage=(int)((double)listcount/limit+0.95);
		//현재 페이지에 보여질 시작페이지 수(1,11,21)
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
		int endpage=maxpage;
		if(endpage > startpage+10-1) endpage=startpage+10-1;
			
		ModelAndView listM = new ModelAndView();
		listM.addObject("blist",blist);//blist 키이름에 값
		//저장
		listM.addObject("page",page);
		listM.addObject("startpage",startpage);
		listM.addObject("endpage",endpage);
		listM.addObject("maxpage",maxpage);
        listM.addObject("listcount",listcount);
        listM.addObject("find_field",find_field);
        listM.addObject("find_name", find_name);
                
		listM.setViewName("main/Center_Date2");//뷰페이지 폴더
		//경로와 파일명 지정
		return listM;
	}
	
	//사용자 게시판 글쓰기 폼
	@RequestMapping(value="/date_write", method = RequestMethod.GET)	
	public String date_write(HttpServletRequest request, Model m) {
		int page=1;
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));			
		}
		m.addAttribute("page", page);
		return "date/date_write";		
	}//date_write()

	//게시판 저장
	@RequestMapping(value="/date_write", method=RequestMethod.POST)	
	public ModelAndView date_write_ok(@ModelAttribute DateVO b) {			
		this.dateService.insertDate(b);
			
		return new ModelAndView("redirect:/Center_Date2");			
	}//date_write_ok()
	
	//내용보기
	@RequestMapping("/date_cont")
	public ModelAndView date_cont(@RequestParam("cno") int cno, int page) throws Exception {
		DateVO date = this.dateService.getDateCont(cno);
		ModelAndView d = new ModelAndView("date/date_cont");
		d.addObject("date", date);
		d.addObject("page", page);
		
		return d;
	}//date_cont()
	
	//내용 수정
	@RequestMapping(value = "/date_edit", method=RequestMethod.GET)
	public ModelAndView date_edit(int cno, int page) throws Exception {
			
		DateVO date = this.dateService.getDateCont(cno);
		ModelAndView d = new ModelAndView();
		d.addObject("date", date);
		d.addObject("page", page);
		d.setViewName("date/date_edit");
			
		return d;
	}//date_edit
		
	//수정 저장
	@RequestMapping(value="/date_edit", method=RequestMethod.POST)
	public String date_edit_ok(@ModelAttribute DateVO date, int cno, RedirectAttributes r ) throws Exception {
		this.dateService.updateDate(date);
				
		return "date/date_edit";
	}//date_edit_ok
	
	//삭제
	@RequestMapping(value="/date_del", method=RequestMethod.GET)
	public String date_del(int cno, int page) {
		this.dateService.dateDel(cno);
			
		return "redirect:Center_Date2";
	}//date_del
			
}
