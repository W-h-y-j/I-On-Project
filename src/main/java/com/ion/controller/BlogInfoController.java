package com.ion.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ion.service.BlogInfoService;
import com.ion.vo.BlogInfoVO;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class BlogInfoController {

	@Autowired
	private BlogInfoService blogInfoService;
	
	
	//시설정보 입력
	@RequestMapping("/blog/Info/Change_OK")
	public String BlogInfoChange(BlogInfoVO iv, MultipartHttpServletRequest multi) throws Exception {
		
		String saveFolder = "C:\\20210927\\My Java\\WorkSpace8\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\I-ON_Project\\Resources\\upload";
		
	    
	    
	    String iv_centerid = multi.getParameter("centerid");
	    String iv_cont = multi.getParameter("infocont");
	    
	    MultipartFile Img = multi.getFile("infoimg");
	    
	    if(Img != null) {
			String imgName = Img.getName();
			 
			String homedir = saveFolder + "/Info" + "/" + iv_centerid;
			File path01 = new File(homedir);
			File path02 = new File(saveFolder+this.blogInfoService.delfile(iv_centerid));
			
			if(!path01.exists()) {
				if(path01.mkdirs()) {
					System.out.println("생성 완료");
				}else {
					System.out.println("에러");
				}
			}else {
				path02.delete();
				this.blogInfoService.deleteInfo(iv_centerid);
			}
			
			
			
			int index = imgName.lastIndexOf(".");
			String imgExtendion = imgName.substring(index+1);
			String reimgName = iv_centerid + getRandomString() + "." + imgExtendion;
			String imgDBName = "/Info" + "/" + iv_centerid + "/" + reimgName;
			Img.transferTo(new File(homedir+"/"+reimgName));
			
			iv.setIv_img(imgDBName);
		}else {
			String imgDBName = "";
			iv.setIv_img(imgDBName);
		}
	    
	    iv.setIv_centerid(iv_centerid); iv.setIv_cont(iv_cont); 
	    
	    this.blogInfoService.insertInfo(iv);
	    
	    
	    
	   
		return "redirect:/blog/Info?pr_id="+iv_centerid;
	}
	
	//중복방지용 난수 만들기
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	//시설정보보기
	@RequestMapping("/blog/Info")
	public ModelAndView BlogCenterInfo(Model model,BlogInfoVO iv, String pr_id)throws Exception {
		
		iv = this.blogInfoService.getInfoCont(pr_id);
		
		if(iv == null) {
			String sampleid = "sampleid";
			iv = this.blogInfoService.sample2(sampleid);
		}else {
			System.out.println("샘플");
		}
		
		String iv_cont = iv.getIv_cont().replace("\n", "<br/>");
		String iv_centerid = pr_id;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("iv", iv);
		mv.addObject("iv_cont", iv_cont);
		mv.addObject("iv_centerid", iv_centerid);
		
		mv.setViewName("/blog/BlogCenterInfo");
		return mv;
		
	}
}
