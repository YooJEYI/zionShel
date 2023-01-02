<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<script src="/bootstrap/js/jquery-3.6.0.js"></script>
<script src="/bootstrap/js/stars.js"></script>
<style type="text/css">
	@media screen and (max-width:990px) {
	.col-md-6 col-lg-3 ftco-animate img {width: 100%;}
	}
</style>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	
	<section class="ftco-section bg-light">
		<div class="container">
		<% 
						Boolean admin = (Boolean) session.getAttribute("admin");	
					
						if (admin == null) {
					%>
						
					<%
						}else{
					%>
				
				            <button type="button" onclick="javascript:location.href='/star/write';" class="btn btn-secondary" style="float: right;">작성</button>
					<%
						}
					%>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/hj.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>전혜진</h3>
							<span class="position mb-2">미스코리아,배우</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/hyejin_jun/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/nam.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>남형도</h3>
							<span class="position mb-2">머니투데이 기자</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/love_ddolggom/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/miso.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>김미소</h3>
							<span class="position mb-2">아나운서</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/ms__4343/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/lee.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>이웅종</h3>
							<span class="position mb-2">원조 견통령, 대학교수</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/ungjongi/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/wonhyo.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>김원효</h3>
							<span class="position mb-2">개그맨</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/wonhyo0925/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/jinwha.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>심진화</h3>
							<span class="position mb-2">개그우먼</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/shimjinhwa/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/pilsoon.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>장필순</h3>
							<span class="position mb-2">가수</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/jejusoony/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/hyobum.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>신효범</h3>
							<span class="position mb-2">가수</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/hyobumshin/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/lina.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>채리나</h3>
							<span class="position mb-2">가수</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/rina_sister/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch" id="goeunsungImage">
							<div class="img align-self-stretch goeun1" style="background-image: url(/bootstrap/images/goean.jpg);"></div>
							<div class="img align-self-stretch goeun2" style="background-image: url(/bootstrap/images/goeun.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>고은성</h3>
							<span class="position mb-2">뮤지컬배우</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/musical.ko/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/yeonbok.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>이연복</h3>
							<span class="position mb-2">쉐프</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/fuxtom/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/hanboream.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>한보름</h3>
							<span class="position mb-2">배우</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/han_bling_/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>


				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/songe.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>한송이</h3>
							<span class="position mb-2">대전KGC인삼공사 배구선수</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/ssongr12/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/doyoon.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>윤도운</h3>
							<span class="position mb-2">데이식스 드러머</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="https://www.instagram.com/d.ddablue/"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(/bootstrap/images/doong.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>동글개봉사단</h3>
							<span class="position mb-2">이웅종 단장 봉사팀</span>
							<div class="faded">
								<p></p>
								<ul class="ftco-social text-center">
								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

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
	<script src="/bootstrap/js/stars.js"></script>


	<script type="text/javascript">
		$(document).on('ready', function(){
			init();
		})
	</script>
</body>
</html>