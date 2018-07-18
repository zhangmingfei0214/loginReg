<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.text.*" %>
   <%
	   	response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息页面</title>
</head>
<body>
	<h1>用户注册信息</h1>
	<hr>
	<center>
	<jsp:useBean id="regUser" class="entity.Users" scope="session"/>
		<table width="600" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td class="title">用户名：</td>
				<td class="content">&nbsp;<jsp:getProperty property="username" name="regUser"/></td>
			</tr>
			<tr>
				<td class="title">密码：</td>
				<td class="content">&nbsp;<jsp:getProperty property="password" name="regUser"/></td>
			</tr>
		</table>
	</center>
</body>
</html>