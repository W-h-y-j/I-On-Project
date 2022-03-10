<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<BlogVO> list = (ArrayList<BlogVO>)request.getAttribute("showSchedule");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
  <head>
    <meta charset='utf-8' />
<link href='/Resources/fullcalendar-5.10.1/lib/main.css' rel='stylesheet' />
<script src='/Resources/fullcalendar-5.10.1/lib/main.js'></script>
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>

document.addEventListener('DOMContentLoaded', function() {
	 
  var calendarEl = document.getElementById('calendar');
	
  var calendar = new FullCalendar.Calendar(calendarEl, {
    plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
    },
    locale : "ko",
    navLinks: true, // can click day/week names to navigate views
    businessHours: true, // display business hours
    editable: true,
    events: [
<% 
	  for (int i = 0; i < list.size(); i++) {
		  BlogVO blog = (BlogVO)list.get(i);
%>	
	  {
	   title : '<%= blog.getSubject() %>',
	   start : '<%= blog.getStartDate() %>',
	   end : '<%= blog.getEndDate() %>'
	   },
<%
	}
%>
		{
		   title : 'default',
		   start : "2019-01-01",
		   end : "2019-01-01"
		  }
    ]
  });

  calendar.render();
});
</script>
   
</script>
    <title>BlogCenterGallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterGallery.css" rel="stylesheet">
  </head>
  <body>
    <jsp:include page="include/blogHead.jsp" />
      <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterGalleryTitle">&#9776; 운영일정</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item active" aria-current="page">활동사진</li>
                </ol>
            </nav>
            <br/>
        </div>
        <button class = "add-button" type = "button" onclick="click_add();">일정 추가</button>
    <div id='calendar'>
    
    </div>
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </div>
</body>
</html>