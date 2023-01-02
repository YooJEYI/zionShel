<%@ page language="java" contentType="text/html; 
charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="/resources/jquery-3.6.0.js"></script>
<title>시온쉼터</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/bootstrap/css/animate.css">

<link rel="stylesheet" href="/bootstrap/css/owl.carousel.min.css">
<link rel="stylesheet" href="/bootstrap/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/bootstrap/css/magnific-popup.css">

<link rel="stylesheet" href="/bootstrap/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/bootstrap/css/jquery.timepicker.css">

<link rel="stylesheet" href="/bootstrap/css/flaticon.css">
<link rel="stylesheet" href="/bootstrap/css/style.css">


<style type="text/css">
.spanStyle {
	color: black;
	width: 100px;
}



table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 350px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 1200px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>
</head>
<script type="text/javascript">

	function fn_download(fname) {
		location.href = "/DogDownload?file=" + encodeURIComponent(fname);
	}
	
	function boardDelete(boardId) {
		
		if(confirm("삭제 하시겠습니까?")){
			location.href = "/boardDelete?boardId="+boardId
		}else{
			return false
		}
		
	}
	
	
	
	
</script>
<body>
	<jsp:include page="head.jsp"></jsp:include>

	<div class="row no-gutters">
		<div class="col-md-8" style="margin: auto;">
			<div class="contact-wrap w-100 p-md-5 p-4" >
				<h3 class="mb-4">공지내용 </h3> <a href="/board">돌아가기</a>
				<div class="row">
				 <% 
					Boolean loginCk2 = (Boolean) session.getAttribute("admin");	
				
					if (loginCk2 == null) {
					%>
						
					<%
						}else{
					%>
				
				            <button type="button" onclick="javascript:location.href='/board/modify?boardId=${boardDetail.boardId }';" class="btn btn-secondary" style="float: right;">수정</button>
				            <button type="button" onclick="boardDelete(${boardDetail.boardId })" class="btn btn-secondary" style="float: right; background-color: red; color: white;">삭제</button>
					<%
						}
					%>

					<table class="type09">
						<thead>
							<tr>
								<th scope="cols" style="font-size: 30px;"></th>
								<th scope="cols" style="font-size: 30px;"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td>${boardDetail.boardTitle }</td>
							</tr>
							<tr>
								<th scope="row" >공지내용</th>
								<td>${boardDetail.boardContent } <img alt="" src="/boardFile/${boardDetail.file}" style="size: 100%;"> </td>
							</tr>
							<tr>
								<th scope="row">파일</th>
								<td>
<!-- 									<div class="col-xl-4" style="position: relative; right: 20px;"> -->
										<a id="f_nm" href="javascript:fn_download('${boardDetail.file }')" class="text-muted font-weight-bold jscript">
											${boardDetail.file.split("_")[1] }
										</a>
<!-- 									</div> -->
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>