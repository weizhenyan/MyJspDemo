<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isErrorPage="true"
         isELIgnored="false"
         buffer="16kb"%>
<%@page import="java.util.Set" %>
<%@page import="java.util.List" %>
<%
   System.out.println("1111111");
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  我是一个错误页面${1+2 }
  <%
     System.out.println("xx");
  Set test;
  List list;
  int i= 20;
  if(i%2==0){
	  out.println("偶数");
  }else{
	  out.println("奇数");
  }
		  
  %>
</body>
</html>
<%
   System.out.println("2222222");
%>