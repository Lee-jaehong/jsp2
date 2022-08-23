<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>session 애트리뷰트</h3>
<%
	String user = (String)session.getAttribute("session_user");
	out.print("session id : ");
	out.print(session.getId());
	out.print("<br>");
	out.print("session 애트리뷰트 :" + user);	//세션 타입아웃 3분 지나기전에는 김땡땡 출력, 타임아웃 3분후 null 출력
%>
<br><a href="session.jsp">세션 테스트 메인</a>
</body>
</html>