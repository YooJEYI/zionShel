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
  
  
  <style>
	#gallery {
		width: 90%;
		margin: 3em auto;
		display: flex;
		flex-wrap: wrap;
	}

	#gallery li{
		width: 25%;
		list-style:none;
	}

	#gallery li img{
		width: 100%;
	}
	</style>
  
  <body>

    <jsp:include page="head.jsp"></jsp:include>
    
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('/bootstrap/images/dog.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html"> <i class="ion-ios-arrow-forward"></i></a></span> <span> <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">시온 이야기</h1>
          </div>
        </div>
      </div>
    </section>
    
    <ul id="gallery"></ul>

	<script src="/instagram/instafeed.min.js"></script>
	
	<script>
	    var feed = new Instafeed({
	      target:'gallery', 	
	      template:'<li><a href="{{link}}"><img title="{{caption}}" src="{{image}}" /></a></li>',
	      accessToken: 'IGQVJYdzVCM0t6XzdUajFaR2NjdFZAxYjhrd1BNZAThjUVdYajFqMVllRk94Yy1xdE44dDVmRmlxd2JOTEgweHUwRmNlMmU0TkZAiUlpBai1ONFpiazJQcGg2dmVoZAFZA0ZAlV1SEpqdmNybVRsaU4zQ190UwZDZD'
	    });
	    feed.run();
	</script>

   <jsp:include page="footer.jsp"></jsp:include>

  <!-- loader -->
  	<div id="ftco-loader" class="show fullscreen">
	  	<svg class="circular" width="48px" height="48px">
	  		<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
	  		<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/>
		</svg>
	</div>
  
  
  
  
  
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