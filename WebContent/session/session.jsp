<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 테스트</title>
</head>
<body>
<div>http 프로토콜은 stateless(상태정보유지안됨) ,비연결지향  <br>
    (참고로 카카오톡은 연결지향.)
     -> 웹서버와 브라우저 사이의 연결정보를 저장하는 방법을 사용합니다. -> session 객체에 저장.<br>
     -> request 를 통해서 브라우저의 세션ID가 부여되고  그 값으로 구별.<br>
     -> 로그인 기능 구현에 활용합니다.<br>
     -> 톰캣은 이름 JSESSIONID 값을 만듭니다.<br>
     -> 세션 유효 시간은 서버에서 설정합니다. web.xml 확인(모든 프로젝트에 적용) <br>
     -> 또는 session.setMaxInactiveInterval(300); 로 합니다.
</div>
<!--
    <session-config>
        <session-timeout>30</session-timeout> 마지막 요청시간으로부터 30분
    </session-config>
  -->
<h3>session 정보 확인</h3>
<%
	String id = session.getId();
	out.print("session ID : " + id);	//16진수 32개 32*4ro=128비트
	out.print("<br>");
	long create = session.getCreationTime();	//세션객체가 만들어진 시간(첫번째 요청 시간)
	out.print("session 생성 시간 :" + create);		//타임스태프(1970년 1월 1일 기준단위는 ms)
	out.print("<br>");
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	out.print("session 생성 시간 :" + df.format(create));
	out.print("<br>");
	
	long last = session.getLastAccessedTime();	//세션객체가 만들어진 시간(첫번째 요청 시간)
	out.print("session 마지막 요청 시간 :" + last);		//타임스태프(1970년 1월 1일 기준단위는 ms)
	out.print("<br>");
	out.print("session 생성 시간 :" + df.format(last));
	out.print("<br>");
	//메소드로 timeout 변경하기
	session.setMaxInactiveInterval(180);	//300초
	session.setAttribute("session_user", "김땡땡");
%>
<br><a href="sessionAttr.jsp">세션 애트리뷰트 확인</a>
</body>
</html>