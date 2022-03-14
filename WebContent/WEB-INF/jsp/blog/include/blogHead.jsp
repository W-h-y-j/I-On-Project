<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pr_id = request.getParameter("pr_id");
	
%>
    <nav class="navbar navbar-expand-lg navbar-light"style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a class="navbar-brand" href="/blog?pr_id=<%= pr_id %>" ><b><!--I-ON: 아이 온 희망나눔 --></b></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-automb-10 mb-lg-1">
                    <li class="nav-item">
                        <a class="nav-link" href="/blog/Info?pr_id=<%=pr_id%>">시설소개</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blog/Notice?pr_id=<%=pr_id%>">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blog/Gallery?pr_id=<%=pr_id%>">활동사진</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blog/Calendar?pr_id=<%=pr_id%>">운영일정</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blog/Help?pr_id=<%=pr_id%>">봉사모집</a>
                    </li>
                    
                    
                </ul>
                <div style="margin-left:15vw;">
                	<a href="/" style="text-decoration: none; color:black;"><h> I-ON : 희망 나눔 서비스</h></a>
                </div>
            </div>
			
        </div>
    </nav>
    <br/><br/>