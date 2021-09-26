<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 상세정보</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
table {
	width: 80%;
	}
</style>

<script type="text/javascript">
	function reservDelete() {
		var form = document.reservdeleteform;
		if (confirm("예약을 취소하시겠습니까?")) {
			form.submit();
		} else {
			return;
		}
	}
</script>

</head>
<body>
<table border = "1">
	<caption><h2>예약 정보 상세 내역</h2></caption>
	<tr><td width = "100">예약 날짜</td><td>${reserv.resdate}</td></tr>
	<tr><td>아이디</td><td>${reserv.id}</td></tr>
	<tr><td>시작 시간</td><td>${reserv.starttime}</td></tr>
	<tr><td>끝 시간</td><td>${reserv.endtime}</td></tr>
	<tr><td>파티 번호</td><td>${reserv.pnum}</td></tr>
	<tr><td>카페 번호</td><td>${reserv.cnum}</td></tr>
	<tr><td>테마 번호</td><td>${reserv.tnum}</td></tr>
	<tr><td>예약 번호</td><td>${reserv.resno}</td></tr>
	<tr><td>인원 수</td><td>${reserv.count}</td></tr>
	<tr><td>포인트</td><td>${reserv.point}</td></tr>
	<form name = "reservdeleteform" method = "post" action = "amReservationDeletePro.do?resno=${reserv.resno}&id=${id}&pageNum=${pageNum}">
	<tr><td colspan = "2">
	<input type = "button" value = "수정" onclick = "location.href='amReservationUpdateForm.do?resno=${reserv.resno}&id=${id}&pageNum=${pageNum}'">
	<input type = "button" value = "삭제" onclick = "javascript:reservDelete()">
	<input type = "button" value = "목록" onclick = "location.href='amReservationList.do?id=${id}&pageNum=${pageNum}'">
	</td></tr>
	</form>
</table>


</body>
</html>