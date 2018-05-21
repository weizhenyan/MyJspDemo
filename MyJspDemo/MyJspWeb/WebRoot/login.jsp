<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
     String msg = "";
     // 获取请求参数值
     String aliaName = request.getParameter("aliaName");
     // 校验昵称
     if(aliaName != null && !"".equals(aliaName)){
    	 // 从application中获取用户列表
    	 java.util.Set<String> userList = (java.util.Set<String>)application.getAttribute("userList");
    	 // 判断用户列表是否为空
    	 if(userList == null){
    		 // 创建一个set对象
    		 userList = new java.util.HashSet<String>();
    		 // 将set对象放入application中
    		 application.setAttribute("userList", userList);
    	 }
    	 // 判断用户列表中有没有当前用户
    	 if(userList.contains(aliaName)){
    		 // 有的错误情况
    		 msg = aliaName+" 已经存在，请输入另外一个昵称";
    		 request.setAttribute("message", msg);
        	 request.getRequestDispatcher("loginPage.jsp").forward(request,response);
    	 }else{
    		 // 放入session
    		 session.setAttribute("currUser", aliaName);
    		 // 加入用户列表
    		 userList.add(aliaName);
    		 // 转向到聊天页面
             request.getRequestDispatcher("main.jsp").forward(request,response);
    	 }
     }else{
    	 // 生成错误信息
    	 msg = "必须输入昵称";
    	 // 设置错误信息
    	 request.setAttribute("message", msg);
    	 // 转向登录页面
    	 request.getRequestDispatcher("loginPage.jsp").forward(request,response);
     }
  %>
</body>
</html>