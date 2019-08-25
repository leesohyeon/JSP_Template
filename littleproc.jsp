<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="img/LF.jpg" width="500" height="700"><br>
<%
request.setCharacterEncoding("utf-8");
	BufferedReader reader = null;
	try{
		String filePath=application.getRealPath("/WEB-INF/LFT.txt");
		reader = new BufferedReader(new FileReader(filePath));
		//out.println(filePath);
		while(true){
		String str = reader.readLine();
		if(str==null) break;
		out.print(str+"<br>");
		}
	}catch(Exception e){
		
	}finally{
		reader.close();
	}
%>
</body>
</html>