<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
</head>
<script type="text/javascript">
	
</script>
<body>
	<%@ include file="head.jsp"%>
	<div style="width: 1099px; margin: 15px auto;">
		<div
			style="width: 1096px; border: 2px dashed #20b1aa; font-size: 20px">
			<div style="margin-top: 10px; margin-bottom: 10px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置:&nbsp;&nbsp;&nbsp;用户登录</div>
		</div>
	</div>

	<div style="width: 1099px; margin: 15px auto;">

		<div
			style="height: 500px; border: 2px dashed #20b1aa; font-size: 20px;">
			<div style="margin-top: 30px;">
			
				<table align="center">
					<tr>
						<h1 align="center">用户登录</h1>
					</tr>
				</table>
			</div>

			<div>
			<form action="LoginServlet" method="get">
				<table align="center">
					<tr>
						<td align="right">用户名：</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td align="right">密码：</td>
						<td><input type="text" name="password"></td>
					</tr>
					</form>

					<tr>
						<td></td>
						<td><input type="submit" value="登录"></td>
					</tr>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>