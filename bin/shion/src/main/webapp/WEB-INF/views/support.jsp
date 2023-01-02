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
  </head>
  <body>

     <jsp:include page="head.jsp"></jsp:include>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('/bootstrap/images/h7.jpg'); " data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-11 ftco-animate text-center">
          	<h2 class="mb-4" style="color: white;">사설 유기견 보호소 시온쉼터를 도와주세요</h2>
            <p><a id="give3" class="btn btn-primary mr-md-4 py-3 px-4" style="font-size: 27px;">후원하기 <span class="ion-ios-arrow-forward"></span></a></p>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section bg-light ftco-faqs">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 order-md-last">
    				<div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0" style="background-image:url(/bootstrap/images/h10.jpg);">
    					<a href="https://www.youtube.com/watch?v=z63VdxrGUz0" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
    						<span class="fa fa-play"></span>
    					</a>
    				</div>
    				<div class="d-flex mt-3">
    					<div class="img img-2 mr-md-2" style="background-image:url(/bootstrap/images/h8.jpg);"></div>
    					<div class="img img-2 ml-md-2" style="background-image:url(/bootstrap/images/h9.jpg);"></div>
    				</div>
    			</div>

    			<div class="col-lg-6">
    				<div class="heading-section mb-5 mt-5 mt-lg-0">
	            <h2 class="mb-3">시온쉼터</h2>
	            <p></p>
    				</div>
    				<div id="accordion" class="myaccordion w-100" aria-multiselectable="true">
						  <div class="card">
						    <div class="card-header p-0" id="headingOne">
						      <h2 class="mb-0">
						        <button href="#collapseOne" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="true" aria-controls="collapseOne">
						        	<p class="mb-0">시온쉼터는 어떤곳인가요?</p>
						          <i class="fa" aria-hidden="true"></i>
						        </button>
						      </h2>
						    </div>
						    <div class="collapse show" id="collapseOne" role="tabpanel" aria-labelledby="headingOne">
						      <div class="card-body py-3 px-0">
						      	<ol>
						      		<li>시온쉼터는 사설 유기견 보호소 입니다.</li>
						      		<li>소장 한명이서 250마리를 돌보고 있습니다.</li>
						      		<li>한달에 사료비만 800만원이 나가고 있습니다.</li>
						      	</ol>
						      </div>
						    </div>
						  </div>

						  <div class="card">
						    <div class="card-header p-0" id="headingTwo" role="tab">
						      <h2 class="mb-0">
						        <button href="#collapseTwo" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseTwo">
						        	<p class="mb-0">시온쉼터를 어떻게 도울 수 있을까요?</p>
						          <i class="fa" aria-hidden="true"></i>
						        </button>
						      </h2>
						    </div>
						    <div class="collapse" id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo">
						      <div class="card-body py-3 px-0">
						      	<ol>
						      		<li>직접 와주셔서 봉사해주시면 감사드립니다.</li>
						      		<li>아이들의 사료 및 병원비를 위해 모금 후원 부탁 드립니다.</li>
						      	</ol>
						      </div>
						    </div>
						  </div>

						  <div class="card">
						    <div class="card-header p-0" id="headingThree" role="tab">
						      <h2 class="mb-0">
						        <button href="#collapseThree" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseThree">
						        	<p class="mb-0">봉사를 하러 가면 어떤 일을 하나요?</p>
						          <i class="fa" aria-hidden="true"></i>
						        </button>
						      </h2>
						    </div>
						    <div class="collapse" id="collapseThree" role="tabpanel" aria-labelledby="headingTwo">
						      <div class="card-body py-3 px-0">
						      	<ol>
						      		<li>아이들의 사료를 나눠주는 사료봉사를 합니다.</li>
						      		<li>아이들의 배설물을 포대자루에 치웁니다.</li>
						      		<li>아이들의 생활터전을 청소합니다.</li>
						      	</ol>
						      </div>
						    </div>
						  </div>

						</div>
			        </div>
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
  
	  $("#give3").on("click",function(){
			var win = window.open(" https://www.ihappynanum.com/Nanum/B/B0CV58BN1L","PopupWin", "width=2100px;,height=1600px;");
	   });
  
  </script> 
   
   
    
  </body>
</html>