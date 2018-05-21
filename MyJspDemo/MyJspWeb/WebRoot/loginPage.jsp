<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type='text/javascript'>
   function toVerify(){
	   var _value = document.getElementById("aliaName").value;
	   if(_value == null || _value==''){
		   alert("必须输入昵称");
		   return false;
	   }else{
		   return true;
	   }
   }
</script>
</head>
<body>
  <form action="login.jsp" method="post" onsubmit="return toVerify()">
  请输入昵称:<input type='text' name='aliaName' id="aliaName"/><input type='submit' value='进入聊天室'/>
  </form>
  
  
 <%
    //request.setAttribute("message","ttttttt");
    String msg = (String) request.getAttribute("message");
    if(msg != null && !"".equals(msg)){
 %>
 
  <script type='text/javascript'>
     alert('<%=msg%>');// out.println(msg);
  </script>
  
 <%
    }
 %>
</body>
</html>