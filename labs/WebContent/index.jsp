<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="labs.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1> Diary Keeper </h1>
	
	
	
	<%
	// Any Jsp page that wants to have access to the session needs to retrive the session all the
	// time.
	User user = (User) session.getAttribute("user");%>
	
	<% if (user != null){ %>
	
	<div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%;">
	You are logged in as <%= user.getName() %> <%= user.getEmail() %> 
	</div>
	
	<p> Login <a href="login.jsp">here</a> here.</p>
	
	<p> Register <a href="register.jsp">here</a> here.</p>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<p> Modify you account <a href="edit_user.jsp">here</a> here.</p>
	
	<% } else { %>
	
	
	
	<% } %>

</body>
</html>