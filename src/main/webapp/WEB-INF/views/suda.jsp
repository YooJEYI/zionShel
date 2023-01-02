<%@ page language="java" contentType="text/html; 
charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>시온쉼터</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/bootstrap/css/animate.css">
    <link rel="stylesheet" href="/bootstrap/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/bootstrap/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/bootstrap/css/magnific-popup.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/bootstrap/css/jquery.timepicker.css">
    <link rel="stylesheet" href="/bootstrap/css/flaticon.css">
    <link rel="stylesheet" href="/bootstrap/css/style.css">
    <script src="/bootstrap/js/jquery-3.6.0.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	<script src="/bootstrap/js/bootstrap-datepicker.js"></script>
	<script src="/bootstrap/js/jquery.timepicker.min.js"></script>
	<script src="/bootstrap/js/owl.carousel.min.js"></script>
	<script src="/bootstrap/js/jquery.magnific-popup.min.js"></script>
	<script src="/bootstrap/js/scrollax.min.js"></script>
	<script src="/bootstrap/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/bootstrap/js/main.js"></script>
    
    
    <style type="text/css">
    .spanStyle{
    	color: black;
    	width: 100px;	
    }
    #ttt2{
    	flex-wrap;
    	justify-content: flex-start;
    }
    </style>
</head>
<script>
	
	$(document).ready(function(){
		alert("익명 수다방인 만큼 서로를 더 배려해 주세요♥♥")		
	})
	
	function contentPost() {
				
			let boardCont = $("#content").val();	
			
			if(boardCont === ""){
				alert("내용을 작성해주세요♥");
				return false;
			}else{
				$.ajax({
				url : "/sudaContent",
				dataType : "json",
				data : JSON.stringify({
					boardContent : boardCont
				}),
				contentType: 'application/json',
				type : "POST",
				success : function(data){
					$("#sudaListBody").html('');
					$(data).each(function(i, e){
					debugger
					    var html = '';
					    
						html += '<tr id="ROW_' + e.boardId + '">';
						html += ' <td class="table-user" style="width: 10;"></td>'
					    html += ' <td class="table-user" style="width: 600px;">'+ e.boardContent+'</td>';
					    html += ' <td class="table-user" style="width: 200px;">'+ e.boardCreateDate +'</td>'
					    html += ' <td> <button onclick="deleteBoard('+ e.boardId +');" style="cursor: pointer;">X</button> </td>';
					    html += '</tr>';
					    $("#sudaListBody").append(html);
					    $('#content').val(''); //작성후 인풋창 초기화
					});
				},
				error : function(e) {
					console.log(e);
				}
			})
			
		}
			
	}
	

	function deleteBoard(boardIdx) {
		
		let result = confirm("정말 삭제하시겠습니까?");
		
		if(result == true){
			$.ajax({
				url : "/deleteBoard",
				dataType : "json",
				data : JSON.stringify({
					boardId : boardIdx
				}),
				contentType: 'application/json',
				type : "POST",
				success : function(data){
					$('#ROW_' + boardIdx).remove();
				},
				error : function(e) {
					console.log(e);
				}
			});
		}else {
			return false;
		}
		
	}
	
</script>
<body>
<!-- 헤더 -->
<jsp:include page="head.jsp"></jsp:include>
<!-- 헤더 끝 -->

<div class="container-fluid" id="ttt2" >

	<!-- start page title -->
	<div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<h4 class="page-title">수다방 : 익명인 만큼 서로 배려로 대화 합시다.</h4>
			</div>
		</div>
	</div>
	<!-- end page title -->

	<div class="row" >
		<div class="col-12" >
			<div class="card">
				<div class="card-body">
					<div class="row mb-2">
						<!-- end col-->
					</div>

					<div class="table-responsive" id="ttt1" style=" height: 600px;">
						<input id="content" type="text" placeholder="작성란..">
						<button value="작성" id="conPostBtn" class="btn btn-primary" style="border: 30px;" onclick="contentPost()">작성</button>
						<table class="table table-centered table-striped dt-responsive nowrap w-100" id="products-datatable" >
							<thead>
								<tr>
									<th style="width: 50px;"></th>
									<th ></th>
								</tr>
							</thead>
							<tbody  id="sudaListBody" >
								<c:forEach items="${sudaList}" var="sudaList">
									<tr id="ROW_${sudaList.boardId}">
										<td class="table-user" style="width: 10;"></td>
										<td class="table-user" style="width: 600px;"><c:out value="${sudaList.boardContent}"></c:out></td>
										<td class="table-user" style="width: 200px;">${sudaList.boardCreateDate} </td>
										<td><button onclick="deleteBoard(${sudaList.boardId})" style="cursor: pointer;">X</button> </td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div>
						</div>
					</div>
				</div>
				<!-- end card-body-->
			</div>
			<!-- end card-->
		</div>
	</div>
	<!-- end row -->
</div>

<!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- 푸터끝 -->
</body>
</html>