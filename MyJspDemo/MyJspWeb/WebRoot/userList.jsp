<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="testPageTag.jsp"
    buffer="8kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 2秒刷新 -->
<meta http-equiv="Refresh" content="2;userList.jsp"/>
<title>Insert title here</title>
</head>
<body>
    <%
       // 从application中获取用户列表
       java.util.Set<String> userList = (java.util.Set<String>)application.getAttribute("userList");
       // 从session中获取当前用户
       String currName = (String)session.getAttribute("currUser");
       for(String name:userList){
    	   // 如果同当前用户一样
    	   if(currName != null && currName.equals(name)){
    %>
    
               <font color='red'><%=name %></font><br/>
               
    <%
    	   }else{
    %>
    
               <%=name %><br/>
               
    <%	   
    	   }
       }
    %>
</body>
</html>