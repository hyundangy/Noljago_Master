<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카페 목록</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<style type="text/css">
table {
	width: 100%;
}
</style>
</head>
<body>
	<h2>카페 목록</h2>
	<table>
		<tr>
			<td><a href = "amCafeAddForm.do">카페 추가</a></td>
		</tr>
	</table>
	<table>
		<tr>
			<th>카페 번호</th>
			<th>카페 이름</th>
			<th>카페 주소</th>
			<th>카페 종류</th>
			<th>방 갯수</th>
			<th>카페 웹사이트</th>			
		</tr>
		<c:choose>
			<c:when test = "${totCnt > 0}">  <!-- 널 체크 -->
				<c:forEach var = "cafe" items = "${list }">
					<tr>
						<td width = 200>
							<a href = 'amCafeDetail.do?cnum=${cafe.cnum}&pageNum=${currentPage}'>
							${cafe.cnum}</a>
						</td>
						<td>${cafe.cname }</td>
						<td>${cafe.caddress }</td>
						<td>${cafe.type }</td>
						<td>${cafe.roomcount }</td>
						<td>${cafe.curl }</td>
					</tr>
					<c:set var = "startNum" value = "${startNum - 1 }"/>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan = 6>카페가 하나도 없군요 허허허</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	<div style="text-align: center;">
		<c:if test="${startPage > blockSize }">
			<a href='amCafeList.do?pageNum=${startPage-blockSize}'>[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href='amCafeList.do?pageNum=${i}'>[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < pageCnt }">
			<a href='amCafeList.do?pageNum=${startPage+blockSize}'>[다음]</a>
		</c:if>
	</div>
</body>
</html>