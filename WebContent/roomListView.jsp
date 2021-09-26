<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/noljaBooster.css">
	<title>심심할땐? 놀자GO! : V R</title>
	
	<style type="text/css">
	#rev_tab, #inf_tab{
		margin-left: 200px;
	}
	#tables{ float: left; display: inline;}
	
	game1 { width:20%;}
	
	#box {
		/* display: block; */
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
	.menubar-list {
		padding-left: 50px;
		width: 45%;
	}
	
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
		
		
		
		function change() {
			var	img1 = document.getElementById("img1");
			img1.src = "images/like2.png"
			alert("찜 목록에 추가 되었습니다.");
			
		
			/* else{
				img1.src = "images/like.png";
				alert("찜 목록에서 삭제 되었습니다.");
			} */
			//img1.src="images/like2.png";

			
		}
	</script>
<script type="text/javascript">
function btn1() {
	var i1 =document.getElementById("i1");
	if(i1.src.match("images/e_star.png")) i1.src="images/f_star.png";
	else i1.src="images/e_star.png";
	return false;
}
function btn2() {
	var i2 =document.getElementById("i2");
	if(i2.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	} else{
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
	}
}
function btn3() {
	var i3 =document.getElementById("i3");
	if(i3.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	i3.src="images/f_star.png";
	} else{
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
	}
}
function btn4() {
	var i4 =document.getElementById("i4");
	if(i4.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	i3.src="images/f_star.png";
	i4.src="images/f_star.png";
	} else{
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
	}

}
function btn5() {
	var i5 =document.getElementById("i5");
	if(i5.src.match("images/e_star.png")){
	i1.src="images/f_star.png";
	i2.src="images/f_star.png";
	i3.src="images/f_star.png";
	i4.src="images/f_star.png";
	i5.src="images/f_star.png";
	}
	else{
		i1.src="images/e_star.png";
		i2.src="images/e_star.png";
		i3.src="images/e_star.png";
		i4.src="images/e_star.png";
		i5.src="images/e_star.png";
	}
}
</script>
</head>
<body>
<%@include file="menu.jsp" %>
<%------------ B O D Y ------------%>
<body>
<div class="container-fluid" style="margin-bottom: 100px; margin-right: 10px;">		
	<img src="images/${cafe.image2 }" class="img-responsive" alt="Responsive image" style="margin: auto;">
	
	<div style="text-align: center;">
		    <p><h1 style="color: black">${cafe.cname }</h1><p>
			<h5>${cafe.caddress }</h5><p>
			
			<h4>${cafe.content }</h4>
	</div>
		<!-- tab  -->
		<div role="tabpanel" style="margin-top: 50px;">
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">테마 정보</a></li>
		    <li role="presentation"><a href="#reviewTab" aria-controls="reviewTab" role="tab" data-toggle="tab">후기</a></li>
		  </ul>
	
	 	 <!-- Tab panes -->
	 	 <div class="tab-content">
	 	
	  	 <div role="tabpanel" class="tab-pane active" id="home">
	    	
	    
	    	
	     <!------------------- 테마정보  tab  ------------------>
	    <div id="game1" style="float:left; margin-left: -30px;" >
		<c:forEach var="theme" items="${list }">
			<table id="tables">
				<tr>
		      	  <td>
		      	  <div id="box">
		      	 	 <p id="text" style="padding-top: 0.02px;"><h4 style=""><b>${theme.tname }</b></h4>
		      	  </div>
		      	  </td>
				</tr>
				<tr>
				   <td> 
				   <a href="roomList2View.do?id=${id }&&cnum=${theme.cnum}&&tnum=${theme.tnum}">
				  	 	<img src="images/${theme.timage }" class="effect" width="260px" height="260px" id="main" style="margin-left: 80px;"><p>
					</a>
					</td>	
				</tr>
				<tr>
					<td id="content" style="text-align: center;">
						인원 : 1 ~ ${theme.headcount } 명
					</td>
				</tr>
			</table>
		</c:forEach>
	</div>  
	</div>
	    
	    
	    <!------------------- 후기  tab  ------------------>
	    
	    <!-- <div role="tabpanel" class="tab-pane" id="reviewTab" >
	    	<table id="rev_tab">
		    	<tr>
		    			<td><br><img src="images/kangPro.JPG" alt="reviewImg" width="180" height="170"></td>	
						<td><h4>kang</h4> 
							<img src="images/f_star.png" alt="평점" width="20" height="20">
							<img src="images/f_star.png" alt="평점" width="20" height="20">
							<img src="images/f_star.png" alt="평점" width="20" height="20">
							<img src="images/f_star.png" alt="평점" width="20" height="20"><hr><br>굉장히 재밌어요~
							
				</td>
		    		</tr>
	    	</table>
	    </div> -->
	    
	    <div role="tabpanel" class="tab-pane" id="reviewTab">
	    	
	    	<div id=top style="width: 100%; text-align: center; font-size: 20px;"  >
		바른 후기 는 직접 체험한 회원만 작성할 수 있습니다.<a href="roomWriteReview.do?id=${id }"><input type="button" value="후기 쓰기" name="write" id="write"></a>
			</div>
	
		<div class="menubar-list center-block">
		<table>
						<tr>
							<th>평가하기</th>
							<td>
								<button type="button" name="rate" onclick="btn1()" value="1"
									style="border: none; background-color: white; margin-left: 100px;">
									<img src="images/e_star.png" id="i1" width="25" height="30">
								</button>
								<button type="button" name="rate" onclick="btn2()" value="2"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i2" width="25" height="30">
								</button>
								<button type="button" name="rate" onclick="btn3()" value="3"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i3" width="25" height="30">
								</button>
								<button type="button" name="rate" onclick="btn4()" value="4"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i4" width="25" height="30">
								</button>
								<button type="button" name="rate" onclick="btn5()" value="5"
									style="border: none; background-color: white;">
									<img src="images/e_star.png" id="i5" width="25" height="30">
								</button>
							</td>
						</tr>
						<tr>
							<td colspan="2"><textarea class="form-control" placeholder="후기를 작성해주세요.(100자 이내)" 
							name="name" id="name" maxlength="100" style="resize: none; height: 100px; width: 500px;"
							required="required"></textarea></td>
						</tr>
						<tr>
							<td><input type="button" value="완료" id="sub"></td>
						</tr>
					</table>
					
		<table>
			<c:forEach var="review" items="${review }">
			<tr>
				<td><br>
					<img src="${review.img}" width="150" height="150">
					
				</td>
				
				<td>
					${review.recontent }<br><hr>
					
					<c:choose>
						<c:when test="${cafe.v_rate eq 1 }">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 2}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 3}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
						<c:when test="${cafe.v_rate eq 4}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="20" height="22">
						</c:when>
						<c:when test="${cafe.v_rate eq 5}">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
							<img src="images/f_star.png" width="15" height="20">
						</c:when>
					</c:choose>  
					<span style="margin-left: 200px;">아이디: ${review.id} | 작성일: ${review.redate}</span>
				</td>
			</tr>
			</c:forEach>
			</table>
			</div>
	</div>
	</div>	    
	</div>
	
</div>
</body>
</html>
<%@include file="footer.jsp" %>