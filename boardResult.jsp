<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String str=request.getParameter("result");

if(str.equals("ok")){
	out.println("<font color='red'>게시물이 저장되없습니다</font>");
}else{
	out.println("파일을 저장할 수 없습니다");
}
%>
<meta http-equiv="refresh" content='1;url=list.jsp'>
</body>
</html>