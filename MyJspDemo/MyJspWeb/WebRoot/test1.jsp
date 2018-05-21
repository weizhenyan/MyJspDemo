<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   111111111111111111111111<br/>
   <%
    
      //request.getRequestDispatcher("index.jsp").forward(request,response);
      //response.sendRedirect("index.jsp");
      //request.getRequestDispatcher("index.jsp").include(request, response);
   %>
   <!-- 指令包含 -->
   <%-- 
   <%@include file="index.jsp" %>
   
   <!--动作-->
   <jsp:include page='index.jsp'></jsp:include>
    
   <jsp:forward page="index.jsp"></jsp:forward>
   --%>
   
   <c:redirect url="index.jsp"></c:redirect>
</body>
</html>