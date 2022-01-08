package com.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.MainService;

@Controller
public class BlogController {
	
	@RequestMapping(value = "/blog")
	public String BlogMain(Model model) throws Exception {
		return "blog/BlogMain";
	}
	
	@RequestMapping(value = "/blog/Notice")
	public String BlogCenterNotice(Model model) throws Exception {
		return "blog/BlogCenterNotice";
	}
	
	@RequestMapping(value = "/blog/Notice/Create")
	public String BlogCenterNoticeCreate(Model model) throws Exception {
		return "blog/create/BlogCenterNoticeCreate";
	}
	
	@RequestMapping(value = "/blog/Gallery")
	public String BlogCenterGallery(Model model) throws Exception {
		return "blog/BlogCenterGallery";
	}
	
	@RequestMapping(value = "/blog/Gallery/Create")
	public String BlogCenterGalleryCreate(Model model) throws Exception {
		return "blog/create/BlogCenterGalleryCreate";
	}
	
	@RequestMapping(value = "/blog/Help")
	public String BlogCenterHelp(Model model) throws Exception {
		return "blog/BlogCenterHelp";
	}
	
	@RequestMapping(value = "/blog/Help/Create")
	public String BlogCenterHelpCreate(Model model) throws Exception {
		return "blog/create/BlogCenterHelpCreate";
	}
	
	@RequestMapping(value = "/blog/Info")
	public String BlogCenterInfo(Model model) throws Exception {
		return "blog/BlogCenterInfo";
	}
	
	@RequestMapping(value = "/blog/Info/Change")
	public String BlogCenterInfoChange(Model model) throws Exception {
		return "blog/create/BlogCenterInfoChange";
	}
	
	@RequestMapping(value = "/blog/Thk")
	public String BlogCenterThk(Model model) throws Exception {
		return "blog/BlogCenterThk";
	}
	
	@RequestMapping(value = "/blog/Thk/Create")
	public String BlogCenterThkCreate(Model model) throws Exception {
		return "blog/create/BlogCenterThkCreate";
	}
	
	@RequestMapping(value = "/blog/Use")
	public String BlogCenterUse(Model model) throws Exception {
		return "blog/BlogCenterUse";
	}
	
	@RequestMapping(value = "/blog/Use/Create")
	public String BlogCenterUseCreate(Model model) throws Exception {
		return "blog/create/BlogCenterUseCreate";
	}
	
}
