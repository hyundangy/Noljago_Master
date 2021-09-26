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
	<title>심심할땐? 놀자GO! : 예 약</title>
	<style type="text/css">
	
	#reserveList {
		    list-style:none;
		    margin:0;
		    padding:0;
		}
	#reserveList2 {
			 margin: 2px;
			display:block; 
			 width:33%; 
		    height:40px;
		    background:#bdbdbd; 
		    color:white;
		    float: left;
		    font-weight: 200;
		    font-size: 1.5em;
		    text-align: center;
		}
		
		
	.button {
	   border: 2px solid #e3e3e3;
	   background: #ffffff;
	   background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#ffffff));
	   background: -webkit-linear-gradient(top, #ffffff, #ffffff);
	   background: -moz-linear-gradient(top, #ffffff, #ffffff);
	   background: -ms-linear-gradient(top, #ffffff, #ffffff);
	   background: -o-linear-gradient(top, #ffffff, #ffffff);
	   background-image: -ms-linear-gradient(top, #ffffff 0%, #ffffff 100%);
	   padding: 13.5px 27px;
	   -webkit-border-radius: 0px;
	   -moz-border-radius: 0px;
	   border-radius: 0px;
	   -webkit-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 0px 0;
	   -moz-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 0px 0;
	   box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 0px 0;
	   text-shadow: #cfcfcf 0 1px 0;
	   color: #8c8c8c;
	   font-size: 24px;
	   font-family: helvetica, serif;
	   text-decoration: none;
	   vertical-align: middle;
	   }
	.button:hover {
	   border: 2px solid #828282;
	   text-shadow: #dbdbdb 0 1px 0;
	   background: #ebebeb;
	   background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
	   background: -webkit-linear-gradient(top, #ededed, #ebebeb);
	   background: -moz-linear-gradient(top, #ededed, #ebebeb);
	   background: -ms-linear-gradient(top, #ededed, #ebebeb);
	   background: -o-linear-gradient(top, #ededed, #ebebeb);
	   background-image: -ms-linear-gradient(top, #ededed 0%, #ebebeb 100%);
	   color: #616161;
	   }
	.button:active {
	   text-shadow: #080808 0 1px 0;
	   border: 2px solid #969696;
	   background: #969696;
	   background: -webkit-gradient(linear, left top, left bottom, from(#969696), to(#ebebeb));
	   background: -webkit-linear-gradient(top, #969696, #969696);
	   background: -moz-linear-gradient(top, #969696, #969696);
	   background: -ms-linear-gradient(top, #969696, #969696);
	   background: -o-linear-gradient(top, #969696, #969696);
	   background-image: -ms-linear-gradient(top, #969696 0%, #969696 100%);
	   color: #ffffff;
	   }
	</style>
	
</head>
<%@include file="menu.jsp" %>
<%------------ B O D Y ------------%>
<body>
	
	<div style="margin: auto;">		
		<div id="top" style="margin-top: 50px">
			<ul id="reserveList">
				<li id="reserveList2">01. 날짜/시간 선택</li>
				<li id="reserveList2">02. 예약 정보 입력</li>
				<li id="reserveList2" style="background-color: red;">03. 예약 완료</li>
			</ul>
		</div>
	</div><p>
	
	<c:if test="${result < 0 }">  
		<script type="text/javascript">
			if (confirm("회원님의 포인트가 모자른데.. 충전하러 Go?")) {
				window.open('addPoint.do?id=${id}', 'AddPoint', 'width=500px,height=500px')
				window.history.go(-1);
			} else {
				alert("결제 취소 되었다Go!")
				window.history.go(-1);	//예약 시간 페이지로 보냄
			}
		</script>
	</c:if>
	
	<c:if test="${result > 0 }">
		<div align="center" style="margin-left: 50px; margin-top: 150px">
			<h2 style="margin-bottom: 40px;">${member.name }님의 예약이 확인되었습니다.</h2>
			<p>
			<table style="margin-bottom: 30px;">
				<tr>
					<th>예약번호 :</th>
					<td>${resno}</td>
				</tr>
				<tr>
					<th>테마 :</th>
					<td>${theme.tname }</td>
				</tr>
				<tr>
					<th>예약일시 :</th>
					<td>${date } ${time }</td>
				</tr>
				<tr>
					<th>인원 :</th>
					<td>${count }</td>
				</tr>
				<tr>
					<th>총 이용요금 :</th>
					<td>${point }</td>
				</tr>
				
			</table>
		</div><p>
		<p style="text-align: center;">자세한 내역은 My Page 에서 확인할 수 있습니다.</p>
		<div align="center" style="margin-top:30px;">
			<a href='main.do?id=${id}' class='button'>메인화면</a>
		</div>
	</c:if>
	
	<c:if test="${result == 0 }">  
		<script type="text/javascript">
			alert("회원님은 같은 날짜, 같은 시간에 이미 예약이 있다Go!");  
			window.history.go(-2);	//예약 시간 페이지로 보냄
		</script>
	</c:if>
	
</body>
</html>
<%@include file="footer.jsp" %>