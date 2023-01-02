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
    
    <script src="https://kit.fontawesome.com/d97d92c13f.js" crossorigin="anonymous"></script>
    
     <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
  </head>
  <body>

    <jsp:include page="head.jsp"></jsp:include>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('/bootstrap/images/h5.jpg'); background-size: 40%;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html"><i class="ion-ios-arrow-forward"></i></a></span> <span> <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">봉사문의</h1>
          </div>
        </div>
      </div>
    </section>


    <section class="ftco-section bg-light" >
    	<div class="container">
    		<div class="row mb-5 pb-5">
		          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="cursor: pointer;">
		            <div class="d-block services text-center" style="height: 300px;">
		              <div class="icon d-flex align-items-center justify-content-center">
		            		<span class="fa-solid fa-comment"></span>
		              </div>
		              <div class="media-body p-4" id="openKakao">
		                <h3 class="heading">오픈 채팅</h3>
		                <p style="font-family: 'Noto Sans KR', sans-serif;">시온쉼터 자원봉사자들의 오픈채팅 입니다.</p>
		              </div>
		            </div>      
		          </div>
	          
		          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="cursor: pointer;">
		            <div class="d-block services text-center">
		              <div class="icon d-flex align-items-center justify-content-center">
		            		<span class="fa-brands fa-instagram"></span>
		              </div>
		              <div class="media-body p-4" id="insta">
		                <h3 class="heading">인스타그램</h3>
		                <p style="font-family: 'Noto Sans KR', sans-serif;">시온쉼터 인스타그램 입니다.</p>
		              </div>
		            </div>    
		          </div>

		          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="cursor: pointer;">
		            <div class="d-block services text-center">
		              <div class="icon d-flex align-items-center justify-content-center">
		            		<span class="fa-solid fa-n"></span>
		              </div>
		              <div class="media-body p-4" id="band">
		                <h3 class="heading">네이버밴드</h3>
		                <p style="font-family: 'Noto Sans KR', sans-serif;">시온쉼터 네이버밴드 입니다.</p>
		              </div>
		            </div>    
		          </div>
		          
		           <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="position: relative; top: 100px; cursor: pointer;">
		            <div class="d-block services text-center">
		              <div class="icon d-flex align-items-center justify-content-center">
		            		<span class="fa-solid fa-store"></span>
		              </div>
		           	  <div class="media-body p-5" id="dangGround">
		                <h3 class="heading">댕그라운드</h3>
		                <p style="font-family: 'Noto Sans KR', sans-serif;">시온쉼터를 도와주는 업체 입니다. 일정 수익금으로 도와주고 계십니다.</p> 
		              </div>
		            </div>      
	         	 </div>

		           <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="position: relative; top: 100px; cursor: pointer;">
		            <div class="d-block services text-center">
		              <div class="icon d-flex align-items-center justify-content-center">
		            		<span class="fa-solid fa-handshake-angle"></span>
		              </div>
		           	  <div class="media-body p-5" id="chunsa">
		                <h3 class="heading">대전천사</h3>
		                <p style="font-family: 'Noto Sans KR', sans-serif;">시온쉼터를 도와주는 봉사단체 입니다.</p> 
		              </div>
		            </div>      
	         	 </div>
	         	 
		          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="position: relative; top: 100px; cursor: pointer;">
		            <div class="d-block services text-center">
		              <div class="icon d-flex align-items-center justify-content-center">
		            		<span class="fa-solid fa-phone"></span>
		              </div>
		          	 	<a href="tel:010-3939-6036">   
			           	  <div class="media-body p-5">
			                <h3 class="heading">연락처</h3>
			                <p style="font-family: 'Noto Sans KR', sans-serif;">시온쉼터 소장님의 연락처 입니다.</p> 
			              </div>
		           		</a> 
		            </div>      
	         	 </div>
	         	 
	         	 <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="position: relative; top: 200px;"></div>
	         	 <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="position: relative; top: 200px;"></div>
	         	 <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="position: relative; top: 300px;"></div>
        	</div>
    	</div>
    </section>
    
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
  
  
	 <script type="text/javascript">
		$("#openKakao").on("click",function(){
			var win = window.open("https://open.kakao.com/o/g6kEIJ6b","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#insta").on("click",function(){
			var win = window.open("https://instagram.com/zion_shelter?igshid=YmMyMTA2M2Y=","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#band").on("click",function(){
			var win = window.open("https://band.us/band/63942980/post/11853","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#insaDog").on("click",function(){
			var win = window.open("https://insiderdog.kr/","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#chunsa").on("click",function(){
			var win = window.open("http://pf.kakao.com/_pDYlu","PopupWin", "width=2100px;,height=1600px;");
		});
		$("#dangGround").on("click",function(){
			var win = window.open("https://www.instagram.com/daengground/?igshid=YmMyMTA2M2Y%3D&__coig_restricted=1","PopupWin", "width=2100px;,height=1600px;");
		});
	</script>
		  
    
    
  </body>
</html>