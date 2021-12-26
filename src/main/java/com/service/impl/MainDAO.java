package com.service.impl;

import org.springframework.stereotype.Repository;

@Repository("mainDao")
public class MainDAO {

	public String selectTest() throws Exception {
		String test = "Hello World!";
		return test;
	}
}
