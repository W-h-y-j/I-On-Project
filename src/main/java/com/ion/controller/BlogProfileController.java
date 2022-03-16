package com.ion.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ion.service.BlogGalleryService;
import com.ion.service.BlogHelpService;
import com.ion.service.BlogProfileService;
import com.ion.service.BlogService;
import com.ion.vo.BlogGalleryVO;
import com.ion.vo.BlogHelpVO;
import com.ion.vo.BlogProfileVO;
import com.ion.vo.BlogVO;

@Controller
public class BlogProfileController {
	//프로필
	@Autowired
	private BlogProfileService blogProfileService;
	//갤러리
	@Autowired
	private BlogGalleryService blogGalleryService;
	//자원봉사
	@Autowired
	private BlogHelpService blogHelpService;
	//공지사항
	@Autowired
	private BlogService blogService;
	
	
	@PostMapping("/blog/blogProfileChange_OK")
	public String BlogProfile2(BlogProfileVO bp, MultipartHttpServletRequest multi, HttpServletResponse response) throws IOException {
		
		String saveFolder = "C:\\20210927\\My Java\\WorkSpace8\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\I-ON_Project\\Resources\\upload";
		
		String pr_id = multi.getParameter("pr_id");
		String pr_centername = multi.getParameter("pr_centername");
		String pr_tell = multi.getParameter("pr_tell");
		String pr_address = multi.getParameter("pr_address");
		String pr_cont = multi.getParameter("pr_cont");
		
		MultipartFile img1 = multi.getFile("img");
		
		if(img1 != null) {
			String OriginImg = img1.getName();
			String homedir = saveFolder + "/Profile" + "/" + pr_id;
			File path01 = new File(homedir);
			File path02 = new File(saveFolder+this.blogProfileService.delfile(pr_id));
			if(!path01.exists()) {
				if(path01.mkdirs()) {
					System.out.println("생성 완료");
				}else {
					System.out.println("에러");
				}
			}else {
				path02.delete();
				this.blogProfileService.deleteProfile(pr_id);
			}
			int index = OriginImg.lastIndexOf(".");
			String imgExtendion = OriginImg.substring(index+1);
			String reimgName = pr_id + getRandomString() + "." + imgExtendion;
			String pr_img = "/Profile" + "/" + pr_id + "/" + reimgName;
			
			img1.transferTo(new File(homedir+"/"+reimgName));
			bp.setPr_img(pr_img);
		}else {
			String pr_img = "";
			bp.setPr_img(pr_img);
		}
		
		bp.setPr_id(pr_id); bp.setPr_centername(pr_centername); bp.setPr_tell(pr_tell); bp.setPr_address(pr_address); bp.setPr_cont(pr_cont);
		
		this.blogProfileService.insertProfile(bp);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("opener.parent.location.reload();");
		out.println("alert('프로필 수정이 완료되었습니다.');");
		out.println("window.close();");
		out.println("</script>");
		out.flush();
		return null;
	}
	
	//중복방지용 난수 만들기
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	
	//프로필 변경 사진 가져오기
	@RequestMapping("/blog")
	public ModelAndView BlogMain(Model model,BlogProfileVO bp, String pr_id, BlogGalleryVO ag, BlogHelpVO hp, BlogVO bm)throws Exception {
		
		//프로필
		try {
		bp = this.blogProfileService.getBbsCont(pr_id);
		}catch(Exception e) {
			
			bp = this.blogProfileService.getBbsCont2(pr_id);
			
			bp.setPr_address(bp.getCenter_add());
			bp.setPr_centername(bp.getCenter_name());
			bp.setPr_tell(bp.getCenter_tel());
			
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("bp",bp);
			
			mv.setViewName("/blog/BlogMain");
			return mv;
			
		}
		ModelAndView mv = new ModelAndView();
		//try~catch 처리 이유 -> null 값  자료실에 글이 없을때 NullPointerException 방지
		try{
			//최근 사진 불러오기. 서비스단에서 처리.
			List<BlogGalleryVO> mainAGlist = blogGalleryService.getMain(ag, pr_id);
			mv.addObject("mainAGlist", mainAGlist);
			
			//최근 봉사 모집 불러오기
			List<BlogHelpVO> mainHPlist = blogHelpService.getMain2(hp, pr_id);
			mv.addObject("mainHPlist", mainHPlist);
			
			//최근 공지사항 목록 가져오기
			List<BlogVO> mainNOlist = blogService.getMain3(bm, pr_id);
			mv.addObject("mainNOlist", mainNOlist);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	
		
		
		
		mv.addObject("bp",bp);
		
		
		mv.setViewName("/blog/BlogMain");
		
		
		
		
		
		return mv;
		
		
	}//BlogMain()
	
	
	
}
