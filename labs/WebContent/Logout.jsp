<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="labs.*"%>
    
<% 
	User user = (User) session.getAttribute("user");

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% if (user != null){ %>
	
	<p> You have been logged out. Click <a href="register.jsp">here</a> to go back </p>
	<% session.invalidate(); %>

<% } else { %>

	<p> You are not logged in please register <a href="register.jsp">here</a>  </p>
	
<% }%>

</body>
</html>