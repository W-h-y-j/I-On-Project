package com.ion.vo;

import java.util.List;

import lombok.Data;

@Data
public class LoginVO {

	// 센터계정
	private String center_id;
	private String password;
	private String befor_password;
	private String last_pass_change_dt;
	private String info_agrement_yn;
	private String info_agrement_dt;
	private String registration_dt;
	private String last_login_dt;
	private String id_lock;
	private String center_email;
	private String center_add;
	private String center_name;
	private String center_user_name;
	private String center_domain;
	private String last_change_id;
	private String last_change_dt;
	private String center_tel;
	
	// 후원계정
	private String user_id;
	private String user_name;
	private String email;
	private String gender;
	private String birth;
	private String regi_dt;
	private String sns;
	private String auth;

	private List<AuthVO> authList;

	// 페이징 처리
	private int startrow;
	private int endrow;

}
