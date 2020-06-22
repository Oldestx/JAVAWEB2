<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户反馈</title>
</head>
<body>
	<%@ include file="head.jsp"%>
	<div style="width: 1099px; margin: 15px auto;">
		<div
			style="width: 1096px; border: 2px dashed #20b1aa; font-size: 20px">
			<div style="margin-top: 10px; margin-bottom: 10px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置：用户反馈</div>
		</div>
	</div>

	<div style="width: 1099px; margin: 15px auto;">

		<div
			style="height: 500px; border: 2px dashed #20b1aa; font-size: 20px;">
			<div style="margin-top: 10px;">
				<table align="center">
					<tr>
						<td width="50%" align="right">签写留言</td>
						<td>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</td>
						<td width="50%">查看回复</td>
					</tr>
				</table>
			</div>

			<div style="margin-top: 40px;">
			<form action="backServlet" method="get">
				<table align="center">
					<tr>
						<td>*留言者:</td>
						<td><input type="text" name="name"></td>
						<td>(*为必填项)</td>
					</tr>
					<tr>
						<td>联系电话:</td>
						<td><input type="text" name="telphone"></td>
						<td>(如留手机号,我们将短信回复您)</td>
					</tr>
				</table>

				<div style="margin-top: 10px;">
					<table align="center">
						<tr>
							<td valign="top">*内容:</td>
							<td><textarea rows="10" cols="48" name="content"></textarea></td>
						</tr>
					</table>
					</form>

					<table align="center">
						<tr>
							<td><input type="submit" value="马上提交"></td>
							<td><input type="submit" value="取消"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>