<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- hml注释 -->
   <%-- jsp注释 --%>
   <%
      // 行代码
      /*
       块
      */
      String abc = "hello";
   %>
   
   <%--
   <%@include file='index.jsp'%>
    --%>
   <jsp:include page="index.jsp"/>
  
</body>
</html>