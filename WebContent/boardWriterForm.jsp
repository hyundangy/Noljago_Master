<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/noljaBooster.css">
<link rel="stylesheet" href="imageView.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

<title>심심할땐? 놀자GO! : 자유게시판</title>
<style type="text/css">
th {
	background-color: #eeeeee;
	text-align: center;
}

.content_main {
	cursor: pointer;
}

select, input[type=text] {
	padding: 6px;
	margin-top: 10px;
	font-size: 15px;
	border: 1px solid #dddddd;
}

.search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 10px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
}

.search-container button:hover {
	background: #ccc;
}
</style>
<script type="text/javascript">
window.onload=function(){
CKEDITOR.replace('content');
var editorText = "";
CKEDITOR.instansec.ckeditor.getdata();
}
</script>
</head>
<%@include file="menu.jsp"%>
<%------------ B O D Y ------------%>
<body>
	<!---------------- W R I T E R F O R M ------------------>
	<div class="container">
		<div class="row">
			<form action="boardWriterPro.do?pageNum=${pageNum }&id=${id}"
				method="post">
				<input type="hidden" name="bnum" value="${bnum }"> <input
					type="hidden" name="ref" value="${ref }"> <input
					type="hidden" name="ref" value="${id }">

				<table class="table table-hover" style="text-align: center;">
					<thead>
						<tr>
							<th colspan="2">글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><select class="selectpicker form-control"
								style="width: 120px;" name="category">
									<option>잡담</option>
									<option>정보</option>
									<option>기타</option>
							</select></td>
							<td style="width: 90%"><input type="text"
								class="form-control" placeholder="제목" name="subject"
								maxlength="50" required="required"></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="2"><textarea class="content" name="content" id="content" cols="50" rows="20"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="submit" id="savebutton" class="btn btn-info pull-right"
					value="글쓰기"><br /> <br /> <input type="reset"
					class="btn btn-info pull-right" value="다시작성">
			</form>
		</div>
	</div>
</body>
</html>
<%@include file="footer.jsp"%>