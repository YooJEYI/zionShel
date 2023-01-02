<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	Boolean loginCk = (Boolean) session.getAttribute("admin");	

	if (loginCk == null) {
%>
	<script>
	
	alert('관리자만 접근할 수 있습니다.');
	history.back();
	
	</script>
<%
	}
%>
<!DOCTYPE html>
<html lang="en">
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
    
    
    <script src="/ckeditor/ckeditor.js"></script>
    
    <style type="text/css">
    
    .spanStyle{
    	color: black;
    	width: 100px;	
    
    }
    
    </style>
  </head>
  <body>

      <jsp:include page="head.jsp"></jsp:include>
    <!-- END nav -->
	
	<div style="height: 1000px;">
	    <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img" style="background-image: url(/bootstrap/images/s1.jpg);  height: 1000px;" >
				<div class="overlay"></div>
	    	<div class="container">
	    		<div class="row d-md-flex justify-content-end">
	    			<div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate">
	    				<h2 class="mb-4">공지사항 작성</h2>
	    				<form action="/board/write" method="post" class="appointment" enctype="multipart/form-data">
	    					<div class="row">
<!-- 								<span class="spanStyle" style="position: relative; left: 10px;"></span> -->
								<div class="col-md-8">
									<div class="form-group">
				              			<input type="text" id="boardTitle" name="boardTitle" class="form-control" placeholder="제목을 입력하세요">
				            		</div>
								</div>
								<div class="col-md-12">
									<div class="form-group" >
			              			<textarea id="boardContent" name="boardContent">내용을 입력하세요</textarea>
				            		</div>
								</div>
								<span class="spanStyle"  style="position: relative; left: 10px;"></span>
								<div class="col-md-12">
									<div class="form-group" >
			              				<input type="file" id="file" name="file" >
			              			</div>	
								</div>
								<div class="col-md-12">
									<div class="form-group">
						              <input type="submit" value="작성" class="btn btn-primary py-3 px-4">
						            </div>
								</div>
	    					</div>
		          </form>
	    			</div>
	    		</div>
	    	</div>
	    </section>
	</div>

    
  <script type="text/javascript">
		CKEDITOR.replace("boardContent");
  </script>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
  <script src="/bootstrap/js/jquery.min.js"></script>
  <script src="/bootstrap/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/bootstrap/js/popper.min.js"></script>
  <script src="/bootstrap/js/bootstrap.min.js"></script>
  <script src="/bootstrap/js/jquery.easing.1.3.js"></script>
  <script src="/bootstrap/js/jquery.waypoints.min.js"></script>
  <script src="/bootstrap/js/jquery.stellar.min.js"></script>
  <script src="/bootstrap/js/jquery.animateNumber.min.js"></script>
  <script src="/bootstrap/js/bootstrap-datepicker.js"></script>
  <script src="/bootstrap/js/jquery.timepicker.min.js"></script>
  <script src="/bootstrap/js/owl.carousel.min.js"></script>
  <script src="/bootstrap/js/jquery.magnific-popup.min.js"></script>
  <script src="/bootstrap/js/scrollax.min.js"></script>
  <script src="/bootstrap/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/bootstrap/js/google-map.js"></script>
  <script src="/bootstrap/js/main.js"></script>


    
  </body>
</html>