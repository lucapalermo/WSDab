<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="labs.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	User user = (User) session.getAttribute("user");

if (request.getParameter("email") != null) {
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String favouriteColour = request.getParameter("favcol");
	user.setName(name);
	user.setEmail(email);
	user.setPassword(password);
	user.setGender(gender);
	user.setFavouriteColour(favouriteColour);
	%>
	<p> Details updated.</p>
	<%
}
%>

<h1>My Account</h1>
      
<form action="edit_user.jsp" method="post">
	<table>
		<tbody>
			<tr>
				<td>
				
				<label for="Email"> Email </label>
				</td>
				<td>
				<input name="email" type="text" value=<%= user.getEmail() %>>
				</td>
			</tr>
			<tr>
				<td>
				<label for="Full Name"> Full Name </label>
				</td>
				<td>
				<input name="name" type="text" value=<%= user.getName()%>>
				</td>
			</tr>
			<tr>
				<td>
				<label for="Passwd"> Password </label>
				</td>
				<td>
				<input name="password" type="text"value=<%= user.getPassword()%>>
				</td>
			</tr>
			<tr>
				<td>
				<label for="Gender"> Gender </label>
				</td>
				<td>
					<div>
						<input name="gender" type="radio" value="male">
						"Male"
					</div>
					<div>
						<input name="gender" type="radio" value="female">
						"Female"
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<label for="Fc"> Favorite Color </label>
				</td>
				<td>
					<select name="color">
						<option value="red">Red</option>
						<option value="green">Green</option>
						<option value="blue">Blue</option>
						<option value="yellow">Yellow</option>
						<option value="orange">Orange</option>
						<option value="pink">Pink</option>
					</select>
					
				</td>
			</tr>
			<tr>
				<td>
					<label for="Tos"> Agree on TOS </label>
				</td>
				<td>
					<input name="tos" type="checkbox">
				</td>
			
			</tr>
			<tr>
				<td>
				<label> </label>
				</td>
				<td>
				<input name="Register" type="submit" value="Save">
				
				</td>
			</tr>
		</tbody>
	</table>
</form>      

<p>Return to the <a href="index.jsp">main page</a>.</p>

</body>
</html>