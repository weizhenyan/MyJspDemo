<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Refresh" content="2;testGetData.jsp"/>
<title>Insert title here</title>
</head>
<body>
   pageContext:<%= pageContext.getAttribute("pageValue")%><br>
   request:<%= request.getAttribute("requestValue")%><br>
   session:<%= session.getAttribute("sessionValue")%><br>
   application:<%= application.getAttribute("appValue")%><br>
   <%
   //response.addHeader("Refresh", "1");
   %>
</body>
</html>