<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%
    String clientId = "n3Z6V0TB4pGpUysgQSwn";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("https://localhost:8086/naverCallback.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
  <a href="<%=apiURL%>">
  <img width="33.3%" src="Resources/img/login/naver_login_medium_green.png"/></a>
