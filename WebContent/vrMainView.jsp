<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/noljaBooster.css">
	<title>심심할땐? 놀자GO! : V R</title>
	<style type="text/css">

	#top {font-size: 1.5em; margin-left: 20px;}
	#g1 { margin-left: 50px; margin-top: 10px;}
	#t2 {margin-left: 30px;}
	</style>
<style type="text/css">
	.menubar-list {
		padding-left: 50px;
		width: 45%;
	}
	#review { color:#b1b1b1;}
	#open { color:black;}
	#c1 {margin-left: 15px;}
	a {display:block;}
	td { line-height: 220%}
	#table2{padding-left: 30px; margin-left:30px;}


</style>
</head>
<%@include file="menu.jsp" %>
<%------------ B O D Y ------------%>
<body>
	<hr>
	
	<div class="menubar-list center-block">
	<table id="tt">
	<c:forEach var="cafe" items="${list }">
	<tr>
		<th>
			<p id="g1">
			<a href="vrList1View.do?id=${id }&&cnum=${cafe.cnum }">
			<img src="images/${cafe.image1 }" alt="vr1 가게" width="300" height="230" style="vertical-align:text-top">
			</a>
			</p>
		</th>
		<td>
			<table id="t2">
				<tr>
					<td><h3><b>${cafe.cname }</h3></td>
				</tr>
				<tr>
						<td>
						<c:choose>
						<c:when test="${cafe.v_rate eq 1 }">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 1.5 }">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_Hstar.jpg" width="15" height="20">
						
						</c:when>
						<c:when test="${cafe.v_rate eq 2}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 2.5}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_Hstar.jpg" width="15" height="20">
						
						</c:when>
						<c:when test="${cafe.v_rate eq 3}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 3.5}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_Hstar.jpg" width="15" height="20">
							
						</c:when>
						<c:when test="${cafe.v_rate eq 4}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 4.5}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_Hstar.jpg" width="18" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 5}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
					</c:choose> 
					<span style="margin-left: 10px;">후기: ${cafe.review_count }개</span>
					</td>
				</tr>
				<tr>
					<td>이용시간 - ${cafe.open}:00 ~ ${cafe.close }:00</td>
				</tr>
				<tr>
					<td>[1인 기준]</td>
				</tr>
				<tr>
					<td>평일 - ${cafe.price }원</td>
				</tr>
				<tr>
					<td>주말 - ${cafe.redprice }원</td>
				</tr>
			</table>
		</td>
	</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
<%@include file="footer.jsp" %>