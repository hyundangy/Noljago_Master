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
figure.snip1132 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  min-width: 500px;
  max-width: 500px;
  max-height: 300px;
  width: 100%;
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}
figure.snip1132:hover img,
figure.snip1132.hover img {
  opacity: 0.35;
  -webkit-transform: scale(1.15);
  transform: scale(1.15);
}
#name{font-size: 30px;}
#t1{
	margin-left: 370px;
	margin-top: 60px;
}
#t2{
	margin-left: 20px;
	margin-top: 100px;
	font-size: 1.5em;
}
#t2 td{height: 35px;}
</style>

<script type="text/javascript">
function like() {
		$.post('vrLike.do?id=${id}&cnum=${cnum}&tnum=${tnum}', function(msg){
			var num = msg.trim();
			var numArr = num.split('-');
			var likeCnt = numArr[0];
			var result = numArr[1];
			if(result == "1") {
				$("#like_cnt").text(likeCnt+"개");
				$("#img1").attr("src", "images/like2.png");
			}else if(result=="0"){
				$.post('vrLike2.do?id=${id}&cnum=${cnum}&tnum=${tnum}', function(msg){
					$("#like_cnt").text(likeCnt+"개");
					$("#img1").attr("src", "images/like.png");
					location.reload();
				});
			}
		});
}
</script>

<script type="text/javascript">
$(".hover").mouseleave(
	    function () {
	      $(this).removeClass("hover");
	    }
	  );
</script>
</head>
<%@include file="menu.jsp" %>
<%------------ B O D Y ------------%>
<body>
	<table>
		<tr>
			<td>

				<table id="t1">
					<tr id="name">
						<td>${theme.tname }
						<span style="color: #707070; font-size: 20px;">- ${cafe.cname }</span>
						</td>
					</tr>

					<tr>
						<td>
						<figure class="snip1132">
						<img src="images/${theme.timage }" class="effect"
							width="500px" height="300px">
						</figure>
						<p></td>

					</tr>


				</table>
			</td>
			<td>
				<table id="t2">
					<tr>
						<td id="content">장르: 액션 FPS</td>
					</tr>
					<tr>
						<td id="content">${theme.tcontent }</td>
					</tr>

					<tr>
						<td id="content">최대 인원: ${theme.headcount }</td>
					</tr>

					<tr>
						<td id="content">VR 체험 난이도: <c:choose>
								<c:when test="${theme.score1 eq 1 }">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score1 eq 2}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score1 eq 3}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">

								</c:when>
								<c:when test="${theme.score1 eq 4}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score1 eq 5}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
								</c:when>
							</c:choose>
						</td>
					</tr>

					<tr>
						<td id="content">스릴감: <c:choose>
								<c:when test="${theme.score2 eq 1 }">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score2 eq 2}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score2 eq 3}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">

								</c:when>
								<c:when test="${theme.score2 eq 4}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score2 eq 5}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
								</c:when>
							</c:choose>
						</td>
					</tr>


					<tr>
						<td id="content">공포감: <c:choose>
								<c:when test="${theme.score3 eq 1 }">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score3 eq 2}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score3 eq 3}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">

								</c:when>
								<c:when test="${theme.score3 eq 4}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score3 eq 5}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
								</c:when>
							</c:choose>
						</td>
					</tr>

					<tr>
						<td id="content">볼거리: <c:choose>
								<c:when test="${theme.score4 eq 1 }">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score4 eq 2}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score4 eq 3}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">

								</c:when>
								<c:when test="${theme.score4 eq 4}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/e_star.png" width="15" height="20">
								</c:when>
								<c:when test="${theme.score4 eq 5}">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
									<img src="images/f_star.png" width="15" height="20">
								</c:when>
							</c:choose>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<%-- <a href="vrLike.do?id=${id }&&cnum=${theme.cnum }&&tnum=${theme.tnum }">
		<img src="images/wish.JPG" id="img1" width="40" height="40" style="margin-left: 1200px;">
	</a>  --%>
	
	<c:if test="${good_y==1 }">	<!-- 들어간 테마가 좋아요 클릭한 상태이면 -->
		<a id="btn_like" style="margin-left: 1100px;" onclick="like();"><img src="images/like2.png" id="img1" width="40" height="40" style=" background-color: white;"></a>
	</c:if>
	<c:if test="${good_y==0 }">	<!-- 아니면 -->
		<a id="btn_like" style="margin-left: 1100px;" onclick="like();"><img src="images/like.png" id="img1" width="40" height="40" style=" background-color: white;"></a>
	</c:if>
	
	<a href="vrReserveView.do?id=${id }&&cnum=${theme.cnum }&&tnum=${theme.tnum}"><button id="reserve" style="margin-left: 20px;">예약하기</button></a>
	<p id="like_cnt" style="margin-left: 1108px;">${num}개</p>
</body>
</html>
<%@include file="footer.jsp" %>