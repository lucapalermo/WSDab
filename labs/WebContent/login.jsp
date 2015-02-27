<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="loginAction.jsp" method="post">
	<table>
		<tbody>
			<tr>
				<td>
				<label for="Email"> Email </label>
				</td>
				<td>
				<input name="email" type="text">
				</td>
			</tr>
			<tr>
				<td>
				<label for="Passwd"> Password </label>
				</td>
				<td>
				<input name="password" type="text">
				</td>
			</tr>
			<tr>
			<td>
				<input name="Register" type="submit" value="Login">
				
				</td>
			</tr>	
	
		</tbody>
	</table>
</form>

</body>
</html>