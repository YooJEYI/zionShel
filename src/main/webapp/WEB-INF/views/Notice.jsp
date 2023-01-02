<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="ko">

<head>
<title>시온쉼터</title>
</head>
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

	<script type="text/javascript">
	
	function setCookie(name, value, expiredays){
		let date =  new Date();
		date.setDate(date.getDate() + expiredays);
		document.cookie = escape(name) + "=" + escape(value) + "; expires=" + date.toUTCString();
		
	}
	
	function closePopup() {
		if(document.getElementById("check").value){
			setCookie("popupYN","N",1);
			self.close();
		}
	}
	</script>
<body>

<jsp:include page="NoticeHead.jsp"></jsp:include>
<div>
&nbsp; 
<input type="checkbox" id="check" onclick="closePopup();"> <span>하루 동안 보지않기</span>

<img alt="시온쉼터" src="/bootstrap/images/jasunday.jpg" width="400" height="500"> 

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
	<script
		src="/bootstrap/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/bootstrap/js/google-map.js"></script>
	<script src="/bootstrap/js/main.js"></script>

</body>
</html>