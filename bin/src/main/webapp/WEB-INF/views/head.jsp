<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
	<title>시온쉼터</title>
	<!-- 네이버 검색 -->
	<meta name="naver-site-verification" content="9831f57e3c336979ff024d6b413d4b075c7cf6e7" />
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
    <script src="/bootstrap/js/main.js"></script>

<meta charset="UTF-8">
<title>시온쉼터</title>
</head>
<body>
<div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
							<a href="tel:010-3939-6036" class="mr-2"><span class="fa fa-phone mr-1"></span>소장에게 연락</a> 
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">
						<div class="social-media">
				    		<p class="mb-0 d-flex">
				    			<a id="instaPop" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
				    			<a id="facebookPop" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
				    			<a id="youtubePop" class="d-flex align-items-center justify-content-center"><span class="fa fa-youtube"><i class="sr-only">YOUTUBE</i></span></a>
				    			<a id="bandPop" class="d-flex align-items-center justify-content-center"><span class="fa-solid fa-n"><i class="sr-only">Band</i></span></a>
				    		</p>
		        		</div>
<!-- 			    		  	<a href="/admin/login" class="d-flex align-items-center justify-content-center" style="color: white;">로그인</a> &nbsp; -->
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    	<a class="navbar-brand" href="/"><span class="flaticon-pawprint-1 mr-2"></span>시온쉼터</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> 메뉴
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="/" class="nav-link">홈</a></li>
	        	<li class="nav-item"><a href="/introduce" class="nav-link">인사말</a></li>
	        	<li class="nav-item"><a href="/storyList" class="nav-link">시온 이야기</a></li>
	        	<li class="nav-item"><a href="/volunteer" class="nav-link">봉사문의</a></li>
	       	    <li class="nav-item" ><a href="/support" class="nav-link">후원하기</a>
	       	    <li class="nav-item" ><a href="/star" class="nav-link">스타·팬클럽후원</a></li>
	       	    <li class="nav-item"><a href="/monthView" class="nav-link">이달의 영상</a></li>
	       	    <li class="nav-item"><a href="/suda" class="nav-link">익명 수다방</a></li>
	            <li class="nav-item"><a href="/board" class="nav-link">공지사항</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	  
	  <script type="text/javascript">
		$("#instaPop").on("click",function(){
			var win = window.open("https://www.instagram.com/zion_shelter/","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#facebookPop").on("click",function(){
			var win = window.open("https://www.facebook.com/profile.php?id=100015257287279","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#youtubePop").on("click",function(){
			var win = window.open("https://www.youtube.com/channel/UCYmFnZfAmL9i13KxGu8XzIw","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#bandPop").on("click",function(){
			var win = window.open("https://band.us/band/63942980/post/11853","PopupWin", "width=2100px;,height=1600px;");
		});
	</script>
	  
	  
</body>
</html>