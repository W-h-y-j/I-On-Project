package com.ion.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandeler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		System.out.println("Login Success");
		
		List<String> roleNames= new ArrayList<>();
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
			// 로그인한 사용자에 부여된 권한을 Authentication를 이용하여 사용자가 가진 모든 권한을 문자여롤 체크한다. 그리고 권한을가져와서 컬렉션에 추가한다.
		});
		System.out.println("Role Names:"+roleNames);
		
		if(roleNames.contains("ADMIN_ROLE")) {	
			response.sendRedirect("/");
			return ;  // 종료
		}
		
		if(roleNames.contains("CENTER_ROLE")) {	
			response.sendRedirect("/");
			return ;  // 종료
		}
		
		if(roleNames.contains("DONOR_ROLE")) {
			response.sendRedirect("/");
			return ;  // 종료
		}
		
		response.sendRedirect("/");
	}
	
}
