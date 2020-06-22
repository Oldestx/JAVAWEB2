<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>头部</title>
</head>
<style type="text/css">
.myHead {
	font-size: 50px;
	background-color: #A4D0D3;
	display: flex;
	align-items: center;
	padding-left: 20px;
	text-shadow: 4px 0px #FFF;
	font-family: 微软雅黑;
	color: #787878;
	background-color: #A4D0D3;
}

.fillet {
	width: 100px;
	height: 45px;
	border: 1px solid white;
	-webkit-border-radius: 100px;
}
</style>
<body>
	<div>
		<table width="1100" height="90" align="center" bgcolor="#a3d0d3">

			<tr>
				<td width="15%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img
					src="images/head_flower.png" height="100" /></td>
				<td width="75%"><a class="myHead">网上花店管理系统</a></td>
				<td width="5%" valign="top" align="right"><a href="register.jsp">注册</a>
				</td>
				<td width="4%" valign="top" align="right"><a href="Login.jsp">登录</a>
				</td>
			</tr>
		</table>

		<table style="font-size: 20px; font-family: 微软雅黑; color: white"
			width="1100" height="60px" align="center" bgcolor="#20b1aa">

			<tr>
				<td width="9%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</td>
				<td width="6%">鲜花</td>
				<td width="6%">果蔬</td>
				<td width="9%">婚庆系列</td>
				<td width="8%"><a href="userBack.jsp">用户反馈</a></td>
				<td width="60%" align="right">
					<div class="fillet" style="margin-right: 40px;">
						<div style="margin: 9px auto; text-align: center;">
							<a>花语百科</a>
						</div>
					</div>
				</td>
			</tr>
		</table>

	</div>

</body>
</html>