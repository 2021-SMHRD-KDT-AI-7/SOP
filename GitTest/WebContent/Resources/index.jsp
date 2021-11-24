<%@page import="Model.DailyMissionDAO"%>
<%@page import="Controller.DailyMission"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Bino html5 free Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">


<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />
<!--  실시간 기사 외부 페이지 css link(2021-11-22 박준영) -->
<link rel="stylesheet" type="text/css" href="assets/css/news.css">
<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">

	<%
		request.setCharacterEncoding("euc-kr");
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg">
				<div class="container">
					<div class="row">
						<div class="nave_menu">
							<nav class="navbar navbar-default">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed"
											data-toggle="collapse"
											data-target="#bs-example-navbar-collapse-1"
											aria-expanded="false">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
										<a class="navbar-brand" href="#home"> <img
											 src="sopsop.JPG" />
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->



									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="#home">HOME</a></li>
											<%
												if (info == null) {
											%>
											<li><a href="join.jsp">회원가입</a></li>
											<%
												}
											%>
											<%
												if (info == null) {
											%>
											<li><a href="#contact">로그인</a></li>
											<%
												} else {
											%>
											<li><a href="../LogoutCon">로그아웃</a></li>
											<%
												}
											%>
											<li><a href="#portfolio">PORTFOLIO</a></li>
											<li><a href="#history">ABOUT US</a></li>
											<li><a href="#portfolio">차트</a></li>
											<li><a href="#pricing">캠페인</a></li>
											<li><a href="#team">블로그</a></li>
											<li><a href="#blog">커뮤니티</a></li>
										</ul>

									</div>

								</div>
							</nav>
						</div>
					</div>

				</div>

			</div>
		</header>
		<!--End of header -->

		<!--home Section -->
		<section id="home" class="home">
			<div class="overlay">
				<div class="home_skew_border">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h3>Save Ozon Party</h3>
											<h1>SOP</h1>
											<div class="separator"></div>
											<p>Save Ozon Party</p>
											<div class="home_btn">
												<a href="" class="btn btn-lg m_t_10">GET STARTED NOW</a> <a
													href="" class="btn btn-default">LEARN MORE</a>
											</div>

										</div>
									</div>


								</div>
							</div>
						</div>
					</div>
					<div class="scrooldown">
						<a href="#feature"><i class="fa fa-arrow-down"></i></a>
					</div>
				</div>
			</div>
		</section>
		<!--End of home section -->

		<section id="contact" class="contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="contact_contant sections">
							<div class="head_title text-center">
								<h2>SOP</h2>
								<div class="subtitle">Safe Ozon Party</div>
								<div class="separator"></div>
							</div>
							<!-- End off Head_title -->

							<%
								if (info == null) {
							%>
							<div class="col-sm-6">
								<div
									class="single_contant_left padding-top-90 padding-bottom-90">
									<form action="../LoginCon" id="formid" method="post">
										<div
											class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">

											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<input type="text" class="form-control" name="id"
															placeholder="아이디를 입력하세요" required>

													</div>
												</div>
												<div class="col-sm-12">
													<div class="form-group">
														<input type="password" class="form-control" name="pw"
															placeholder="비밀번호를 입력하세요" required="">
													</div>
												</div>
												<div class="col-sm-12">
													<div class="form-group">
														<ul>
															<fieldset>
																<a target="_blank" href="searchpw.jsp" class="find_text">비밀번호
																	찾기 |</a> <a target="_blank" href="searchid.jsp"
																	class="find_text">아이디 찾기 |</a> <a target="_blank"
																	href="join.jsp" class="find_text">회원가입</a>

															</fieldset>

														</ul>

													</div>
												</div>

											</div>

											<div class="">
												<input type="submit" value="로그인" class="btn btn-lg">
											</div>
										</div>
									</form>
								</div>
							</div>
							<%
								} else {
							%>
							<div class="col-sm-6">
								<div
									class="single_contant_left padding-top-90 padding-bottom-90">
									<form action="../LogoutCon" id="formid" method="post">
										<div
											class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">

											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<ul>
															<fieldset>
																<p><%=info.getMb_nickname()%>
																	님
																</p>
															</fieldset>

														</ul>

													</div>
												</div>

											</div>

											<div class="">
												<input type="submit" value="로그아웃" class="btn btn-lg">
											</div>
										</div>
									</form>
								</div>
							</div>
							<%
								}
							%>


						</div>
					</div>
				</div>
			</div>
	</div>
	</section>



	<!--feature section -->
	<section id="feature" class="feature sections">
		<div class="container">
			<div class="row">
				<div class="main_feature text-center">

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa-clone"></i>
							</div>

							<h4>SLEEK DESIGN</h4>
							<div class="separator3"></div>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting let. Lorem Ipsum has been the industry.</p>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa-heart-o"></i>
							</div>

							<h4>CLEAN CODE</h4>
							<div class="separator3"></div>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting let. Lorem Ipsum has been the industry.</p>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa-lightbulb-o"></i>
							</div>
							<h4>CREATIVE IDEAS</h4>
							<div class="separator3"></div>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting let. Lorem Ipsum has been the industry.</p>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="single_feature">
							<div class="single_feature_icon">
								<i class="fa fa-comments-o"></i>
							</div>

							<h4>FREE SUPPORT</h4>
							<div class="separator3"></div>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting let. Lorem Ipsum has been the industry.</p>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!--End of container -->
	</section>
	<!--End of feature Section -->
	<hr />


	<!-- History section -->
	<section id="history" class="history sections">
		<div class="container">
			<div class="row">
				<div class="main_history">
					<div class="col-sm-6">
						<div class="single_history_img">
							<img src="assets/images/stab1.png" alt="" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="single_history_content">
							<div class="head_title">
								<h2>OUR HISTORY</h2>
							</div>
							<p>It is a long established fact that a reader will be
								distracted by the readable content of a page when looking at its
								layout. The point of using Lorem Ipsum is that it has a
								more-or-less normal distribution of letters, as opposed to using
								'Content here, content here', making it look like readable
								English. Many desktop publishing packages and web page editors
								now use Lorem Ipsum as their default model text, and a search
								for 'lorem ipsum'</p>

							<a href="" class="btn btn-lg">BROWSE OUR WORK</a>
						</div>
					</div>
				</div>
			</div>
			<!--End of row -->
		</div>
		<!--End of container -->
	</section>
	<!--End of history -->


	<!-- 데일리 미션 (진주) 시작 -->
	
	<section id="service" class="service">
		<div class="container-fluid">
			<div class="row">
				<div class="main_service">
					<div class="no-padding">

						<div class="single_service single_service_text text-right">
							<div class="head_title" style="margin-right:500px;">
								<h2>DAILY MISSION</h2>
							</div>

							<div class="row" style="margin-right:500px;">
								<div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
									<div class="row">

										<div
											class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
											<article class="single_service_right_text">
											<% DailyMissionDAO dm_dao = new DailyMissionDAO(); 
											   int day = dm_dao.getDayOfweek() * 2;
											%>
												<h4><%= dm_dao.dm_title(day) %></h4>
												<p>
													<%= dm_dao.dm_value(day) %>
												</p>
											</article>
										</div>
										<div class="col-sm-1 col-xs-1">
											<figure class="single_service_icon">
												<a href="Community.jsp"><i class="fa fa-heart"></i></a>
											</figure>
											<!-- End of figure -->
										</div>
									</div>
								</div>
								<!-- End of col-sm-12 -->

								<div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
									<div class="row">

										<div
											class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
											<article class="single_service_right_text">
												<h4><%= dm_dao.dm_title(day+1) %></h4>
												<p>
													<%= dm_dao.dm_value(day+1) %>
												</p>
											</article>
										</div>
										<div class="col-sm-1 col-xs-1">
											<figure class="single_service_icon">
												<a href="Community.jsp"><i class="fa fa-heart"></i></a>
											</figure>
											<!-- End of figure -->
										</div>
									</div>
								</div>
								<!-- End of col-sm-12 -->

								<div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
									<div class="row">

										<div
											class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1 margin-bottom-20">
											<!-- <article class="single_service_right_text">
												<h4>PHOTOGRAPHY</h4>
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ip sum has been the industry's
													standard dummy text ever.</p>
											</article> -->
										</div>
										<div class="col-sm-1 col-xs-1">
											<!-- <figure class="single_service_icon">
												<i class="fa fa-heart"></i>
											</figure> -->
											<!-- End of figure -->
										</div>
									</div>
								</div>
								<!-- End of col-sm-12 -->

							</div>
						</div>
					</div>
					<!-- End of col-sm-6 -->

					<!-- <div class="col-md-6 col-sm-12 no-padding">
						<figure class="single_service single_service_img">
							<div class="overlay-img"></div>
							<img src="assets/images/servicerightimg.jpg" alt="" /> 
						</figure>
						End of figure
					</div> -->
					<!-- End of col-sm-6 -->

				</div>
			</div>
			<!-- End of row -->
		</div>
		<!-- End of Container-fluid -->
	</section>
	<!-- 데일리 미션 끝! (진주) -->




	<!-- 차트 시각화 (진주)  -->

	<section id="portfolio" class="portfolio sections">
		<div class="container-fluid">
			<div class="row">
				<div class="main_portfolio">
					<div class="col-sm-12">
						<div class="head_title text-center">
							<h2>RECENT WORKS</h2>
							<div class="subtitle">It has survived not only five
								centuries, but also the leap scrambled it to make a type.</div>
							<div class="separator"></div>
						</div>
					</div>
					<div class="work_menu text-center">
						<div id="filters" class="toolbar mb2 mt2">
							<!-- <button class="btn-md fil-cat filter active" data-filter="all">ALL</button>/ -->
							<button class="btn-md fil-cat filter active" id="temp"
								data-rel="temp" data-filter=".temp">온도</button>
							/
							<button class="btn-md fil-cat filter" data-rel="tropical"
								data-filter=".tropical">열대야</button>
							/
							<button class="btn-md fil-cat filter" data-rel="season"
								data-filter=".season">계절일수</button>
							/
							<button class="btn-md fil-cat filter" data-rel="gas"
								data-filter=".gas">온실가스</button>
							/
							<button class="btn-md fil-cat filter" data-rel="ozone"
								data-filter=".ozone">오존층</button>
							/
							<button class="btn-md fil-cat filter" data-rel="sea"
								data-filter=".sea">해수면 시뮬레이터</button>
						</div>

					</div>

					<div style="clear: both;"></div>
					<div id="portfoliowork">

						<!-- 온도 파트  -->
						<div
							class="single_portfolio tile scale-anm temp grid-item-width2 video"
							style="margin-left: 500px; display: inline-block;">
							<iframe src="assets/chart_module/Temperature.html"
								style="display: inline-block; width: 900px; height: 500px;"></iframe>
						</div>
						<!--  온도 끝    -->

						<!-- 열대야 시작 -->
						<div class="single_portfolio tile scale-anm tropical photo"
							style="margin-left: 500px; display: inline-block;">
							<iframe src="assets/chart_module/Tropical.html"
								style="display: inline-block; width: 900px; height: 500px;"></iframe>
						</div>
						<!-- 열대야 끝 -->

						<!-- 계절일수(season) 시작 -->
						<div class="single_portfolio tile scale-anm season video"
							style="margin-left: 500px; display: inline-block;">
							<iframe src="assets/chart_module/SeasonSeoul.html"
								style="display: inline-block; width: 900px; height: 500px;"></iframe>
						</div>
						<!-- 계절일수 끝 -->

						<!-- 온실가스 시작 -->
						<div class="single_portfolio tile scale-anm gas photo"
							style="margin-left: 500px; display: inline-block;">
							<iframe src="assets/chart_module/greenhouseGAS.html"
								style="display: inline-block; width: 900px; height: 500px;"></iframe>
						</div>
						<!-- 온실가스 끝 -->

						<!-- 오존층 나사 영상 시작 -->
						<div class="single_portfolio tile scale-anm ozone"
							style="margin-left: 500px; display: inline-block;">
							<video src="assets/video/ozone_Nasa.mp4" controls
								style="display: inline-block; width: 900px; height: 500px;"></video>
						</div>
						<!-- 오존층 나사 끝 -->

						<!-- 해수면 상승 시뮬레이터 시작 -->
						<div class="single_portfolio tile scale-anm sea"
							style="margin-left: 420px; display: inline-block;">
							<iframe src="assets/chart_module/Sea.html"
								style="display: inline-block; width: 1100px; height: 800px;"></iframe>
						</div>
						<!-- 해수면 상승 시뮬레이터 끝 -->



					</div>

					<div style="clear: both;"></div>
				</div>
			</div>
		</div>
		<!-- End off container -->
	</section>
	<!-- End off Work Section -->
	<!-- 차트 파트 끝!!  -->



	<!-- Study Section -->
	<section id="study" class="study text-center wow fadeIn"
		data-wow-duration="2s" data-wow-dealy="1.5s">
		<div class="container">
			<div class="row">
				<div class="main_study_area sections">
					<div class="head_title text-center">
						<h2>실시간 환경 기사</h2>
						<div class="subtitle">환경과 관련된 뉴스 기사를 만나보세요!</div>
						<div class="separator"></div>
					</div>
					<div class="single_study_content">
						<div class="col-sm-6">
							<div class="single_study_slid_area">

								<div class="single_study_text">
									<div class="study_slider">

										<div class="item">

											<h4 class="external_news_title">
												[단독] ‘사용후핵연료 처리기술 연구사업’ 종결 아닌 재개로 돌아서나 <img
													class="external_news_img"
													src="//flexible.img.hani.co.kr/flexible/normal/212/127/imgdb/child/2021/1118/53_16372061609671_20211118501522.jpg"
													alt="패딩 입어야겠네…21일~22일 전국 비·눈 온 뒤 영하권 ‘강추위’"
													title="패딩 입어야겠네…21일~22일 전국 비·눈 온 뒤 영하권 ‘강추위’">
											</h4>
											<div class="separator3"></div>
											<p class="external_news_content">정부가 8000억원을 투입하고 지난해
												중단시킨 사용후핵연료 파이로프로세싱과 소듐냉각고속로(SFR) 국책 연구개발사업의 재개...</p>

											<a
												href="https://www.hani.co.kr/arti/society/environment/1019805.html"
												class="btn btn-lg">기사 더보기</a>

										</div>

										<div class="item">
											<div class="s_study_icon">
												<i class="fa fa-lightbulb-o"></i>
											</div>
											<h4>aCCUMULATE CREATIVE IDEAS</h4>
											<div class="separator3"></div>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting let. Lorem Ipsum has been the industry. Lorem
												Ipsum is simply dummy text of the printing and typesetting
												let. Lorem Ipsum has been the industry Printing and
												typelorem Ipsum has been the setting let.</p>

											<a href="" class="btn btn-lg">read more</a>
										</div>
										<div class="item">
											<div class="s_study_icon">
												<i class="fa fa-lightbulb-o"></i>
											</div>
											<h4>aCCUMULATE CREATIVE IDEAS</h4>
											<div class="separator3"></div>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting let. Lorem Ipsum has been the industry. Lorem
												Ipsum is simply dummy text of the printing and typesetting
												let. Lorem Ipsum has been the industry Printing and
												typelorem Ipsum has been the setting let.</p>

											<a href="" class="btn btn-lg">read more</a>
										</div>
									</div>
									<!--  전체 기사 보기로 이동 -->
									<a href="news.html" class="btn btn-lg" id="all_news_page">전체
										기사</a>
								</div>
							</div>
						</div>


						<div class="single_study_right_img">
							<div class="col-sm-6">
								<div class="single_study_img">
									<img src="assets/images/study.jpg" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End off row -->
		</div>
		<!-- End off Container -->
	</section>
	<!-- End off Study Section -->


	<!-- Counter Section -->
	<section id="counter" class="counter">
		<div class="video_overlay">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="main_counter_area text-center">

							<div class="row">
								<div class="single_counter border_right">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">
											<i class="icon icon-thumbs-up"></i>
											<h2 class="statistic-counter">3891</h2>
											<h4 class="">User Favourites</h4>
										</div>
									</div>
								</div>

								<div class="single_counter">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">
											<i class="icon icon-business-3"></i>
											<h2 class="statistic-counter">281</h2>
											<h4 class="">Posts Last 24 Hours</h4>
										</div>
									</div>
								</div>

								<div class="single_counter">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">
											<i class="icon icon-people-32"></i>
											<h2 class="statistic-counter">618</h2>
											<h4 class="">Total Posts</h4>
										</div>

									</div>
								</div>

								<div class="single_counter">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">
											<i class="icon icon-cup"></i>
											<h2 class="statistic-counter">178</h2>
											<h4 class="">Amazing Features</h4>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End off container -->
	</section>
	<!-- End of counter section -->

	<!-- Pricing Section -->
	<section id="pricing" class="pricing">
		<div class="container">
			<div class="row">
				<div class="main_pricing_area sections">
					<div class="head_title text-center">
						<h2>환경보호 캠페인!</h2>
						<div class="subtitle">
							<a href="campaign.jsp" class="btn btn-lg"> 캠페인 참여하기 </a>
						</div>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->

					<div class="col-md-4 col-sm-6">
						<div class="single_pricing">
							<div class="pricing_head">
								<h3>STARTER</h3>
								<div class="pricing_price">
									<div class="p_r text-center">$19</div>
									<div class="m_t text-center">per month</div>
								</div>
							</div>

							<div class="pricing_body">
								<ul>
									<li>Competition Analysis Methods</li>
									<li>All Ranked URLs</li>
									<li>International Support System</li>
									<li>Social Media Tracking</li>
								</ul>
								<a href="" class="btn btn-md">CHOOSE PLAN</a>
							</div>
						</div>
					</div>
					<!-- End off col-md-4 -->
					<div class="col-md-4 col-sm-6">
						<div class="single_pricing pricing_business">
							<div class="pricing_head ">
								<h3>PREMIUM</h3>
								<div class="pricing_price">
									<div class="p_r text-center">$39</div>
									<div class="m_t text-center">per month</div>
								</div>
							</div>

							<div class="pricing_body">
								<ul>
									<li>Competition Analysis Methods</li>
									<li>All Ranked URLs</li>
									<li>International Support System</li>
									<li>Social Media Tracking</li>
								</ul>
								<a href="" class="btn btn-md">CHOOSE PLAN</a>
							</div>
						</div>
					</div>
					<!-- End off col-md-4 -->
					<div class="col-md-4 col-sm-6">
						<div class="single_pricing">
							<div class="pricing_head">
								<h3>BUSINESS</h3>
								<div class="pricing_price">
									<div class="p_r text-center">$99</div>
									<div class="m_t text-center">per month</div>
								</div>
							</div>

							<div class="pricing_body">
								<ul>
									<li>Competition Analysis Methods</li>
									<li>All Ranked URLs</li>
									<li>International Support System</li>
									<li>Social Media Tracking</li>
								</ul>
								<a href="" class="btn btn-md">CHOOSE PLAN</a>
							</div>
						</div>
					</div>
					<!-- End off col-md-4 -->
				</div>
			</div>
			<!-- End off row -->
		</div>
		<!-- End off container -->
	</section>
	<!-- End off Pricing Section -->

	<!-- Team Section -->
	<section id="team" class="team">
		<div class="main_team_area">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="head_title textwhite text-center margin-top-80">
							<h2>OUR TEAM</h2>
							<div class="subtitle">Meet the craziest team. Share your
								thoughts with them.</div>
							<div class="separator"></div>
						</div>
						<!-- End off Head_title -->

						<div class="main_team">
							<ul>
								<li>
									<div class="single_team_img">
										<img src="assets/images/team1.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>Semf Ucuk</h4>
										<p>Founder</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/team2.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>Kazi Erfan</h4>
										<p>Engineering</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/team3.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>Jeng Koli</h4>
										<p>Designer</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/team4.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>Pet Romak</h4>
										<p>Marketing</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/test2.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>Chet Pok</h4>
										<p>Web Developer</p>
									</div>
								</li>
							</ul>
						</div>

					</div>
					<!-- End of main team contant -->
				</div>
			</div>
			<!-- End of container -->
		</div>
	</section>
	<!-- End off Team Section -->

	<!-- Client Logo Section -->
	<section id="clogo" class="clogo">
		<div class="container">
			<div class="row">
				<div class="main_clogo sections text-center">
					<div class="head_title text-center">
						<h2>Great Integrations with Others</h2>
						<div class="subtitle">Suspendisse sed eros mollis, tincidunt
							felis eget, interdum erat. Nullam sit amet odio eu est aliquet
							euismod a a urna. Proin eu urna suscipit, dictum quam nec.</div>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->

					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo1.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo2.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo3.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo4.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo5.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo6.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo9.png" alt="" /></a>
					</div>
					<div class="col-sm-3 col-xs-6">
						<a href=""><img src="assets/images/clogo8.png" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="divider"></div>
	</section>
	<!-- End off clogo Section -->


	<!-- Blog Section -->
	<section id="blog" class="blog">
		<div class="container-fluid">
			<div class="row">
				<div class="main_blog sections">
					<div class="head_title text-center">
						<h2>OUR BLOG</h2>
						<div class="subtitle">Suspendisse sed eros mollis, tincidunt
							felis eget, interdum eratullam sit amet odio.</div>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->

					<div class="main_blog_content">
						<div class="col-sm-6">
							<div class="single_blog_area textwhite">
								<div class="row">
									<div class="col-sm-6 no-padding">
										<div class="single_blog_img">
											<img src="assets/images/blog1.jpg" alt="" />
										</div>
									</div>
									<div class="col-sm-6 no-padding">
										<div class="single_blog_text s_b_left">
											<p>art/t-shirt</p>
											<h3>T-SHIRT DESIGN</h3>
											<div class="separator2"></div>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the indu Stry's
												standard dummy text ever since the 1500s, an unknown printer
												took a galley of type a scrambled it to make a type specimen
												book.</p>

											<a href="" class="read_more">Read More >></a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="single_blog_area textwhite">
								<div class="row">
									<div class="col-sm-6 no-padding">
										<div class="single_blog_img">
											<img src="assets/images/blog2.jpg" alt="" />
										</div>
									</div>
									<div class="col-sm-6 no-padding">
										<div class="single_blog_text s_b_left">
											<p>art/t-shirt</p>
											<h3>T-SHIRT DESIGN</h3>
											<div class="separator2"></div>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the indu Stry's
												standard dummy text ever since the 1500s, an unknown printer
												took a galley of type a scrambled it to make a type specimen
												book.</p>

											<a href="" class="read_more">Read More >></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="single_blog_area textwhite">
								<div class="row">

									<div class="col-sm-6 col-sm-push-6 no-padding">
										<div class="single_blog_img">
											<img src="assets/images/blog3.jpg" alt="" />
										</div>
									</div>

									<div class="col-sm-6 col-sm-pull-6 no-padding">
										<div class="single_blog_text s_b_right">
											<p>art/t-shirt</p>
											<h3>T-SHIRT DESIGN</h3>
											<div class="separator2"></div>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the indu Stry's
												standard dummy text ever since the 1500s, an unknown printer
												took a galley of type a scrambled it to make a type specimen
												book.</p>

											<a href="" class="read_more">Read More >></a>
										</div>
									</div>

								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="single_blog_area textwhite">
								<div class="row">
									<div class="col-sm-6 col-sm-push-6 no-padding">
										<div class="single_blog_img">
											<img src="assets/images/blog4.jpg" alt="" />
										</div>
									</div>
									<div class="col-sm-6 col-sm-pull-6 no-padding">
										<div class="single_blog_text s_b_right">
											<p>art/t-shirt</p>
											<h3>T-SHIRT DESIGN</h3>
											<div class="separator2"></div>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the indu Stry's
												standard dummy text ever since the 1500s, an unknown printer
												took a galley of type a scrambled it to make a type specimen
												book.</p>

											<a href="" class="read_more">Read More >></a>
										</div>
									</div>

								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		<!-- End off container -->
	</section>
	<!-- End off Blog Section -->



	<section id="trial" class="trial text-center wow fadeIn"
		data-wow-duration="2s" data-wow-dealy="1.5s">
		<div class="main_trial_area">
			<div class="video_overlay sections">
				<div class="container">
					<div class="row">
						<div class="main_trial">
							<div class="col-sm-12">
								<h2>
									Let's Get Started Now. <span>It's FREE!</span>
								</h2>
								<h4>30 day free trial. Free plan allows up to 2 projects.
									Pay if you need more. Cancel anytime. No catches.</h4>
								<a href="Community.jsp" class="btn btn-lg">Comminuty Board</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of Trial section -->


	<!--Footer section-->
	<section class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_footer">
						<div class="row">
							<div class="col-sm-6 col-xs-12">
								<div class="flowus">
									<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-instagram"></i></a> <a href=""><i
										class="fa fa-youtube"></i></a> <a href=""><i
										class="fa fa-dribbble"></i></a>
								</div>
							</div>

							<div class="col-sm-6 col-xs-12">
								<div class="copyright_text">
									<p class=" wow fadeInRight" data-wow-duration="1s">
										Made with <i class="fa fa-heart"></i> by <a
											href="http://bootstrapthemes.co">Bootstrap Themes</a>2016.
										All Rights Reserved
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End off footer Section-->











	</div>

	<!-- START SCROLL TO TOP  -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>

	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.mixitup.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/jquery.masonry.min.js"></script>

	<!--slick slide js -->
	<script src="assets/css/slick/slick.js"></script>
	<script src="assets/css/slick/slick.min.js"></script>


	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
