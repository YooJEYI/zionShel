<%@ page language="java" contentType="text/html; 
charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<script type="/resources/jquery-3.6.0.js"></script>
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
    
    .spanStyle{
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
            	<a href="/board">돌아가기</a>
            	<h3><strong>검색하신 내용이 없습니다.</strong></h3>
            <hr />
            <br />
         </div>
         
      </div>
	</div>
   

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>