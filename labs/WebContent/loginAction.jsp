<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="labs.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Action</title>
</head>
<body>

<%
	// Successfully gets the parameter from the the HTTP POST
	String email = request.getParameter("email");
	String password = request.getParameter("password");
%>


<% String filePath = application.getRealPath("/WEB-INF/users.xml");
%>


<jsp:useBean id="diaryApp" class="labs.DiaryApplication" scope="application">
    <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%
	Users users = diaryApp.getUsers();
	User user = users.login(email, password);
	
	if(user != null){
		session.setAttribute("user", user);
%>

	<p>Login successful. Click <a href="index.jsp">here</a> to return to the main page.</p>
<% } else { %>
	<p>Password incorrect. Click <a href="login.jsp">here</a> to try again.</p>
<% } %>


</body>
</html>