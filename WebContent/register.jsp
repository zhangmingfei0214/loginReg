<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<style type="text/css">
	.label {
		width: 20%;
	 }
	 .controler {
	 	width: 80%;
	 }
</style>
<script type="text/javascript" src="js/Calendar3.js"></script>
</head>
<body>
	<h1>用户注册</h1>
	<hr>
	<form name="regForm" action="servlet/RegisterServlet" method="POST">
		<table>
			<tr>
				<td class="label">用户名：</td>
				<td class="controler"><input type="text" name="username"></td>
			</tr>
			<tr>
				<td class="label">密码：</td>
				<td class="controler"><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="注册"> &nbsp;&nbsp;
					<input type="reset" value="取消"> &nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</form>
</body>
</html>