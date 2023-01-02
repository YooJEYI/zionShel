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
    
    <style type="text/css">
	    .spanStyle {
	    	color: black;
	    	width: 100px;	
  		 }
    </style>
    
    
  </head>
  <body>
     <jsp:include page="head.jsp"></jsp:include>
	<div class="content">
      <!-- Start Content-->
      <div class="container-fluid">
         <!-- start page title -->
         <div class="row">
			<div class="col-12">
				<div class="page-title-box">
					
					<div style="display: inline-block;">
						<h4 class="page-title"></h4>
					</div>
            </div>
            </div>
         </div>
         <!-- end page title -->
    
         
         <div class="container">
            <form  class="form-inline" action="/searchBoard" method="get" style="float: right">
               <div class="form-group mb-2" >
                  <input type="search" class="form-control"  name="boardTitle" placeholder="Search..." style="width: 140px;">
                  <div class="input-group-append-sm" >
                     <button type="submit" class="btn btn-primary btn-flat">검색</button>
                  </div>
               </div>
            </form>
            
            <br />
	            <table class="table table-sm">
	                  <thead style="text-align: center;">
	                     <tr>
	                        <th style="width: 80px;">번호</th>
	                        <th style="width: 100px;">제목</th>
	                        <th style="width: 100px;">날짜</th>
	                     </tr>
	                  </thead>
	                  <tbody style="text-align: center;">
	                     <c:forEach var="board" items="${boardList}" varStatus="varStatus">
	                           <tr>
	                              <td>${board.rnum } </td>
	                              <td ><a href="/board/boardDetail?boardId=${board.boardId }"> ${board.boardTitle } </a></td>
	                              <td>${board.boardCreateDate }</td>
	                           </tr>
	                     </c:forEach>
	                  </tbody>
	            </table>
            <hr />
               <div class="row">
               <div class="col-sm-12 col-md-5" >
                  <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">
                  </div>
               </div>
               <div class="col-sm-12 col-md-7">
                  <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="position: relative; right: 25px;">
                     <ul class="pagination mb-0">
                        <li class="paginate_button page-item previous <c:if test='${conferencePage.startPage<=5}'>disabled</c:if>" id="dataTable_previous"><a href="/board?currentPage=${conferencePage.startPage-5}" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link"> 이전 </a></li>
                        <c:forEach var="pNo" begin="${conferencePage.startPage}" end="${conferencePage.endPage}">
                           <li class="paginate_button page-item <c:if test='${param.currentPage eq pNo}'> active</c:if>"><a href="/board?currentPage=${pNo}" aria-controls="dataTable" data-dt-idx="${pNo}" tabindex="0" class="page-link"> ${pNo} </a></li>
                        </c:forEach>
                        
                        <li class="paginate_button page-item next <c:if test='${conferencePage.endPage >= conferencePage.totalPages}'>disabled</c:if>" id="dataTable_next"><a href="/board?currentPage=${conferencePage.startPage+5}" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link"> 다음 </a></li>
                     </ul>
                  
                   <% 
					Boolean loginCk2 = (Boolean) session.getAttribute("admin");	
				
					if (loginCk2 == null) {
					%>
						
					<%
						}else{
					%>
				
				            <button type="button" onclick="javascript:location.href='/board/write';" class="btn btn-secondary" style="float: right;">작성</button>
					<%
						}
					%>
                  
                  </div>
               </div>
            </div>
            <br />
         </div>
         
      </div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>