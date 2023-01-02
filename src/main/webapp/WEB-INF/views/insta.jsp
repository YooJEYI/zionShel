<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<ul id="gallery"></ul>

<script src="/instagram/instafeed.min.js"></script>

<script>
    var feed = new Instafeed({
      target:'gallery', 	
      template:'<li><a href="{{link}}"><img title="{{caption}}" src="{{image}}" /></a></li>',
      accessToken: 'IGQVJWVE0xVGdJUnJic1RIdUlaUlhHS2RhYmZA2aWxMYWpHRHJJM3NmUlZAvdTJBSm9DazVZAcC05bjJJeE9XMTVpLTNzWmpoaVpySktXb0ItS0xNaEE2SFpZANjdiTk9zTHdvMHlHbXEtbUhzTnA2eWhjcgZDZD'
    });
    feed.run();
</script>

</body>
</html>