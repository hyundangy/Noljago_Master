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
	
	table{ float: left; display: inline;}
	</style>

	<script type="text/javascript">
		$('#myTab a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			});

		$('#myTab a[href="#profile"]').tab('show') // Select tab by name
		$('#myTab a:first').tab('show') // Select first tab
		$('#myTab a:last').tab('show') // Select last tab
		$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)
	</script>
	
<style type="text/css">
game1 { width:20%; font-size: 30px;}
h2 {
	text-align: center;
	text-decoration: underline;
	margin-top: 50px;
}
#box {
	display: block;
	width: 260px;
	height: 35px;
	text-align: center;
	border: none;
	background: #4C4C4C;
	color:white;
	margin-left: 80px;
	margin-top: 50px;
}
#content { color: #B1B1B1; margin-left: 80px; padding-left: 80px;}
#content2{padding-left: 100px;}
#like { padding-left: 35px; padding-top: 17px; }
.effect:HOVER {
    display: inline-block;
    transform: rotate(5deg);
}
#reserve { background-color: white; border-color: black; }
#rate{ text-align: right;}
#cafe_info{ text-align: center;}
.menubar-list {
		padding-left: 50px;
		width: 45%;
	}
#contents td{line-height: 22px;}
</style>

<script type="text/javascript">
function btn1() {
	var i1 =document.getElementById("i1");
	var rate = $("#b1").val();
	if(i1.src.match("images/e_star.png")) {
		i1.src="images/f_star.png";
		$("#rate").val(rate);
		//alert($("#rate").val());
	} else {
		$("#rate").val("0");
		//alert($("#rate").val());
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
		i5.src="images/e_star.png";
	}
	return false;
}
function btn2() {
	var i2 =document.getElementById("i2");
	var rate = $("#b2").val();
	if(i2.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	$("#rate").val(rate);
	//alert($("#rate").val());
	} else{
		$("#rate").val("0");
		//alert($("#rate").val());
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
		i5.src="images/e_star.png";
	}
}
function btn3() {
	var i3 =document.getElementById("i3");
	var rate = $("#b3").val();
	if(i3.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	i3.src="images/f_star.png";
	$("#rate").val(rate);
	//alert($("#rate").val());
	} else{
		$("#rate").val("0");
		//alert($("#rate").val());
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
		i5.src="images/e_star.png";
	}
}
function btn4() {
	var i4 =document.getElementById("i4");
	var rate = $("#b4").val();
	if(i4.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	i3.src="images/f_star.png";
	i4.src="images/f_star.png";
	$("#rate").val(rate);
	//alert($("#rate").val());
	} else{
		$("#rate").val("0");
		//alert($("#rate").val());
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
		i5.src="images/e_star.png";
	}

}
function btn5() {
	var i5 =document.getElementById("i5");
	var rate = $("#b5").val();
	if(i5.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	i3.src="images/f_star.png";
	i4.src="images/f_star.png";
	i5.src="images/f_star.png";
	$("#rate").val(rate);
	//alert($("#rate").val());
	}
	else{
		$("#rate").val("0");
		//alert($("#rate").val());
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
		i5.src="images/e_star.png";
	}
}
</script>
</head>
<%@include file="menu.jsp" %>
<%------------ B O D Y ------------%>
<body>
<div class="container-fluid">
	<div id="cafe_info">
	 <img src="images/${cafe.image1 }" alt="가게 이미지" width="380" height="210">
	 <p><h1 style="color: gray">${cafe.cname }
			 <c:choose>
						<c:when test="${cafe_rate eq 1 }">
							<img src="images/f_star.png" width="20" height="35">
						</c:when>
						<c:when test="${cafe_rate eq 2}">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
						</c:when>
						<c:when test="${cafe_rate eq 3}">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
						</c:when>
						<c:when test="${cafe_rate eq 4}">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
						</c:when>
						<c:when test="${cafe_rate eq 5}">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
							<img src="images/f_star.png" width="20" height="35">
						</c:when>
					</c:choose> 
		</h1><p>
			
			<span style="margin-left: 20px; font-size: 16px; color: #949494; line-height: 40px;">${cafe.caddress }</span><br>
			<span style="font-size: 17px; line-height: 15px;">${cafe.content }</span>
	</div>

		<!-- tab  -->

		<div role="tabpane1" style="margin-top: 50px">
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">콘텐츠 안내</a></li>
		    <li role="presentation"><a href="#reviewTab" aria-controls="reviewTab" role="tab" data-toggle="tab">후기</a></li>
		  </ul>

	 	 <!-- Tab panes -->
	 	 <div class="tab-content">

	  	  <div role="tabpanel" class="tab-pane active" id="home">

	<div id="game1" style="float:left">
		<c:forEach var="theme" items="${list }">

	<table id="contents">
		<tr>
      	  <td>
      	  	<div id="box">
      	  		<p id="text">${theme.tname }</p>
      		</div>
      	  </td>
		</tr>

		<tr>
		   <td>
		 	  <a href="vrList2View.do?id=${id }&&cnum=${theme.cnum}&&tnum=${theme.tnum}">
		  	 	<img src="images/${theme.timage }" class="effect" width="260px" height="200px" id="main" style="margin-left: 80px; margin-top: 10px;"><p>
			  </a>
			</td>
		</tr>

		<tr>
			<td id="content">장르: 액션 FPS	</td>
		</tr>

		<tr>
			<td id="content">${theme.tcontent }</td>
		</tr>

		<tr>
			<td id="content">최대 인원: ${theme.headcount }</td>
		</tr>
	</table>
		</c:forEach>
	</div>
	</div>

	    <!------------------- 후기  tab  ------------------>
	<div role="tabpanel" class="tab-pane" id="reviewTab">
	   <div id=top style="width: 100%; text-align: center; font-size: 20px;"  >
			바른 후기 는 직접 체험한 회원만 작성할 수 있습니다. 	
	   </div>

	<!-- 후기 작성 테이블 -->
	<div class="menubar-list center-block">
	
	<c:if test="${res_yn >= 1 }">       <!-- 카페에 예약을 한 회원이면 후기 작성칸 활성화 -->
		<c:if test="${review_yn==0 }">
		<form action="vrWriteReviewPro.do?id=${id}" method="post">
			<input type="hidden" name="id" value="${id }">
			<input type="hidden" name="cnum" value="${cnum }">
			<input type="hidden" name="rate" id="rate" value="0">
					<table>
						<tr>
							<th>평가하기</th>
							<td>
								<button type="button" onclick="btn1()" id="b1" value="1"
									style="border: none; background-color: white; margin-left: 220px;">
									<img src="images/e_star.png" id="i1" width="25" height="30">
								</button>
								<button type="button" onclick="btn2()" id="b2" value="2"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i2" width="25" height="30">
								</button>
								<button type="button" onclick="btn3()" id="b3" value="3"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i3" width="25" height="30">
								</button>
								<button type="button" onclick="btn4()" id="b4" value="4"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i4" width="25" height="30">
								</button>
								<button type="button" onclick="btn5()" id="b5" value="5"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i5" width="25" height="30">
								</button>
							</td>
						</tr>
						<tr>
							<td colspan="2"><textarea class="form-control" placeholder="후기를 작성해주세요.(100자 이내)" 
							name="recontent" id="recontent" maxlength="100" style="resize: none; height: 100px; width: 500px;"
							required="required"></textarea></td>
						</tr>
					</table>
					<input type="submit" value="완료" id="sub" style="margin-left: 450px;">
			</form>
			</c:if>
		</c:if>


	<!-- 후기를 보여주는 테이블 -->
	 <table>
		<c:forEach var="review" items="${review }">
		<tr>
			<td><br>
				<img src="${review.img}" width="150" height="150">
			</td>

			<td>
				<span style="margin-left: 15px;">${review.recontent }</span><br><hr>

				<c:choose>
					<c:when test="${review.rate eq 1 }">
						<img src="images/f_star.png" width="15" height="20" style="margin-left: 17px;">
					</c:when>
					<c:when test="${review.rate eq 2}">
						<img src="images/f_star.png" width="15" height="20" style="margin-left: 17px;">
						<img src="images/f_star.png" width="15" height="20">
					</c:when>
					<c:when test="${review.rate eq 3}">
						<img src="images/f_star.png" width="15" height="20" style="margin-left: 17px;">
						<img src="images/f_star.png" width="15" height="20">
						<img src="images/f_star.png" width="15" height="20">
					</c:when>
					<c:when test="${review.rate eq 4}">
						<img src="images/f_star.png" width="15" height="20" style="margin-left: 17px;">
						<img src="images/f_star.png" width="15" height="20">
						<img src="images/f_star.png" width="15" height="20">
						<img src="images/f_star.png" width="15" height="20">
					</c:when>
					<c:when test="${review.rate eq 5}">
						<img src="images/f_star.png" width="15" height="20" style="margin-left: 17px;">
						<img src="images/f_star.png" width="15" height="20">
						<img src="images/f_star.png" width="15" height="20">
						<img src="images/f_star.png" width="15" height="20">
						<img src="images/f_star.png" width="15" height="20">
					</c:when>
				</c:choose>
				<span style="margin-left: 80px; font-size: 16px;">아이디: ${review.id} | 작성일: ${review.redate}</span>
			</td>
		</tr>
		</c:forEach>
		</table> 
		</div>
		
	</div>
	</div>
	</div>
	<table>
		<tr>
			<td id="msg"><br><hr></td>
		</tr>
	</table>
	
</div>
</body>
</html>
<%@include file="footer.jsp" %>