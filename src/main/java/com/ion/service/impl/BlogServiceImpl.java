package com.ion.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ion.mapper.BlogMapper;
import com.ion.service.BlogService;
import com.ion.vo.BlogVO;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogMapper mapper;
	
	@Override
	public List<BlogVO> view_blog_notice() {
		// TODO Auto-generated method stub
		return mapper.view_blog_notice();
	}

}
