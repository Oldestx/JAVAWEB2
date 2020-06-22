<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
</head>
<script type="text/javascript">
	function ValPwd() {
		var a = document.getElementById("password").value;
		console.log(a);
		var b = document.getElementById("password_again").value;
		console.log(b);
		if (a != b) {
			alert("密码不一致");
		}
	}
</script>
<body>
	<%@ include file="head.jsp"%>
	<div style="width: 1099px; margin: 15px auto;">
		<div
			style="width: 1096px; border: 2px dashed #20b1aa; font-size: 20px">
			<div style="margin-top: 10px; margin-bottom: 10px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置:&nbsp;&nbsp;&nbsp;注册新用户</div>
		</div>
	</div>

	<div style="width: 1099px; margin: 15px auto;">

		<div
			style="height: 500px; border: 2px dashed #20b1aa; font-size: 20px;">
			<div style="margin-top: 30px;">
				<table align="center">
					<tr>
						<td width="50%" align="right">注册新用户</td>
						<td>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</td>
						<td width="50%">修改密码</td>
					</tr>
				</table>
			</div>

			<div style="margin-top: 40px;">
				<form action="registerServlet" method="get">
					<table align="center">

						<tr>
							<td align="right">邮箱：</td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td align="right">用户名：</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td align="right">密码：</td>
							<td><input type="text" id="password" name="password"></td>
						</tr>
						<tr>
							<td align="right">再次输入密码：</td>
							<td><input type="text" id="password_again"
								name="password_again"></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="submit" value="提交注册信息" onclick="ValPwd()"></td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>