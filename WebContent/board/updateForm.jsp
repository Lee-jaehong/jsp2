<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updateSave.jsp">
<input name="content" style="resize:none;margin-right:20px;" value=${param.content }></input>
<input type="hidden" name=idx value=${param.idx }>
<input type="hidden" name=page value=${param.page }>
<button>수정</button>
</form>
</body>
</html>