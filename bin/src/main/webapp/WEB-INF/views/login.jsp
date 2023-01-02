<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	
	<div style="height: 600px;">
	    <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img" style="background-image: url(/bootstrap/images/h11.jpg); background-size: 100%; height: 600px;" >
				<div class="overlay"></div>
	    	<div class="container">
	    		<div class="row d-md-flex justify-content-end">
	    			<div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate">
	    				<h2 class="mb-4">관리자 로그인</h2>
	    				<form action="/admin/login" method="post" class="appointment">
	    					<div class="row">
								<span class="spanStyle" style="position: relative; left: 10px;">아이디: </span>
								<div class="col-md-8">
									<div class="form-group">
				              			<input type="text" id="memId" name="memId" class="form-control" placeholder="아이디를 입력하세요">
				            		</div>
								</div>
								<span class="spanStyle"  style="position: relative; left: 10px;">비밀번호: </span>
								<div class="col-md-8">
									<div class="form-group" >
				              			<input type="password" id="memPw" name="memPw" class="form-control" placeholder="비밀번호를 입력하세요">
				            		</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
						              <input type="submit" value="로그인" class="btn btn-primary py-3 px-4">
						            </div>
								</div>
	    					</div>
		          </form>
	    			</div>
	    		</div>
	    	</div>
	    </section>
	</div>
     <jsp:include page="footer.jsp"></jsp:include>

    
  

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