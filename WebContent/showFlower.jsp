<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>鲜花展示</title>
</head>
<style type="text/css">
.fillet {
	width: 15px;
	height: 45px;
	background-color: #20b1aa;
	-webkit-border-radius: 100px;
}

.fenbianlv {
	height: 290px;
	width: 218px;
	border: 2px dashed #20b1aa;
	margin-left: 20px;
}

.jianju {
	margin-top: 15px;
	margin-left: 11px;
}

.tu {
	height: 260px;
	width: 195px;
}

.order {
	display: inline;
	border: #20b1aa dashed 1px;
	color: #20b1aa;
}

.full {
	margin-left: 10px;
	display: inline;
	border: #20b1aa dashed 1px;
	color: #20b1aa;
}

.afont {
	margin-top: 2px;
	margin-left: 4px;
	margin-right: 4px;
}
</style>
<body>
	<%@ include file="head.jsp"%>
	<div style="width: 1099px; margin: 15px auto;">
		<div
			style="width: 1096px; border: 2px dashed #20b1aa; font-size: 20px">
			<div style="margin-top: 10px; margin-bottom: 10px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置：鲜花展示</div>
		</div>
	</div>
	<div style="width: 1099px; margin: 15px auto;">
		<div
			style="height: 600px; border: 2px dashed #20b1aa; font-size: 20px;">
			<table>

				<tr>
					<td>
						<div class="fillet"
							style="margin-left: 15px; margin-top: 5px; margin-right: 10px;">
							<div style="color: white; font-weight: bolder;margin-left: 6px;margin-top: 10px">热门推荐</div>
						</div>
					</td>
					<!-- <td style="font-weight: bolder; color: #20b1aa;">热门推荐</td> html5效果 -->
				</tr>
			</table>
			<div style="margin-top: 30px;">
				<table align="center">
					<tr>
						<td>
							<div class="fenbianlv">
								<div class="jianju">
									<img src="images/图1牡丹.jpg" class="tu" />
								</div>
							</div>
						</td>
						<td>
							<div class="fenbianlv">
								<div class="jianju">
									<img src="images/图2月季.jpg" class="tu" />
								</div>
							</div>
						</td>
						<td>
							<div class="fenbianlv">
								<div class="jianju">
									<img src="images/图3百合.jpg" class="tu" />
								</div>
							</div>
						</td>
						<td>
							<div class="fenbianlv">
								<div class="jianju">
									<img src="images/图4郁金香.jpg" class="tu" />
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div align="center" style="margin-top: 10px;">牡丹/花中之王</div>
						</td>
						<td>
							<div align="center" style="margin-top: 10px;">月季/月月红</div>
						</td>
						<td>
							<div align="center" style="margin-top: 10px;">百合/云裳仙子</div>
						</td>
						<td>
							<div align="center" style="margin-top: 10px;">郁金香/魔幻之花</div>
						</td>
					</tr>
					<tr>
						<td>
							<div align="center" style="margin-top: 10px;">市场价:¥58</div>
						</td>
						<td>
							<div align="center" style="margin-top: 10px;">市场价:¥49</div>
						</td>
						<td>
							<div align="center" style="margin-top: 10px;">市场价:¥45</div>
						</td>
						<td>
							<div align="center" style="margin-top: 10px;">市场价:¥64</div>
						</td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<div class="order">
									<a class="afont">立即订购</a>
								</div>
								<div class="full">
									<a class="afont">详细</a>
								</div>
							</div>
						</td>
						<td>
							<div align="center">
								<div class="order">
									<a class="afont">立即订购</a>
								</div>
								<div class="full">
									<a class="afont">详细</a>
								</div>
							</div>
						</td>
						<td>
							<div align="center">
								<div class="order">
									<a class="afont">立即订购</a>
								</div>
								<div class="full">
									<a class="afont">详细</a>
								</div>
							</div>
						</td>
						<td>
							<div align="center">
								<div class="order">
									<a class="afont">立即订购</a>
								</div>
								<div class="full">
									<a class="afont">详细</a>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>