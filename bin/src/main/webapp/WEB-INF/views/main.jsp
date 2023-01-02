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
    
    <script type="text/javascript">
    		
    	   function getCookie(name){
    		   let cookie = document.cookie;
    		   
    		   if(document.cookie != ""){
    			   let cookie_array = cookie.split("; ");
    			   for(let index in cookie_array){
    				  let cookie_name = cookie_array[index].split("=");
    				  
    				  if(cookie_name[0] == "popupYN"){
    					  return cookie_name[1];
    				  }
    			   }
    		   }
    		   return;
    	   }	
    
		    function openWin(url) { 
					let cookieCheck = getCookie("popupYN");
		    		
				if(cookieCheck != "N"){
					var win = window.open(url,"PopupWin", "height=500px; width=435px;");
				}	
			}
    
    </script>
    
    
    <style type="text/css">
    	.sub-container {display: flex; flex-wrap: wrap;}
    	.sub-container img {width: 50%; height: 100%; cursor: pointer;}
    	.sub-container p {margin-bottom: 0.5rem;line-height: 1.4;}
    	
    	@media screen and (max-width:990px) {
    	.sub-container img {width: 100%;}
    	}
    </style>
  </head>
  
  <body>

    <jsp:include page="head.jsp"></jsp:include>
    
    <!-- END nav -->
    <div class="hero-wrap js-fullheight" onclick="alert('봉사자님의 사랑으로 시온쉼터는 오늘도 포기하지 않습니다.')" style="background-image: url('/bootstrap/images/s3.jpg'); " data-stellar-background-ratio="0.7">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-11 ftco-animate text-center">
          	<h2 class="mb-4"></h2>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section bg-light ftco-no-pt ftco-intro">
    	<div class="container">
    		<div class="row">
          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="cursor: pointer;">
            <div class="d-block services text-center">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-blind"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">봉사문의</h3>
                <p id="vol"> 250 마리의 유기견,학대방치된 구조견,시보호소에서 안락사 직전 구조 길고양이 급식소를 운영하고 있습니다 </p>
              </div>
            </div>      
          </div>
          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="cursor: pointer;">
            <div class="d-block services text-center">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-dog-eating"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">후원하기</h3>
                <p id="give">사람의 도움이 없이는 살아갈 수 없는 현실이 너무도 가슴이 아픕니다. 아이들을 도와주셔서 진심으로 감사드립니다.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate" style="cursor: pointer;">
            <div class="d-block services text-center">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="fa-solid fa-hand-holding-heart"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">입양하기</h3>
                <p id="adopt">사랑스럽고 예쁜 시온의 아이들의 가족을 찾습니다. 생명을 다할 때까지 가족이 되어줄 분은 입양 신청 부탁드립니다.</p>
              </div>
            </div>      
          </div>
        </div>
    	</div>
    </section>
		
	<div style="position: relative; margin-top: 50px; margin-bottom: 50px;" >
	 <iframe width="100%" height="750" src="https://www.youtube.com/embed/0Rya0igl1Rk?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script type="text/javascript">
	$("#vol").on("click",function(){
		var win = window.open("https://open.kakao.com/o/g6kEIJ6b","PopupWin", "width=2100px;,height=1600px;");
	});
	$("#give").on("click",function(){
		var win = window.open("https://www.ihappynanum.com/Nanum/B/B0CV58BN1L","PopupWin", "width=2100px;,height=1600px;");
	});
	$("#adopt").on("click",function(){
		var win = window.open("https://docs.google.com/forms/d/e/1FAIpQLSdxtkrRJFQXNyCXTYYRRsHoBci1G_2UID2LVCYFFakgIEEejA/viewform?usp=send_form","PopupWin", "width=2100px;,height=1600px;");
	});
  </script>  
    
  <script type="text/javascript">
  	function huwon(){
  		var win = window.open("https://link.tumblbug.com/9jd9io09Zqb","PopupWin", "width=2100px;,height=1600px;");
  	}
  </script>  
    
    
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
  </body>
</html>