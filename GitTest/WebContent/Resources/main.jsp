<%@page import="Model.NewsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.NewsDAO"%>
<%@page import="Model.DailyMissionDAO"%>
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
<title></title>
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
<body data-spy="scroll" data-target=".navbar-collapse" style="overflow-x: hidden ">
<%
	NewsDAO dao = new NewsDAO();
	ArrayList<NewsDTO> news_list = dao.getNews();
	int news = dao.getCount();
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
											src="assets/images/logo1.png" />
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->



									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="#home">HOME</a></li>
											<li><a href="join.jsp">회원가입</a></li>
											<li><a href="#contact">로그인</a></li>
											<li><a href="#portfolio">차트</a></li>
											<li><a href="#service">데일리미션</a></li>
											<li><a href="#study">환경 기사</a></li>
											<li><a href="#clogo">사례</a></li>
											<li><a href="#pricing">캠페인</a></li>
											<li><a href="#trial">게시판</a></li>
											<li><a href="#counter">조회수</a></li>
											<li><a href="#team">팀</a></li>
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
											<h1>SOP</h1>
											<h1>Save Ozone Party</h1>


										</div>
									</div>


								</div>
							</div>
						</div>
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
								<div class="subtitle">Save Ozone Party</div>
								<div class="separator"></div>
							</div>
							<!-- End off Head_title -->


							<div class="col-sm-12">
								<div
									class="single_contant_left text-center padding-top-90 padding-bottom-90 ">
									<form action="../LoginCon" id="formid" method="post">
										<div
											class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">
											<div class="row">
												<div class="col-sm-11">
													<div class="form-group">
														<input type="text" class="form-control" name="id"
															placeholder="아이디를 입력하세요" required
															style="font-family: 'Malgun gothic'">
													</div>
												</div>
												<div class="col-sm-11">
													<div class="form-group">
														<input type="password" class="form-control" name="pwd"
															placeholder="비밀번호를 입력하세요" required=""
															style="font-family: 'Malgun gothic'">
													</div>
												</div>
												<div class="col-sm-11">
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

											<div class="col-sm-11">
												<input type="submit" value="로그인" class="btn btn-lg">
											</div>
										</div>
									</form>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
	</div>
	</section>

	<!-- 차트 시각화 (진주)  -->

	<section id="portfolio" class="portfolio sections">
		<div class="container-fluid">
			<div class="row">
				<div class="main_portfolio">
					<div class="col-sm-12">
						<div class="head_title text-center">
							<h2>차트</h2>
							<div class="subtitle">여러 가지의 차트를 만나보세요!</div>
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

	<!-- 데일리 미션 (진주) 시작 -->
	<section id="service" class="service">
		<div class="container-fluid">
			<div class="row">
				<div class="main_service">
					<div class="no-padding">

						<div class="single_service single_service_text text-right">
							<div class="head_title" style="margin-right: 500px;">
								<h2>데일리 미션</h2>
							</div>

							<div class="row" style="margin-right: 500px;">
								<div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
									<div class="row">

										<div
											class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
											<article class="single_service_right_text">
												<%
													DailyMissionDAO dm_dao = new DailyMissionDAO();
												int day = dm_dao.getDayOfweek() * 2;
												%>
												<h4><%=dm_dao.dm_title(day)%></h4>
												<p>
													<%=dm_dao.dm_value(day)%>
												</p>
											</article>
										</div>
										<div class="col-sm-1 col-xs-1">
											<figure class="single_service_icon">
												<a href="SelectCommunity.jsp?num=18"><i class="fa fa-heart"></i></a>
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
												<h4><%=dm_dao.dm_title(day + 1)%></h4>
												<p>
													<%=dm_dao.dm_value(day + 1)%>
												</p>
											</article>
										</div>
										<div class="col-sm-1 col-xs-1">
											<figure class="single_service_icon">
												<a href="SelectCommunity.jsp?num=18"><i class="fa fa-heart"></i></a>
											</figure>
											<!-- End of figure -->
										</div>
									</div>
										<a href="SelectCommunity.jsp?num=18" class="btn btn-lg" style="margin-top:50px; margin-right:300px;">미션 인증하러 가기</a>
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

	<!--End of feature Section -->
	<hr />






	<!-- 데일리 뉴스 외부페이지(준영) -->
	<section id="study" class="study text-center wow fadeIn"
		data-wow-duration="2s" data-wow-dealy="1.5s">
		<div class="container">
			<div class="row">
				<div class="main_study_area sections" style="height: 1050px;">
					<div class="head_title text-center">
						<h2>데일리 환경 기사</h2>
						<div class="subtitle">환경과 관련된 뉴스 기사를 만나보세요!</div>
						<div class="separator"></div>
					</div>
					<div class="single_study_content">
						<div class="col-sm-6">
							<div class="single_study_slid_area">

								<div class="single_study_text">
									<div class="study_slider">

										<% // 현재 1번째 ~ 3번째 행의 데이터를 가져옴. --> 마지막 인덱스의 1,2,3 번째를 가져온다.
									for(int i =news-3; i < news;  i++){
									%>
										<div class="item">
											<h4 class="external_news_title"> <%=news_list.get(i).getNews_title()%> 
											</h4>
											<img class="external_news_img" src="<%=news_list.get(i).getImg_url() %>" alt="" title="">
											<div class="separator3"></div>
											<p class="external_news_content"><%=news_list.get(i).getNews_content() %></p>
											
											<a target="_blank"
												href="<%=news_list.get(i).getNews_url() %>"
												class="btn btn-lg">기사 더보기</a>

										</div>
									<%} %>
									</div>
									<!--  전체 기사 보기로 이동 -->
									<a href="News.jsp" class="btn_article_daily btn_lg_article_daily" >전체 기사</a>
								</div>
							</div>
						</div>


						<div class="single_study_right_img">
							<div class="col-sm-6">
								<div class="single_study_img">
									<img width="" height="675" src="assets/images/gong.jpg" alt="" />
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


	<!-- Client Logo Section -->
	<section id="clogo" class="clogo">
		<div class="container">
			<div class="row">
				<div class="main_clogo sections_weather text-center">
					<div class="head_title text-center">
						<h2>국내 이상기후 사례</h2>
						<div class="subtitle"></div>
						<div class="external_news_content">국내의 충격적인 이상기후로 인한 여러 사례를
							확인하세요.</div>
					</div>
					<!-- End off Head_title -->


					<div class="col-sm-3 col-xs-6"></div>
					<div class="col-sm-3 col-xs-6"></div>
					<div class="col-sm-3 col-xs-6"></div>
				</div>

				<div class="left">
					<div class="div_title">
						<a target="_blank" href="https://www.bbc.com/korean/news-53577483"><img
							width="100%" height="400px"
							src="https://ichef.bbci.co.uk/news/800/cpsprodpb/13FA5/production/_113692818_origin_.jpg"
							alt="" /></a>
					</div>
					<br>
					<figure class="txt_pig">&lt;사과 재배 못하고 강원도에서 귤 재배하는 21세기말
						한국&gt;
					</figure>
					<p class="txt_line">연간 10.1일인 폭염일수가 3배 이상인 35.5일이 된다. 사과 재배지는
						사라지며, 강원도에서 감귤 재배가 가능해진다. 모기나 진드기와 같은 해충 발생이 늘어나 감염병도 급증한다. 벚꽃의
						개화시기는 지금보다 11.2일 빨라지고 소나무숲은 15% 사라진다. 이는 온실가스 배출이 현재 추세대로 이어지면
						21세기 중반 이후부터 한반도가 목격하게 될 모습이다. 환경부와 기상청은 28일 논문 1900여편을 분석해 공동으로
						'한국 기후변화 평가보고서 2020'를 내고 한반도 기후변화 동향과 전망을 정리했다.</p>
				</div>

				<div class="right">
					<div class="div_title">
						<a target="_blank"
							href="https://www.hani.co.kr/arti/society/society_general/1003844.html"><img
							width="100%" height="400px"
							src="https://flexible.img.hani.co.kr/flexible/normal/970/643/imgdb/original/2021/0714/20210714502784.jpg"
							alt="" /></a>
					</div>
					<br>
					<figure class="txt_pig">&lt;폭염-태풍-폭우 ‘트리플 이상기후’…이젠 여름철마다
						온다&gt;
					</figure>
					<p class="txt_line">수만 년 전의 빙하기가 46억 년 지구 역사상 가장 추웠던 시기에 속한다고
						한다. 인류가 지구의 지배자가 된 지금은 그때보다 훨씬 따뜻하지만, 그래도 추운 시기에 속하는 건 마찬가지다.
						2021년 6월부터 러시아 모스크바에서 섭씨 30도가 훌쩍 넘는 고온이, 캐나다 서부 브리티시컬럼비아에서 섭씨 50도에
						가까운 폭염이 이어져서 마치 지구에 불난 것처럼 수은주가 치솟는데, 이건 어떻게 된 일이냐고 반문하는 분이 있을
						것이다. 한여름에도 에어컨을 켜지 않고 지낼 수 있는 지역에 불폭탄이 터졌으니 이런 물음이 나올 만도 하다. 그러나
						기상관측 자료는 거짓말하지 않는다.</p>
				</div>

				<div class="left">
					<div class="div_title">
						<a target="_blank"
							href="https://www.bbc.com/korean/international-51470772"><img
							width="100%" height="400px"
							src="https://ichef.bbci.co.uk/news/800/cpsprodpb/7210/production/_110900292_origin_.jpg"
							alt="" /></a>
					</div>
					<br>
					<figure class="txt_pig">&lt;기후변화: 더워지는 한국, 겨울이 사라진다?&gt;
					</figure>
					<p class="txt_line">국립공원공단은 지리산국립공원 구룡계곡 일대에 사는 북방산개구리의 산란을 지난달
						23일 처음 관측했다고 밝혔다. 지난해 2월 19일보다 27일 빠른 시기다. 해당 조사가 시작된 2010년 이후 1월에
						산란이 관측된 것은 이번이 처음이다. 공원공단 연구진은 유난히 따뜻했던 겨울 날씨 때문에 산란일이 앞당겨진 것으로 보고
						있다. 1월 중 낮 기온이 23도까지 올랐던 제주에서는 제주도롱뇽의 산란시기가 한 달 앞당겨졌다. 제주 백서향도 예년에
						비해 한 달 먼저 개화했다. 매년 관광객이 몰려드는 화천 산천어축제는 개막을 두 차례 연기하기도 했다. 포근한 날씨에
						비까지 많이 내려 얼음이 제대로 얼지 않아서다.</p>
				</div>

				<div class="right">
					<div class="div_title">
						<a target="_blank"
							href="http://www.hdhy.co.kr/news/articleView.html?idxno=15429"><img
							width="100%" height="400px"
							src="http://www.hdhy.co.kr/news/photo/202109/15429_20071_322.jpg"
							alt="" /></a>
					</div>
					<br>
					<figure class="txt_pig">&lt;펄펄 끓는 지구, 한반도 어장지도가 바뀐다 - 2021
						어종 변화 보고서&gt;
					</figure>
					<p class="txt_line">지난 7월, 기후변화로 고통받는 해양생물들의 실태가 공개돼 전 세계에 큰
						충격을 줬다. 미국 환경보호단체 컬럼비아 리버키퍼(Columbia Riverkeeper)는 컬럼비아강의 연어들이
						폭염으로 급등한 수온에 피부 살점이 벗겨진 채 유영하고 있는 모습을 영상으로 공개했다. 회유성 어류인 연어는 바다에
						살지만 산란하기 위해 강을 거슬러 오른다. 여름철 알을 낳기 위해 유영하던 연어는 20도 이내의 수온을 유지해 오던
						컬럼비아강이 폭염으로 21도까지 높아지자 심각한 화상을 입게 된 것으로 파악됐다. 7월 초부터 연어 영상을 촬영해 온
						컬럼비아 리버키퍼 회원 브렛 밴던호리벌은 “앞으로 강물이 더 뜨거워진다면 더 많은 연어가 죽을 수 있다”고 경고했다.</p>
				</div>

			</div>
		</div>
		<div class="divider"></div>
	</section>
	<!-- End off clogo Section -->

	<!-- History section 
      <section id="history" class="history sections">
         <div class="container">
            <div class="row">
               <div class="main_history">
                  <div class="col-sm-6">
                     <div class="single_history_img">
                        <img src="sopsop.jpg" alt="" />
                     </div>
                  </div>

                  <div class="col-sm-6">
                     <div class="single_history_content">
                        <div class="head_title">
                           <h2>OUR HISTORY</h2>
                        </div>
                        <p>It is a long established fact that a reader will be
                           distracted by the readable content of a page when looking at
                           its layout. The point of using Lorem Ipsum is that it has a
                           more-or-less normal distribution of letters, as opposed to
                           using 'Content here, content here', making it look like
                           readable English. Many desktop publishing packages and web page
                           editors now use Lorem Ipsum as their default model text, and a
                           search for 'lorem ipsum'</p>

                        <a href="" class="btn btn-lg">BROWSE OUR WORK</a>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </section>
         <!--End of container -->


	<!--End of history -->




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
								<!-- <img src="assets/images/aa.jpg" alt="" /> -->
								<h3>쓰담 한강</h3>
								<div class="pricing_price">
									<div class="p_r text-center">
										November <br> 08 <br> ~
									</div>

								</div>
							</div>

							<div class="pricing_body">
								<ul>
									<li>무심코 지나쳤던 플라스틱 쓰레기, <br> 더 돌아다니지 않게 함께 주워볼까요? <br>
										공원, 하천, 아파트 단지 어디든 상관없어요!
									</li>

								</ul>
								<a target="_blank" href=" https://www.pmi.com/markets/korea/ko/news/details/%EC%93%B0%EB%A0%88%EA%B8%B0-%EB%AC%B4%EB%8B%A8%ED%88%AC%EA%B8%B0-%EA%B8%89%EC%A6%9D%ED%95%9C-%ED%95%9C%EA%B0%95%EC%97%90%EC%84%9C-%ED%99%98%EA%B2%BD%ED%9A%8C%EB%B3%B5-%EC%BA%A0%ED%8E%98%EC%9D%B8-%ED%95%9C%EA%B5%AD%ED%95%84%EB%A6%BD%EB%AA%A8%EB%A6%AC%EC%8A%A4-%ED%99%98%EA%B2%BD%EC%9E%AC%EB%8B%A8%EA%B3%BC-5%EC%A3%BC%EA%B0%84-%EC%93%B0%EB%8B%B4%ED%95%9C%EA%B0%95-%EC%A7%84%ED%96%89"
									class="btn btn-md"> JOIN US</a>
							</div>
						</div>
					</div>
					<!-- End off col-md-4 -->
					<div class="col-md-4 col-sm-6">
						<div class="single_pricing pricing_business">
							<div class="pricing_head ">
								<h3>봉그깅</h3>
								<div class="pricing_price">
									<div class="p_r text-center">
										October <br> 06 <br> ~
									</div>
								</div>
							</div>

							<div class="pricing_body">
								<ul>
									<li>제주도 해안에 버려져있는 쓰레기들을 줍고 <br>깨끗한 바다를 선물 해 볼까요?
									</li>

								</ul>
								<a target="_blank" href="https://www.apgroup.com/int/ko/news/2021-10-06-a.html"
									class="btn btn-md">JOIN US</a>
							</div>
						</div>
					</div>
					<!-- End off col-md-4 -->
					<div class="col-md-4 col-sm-6">
						<div class="single_pricing">
							<div class="pricing_head">
								<h3>분바스틱</h3>
								<div class="pricing_price">
									<div class="p_r text-center"><br>continue ~</div>

								</div>
							</div>

							<div class="pricing_body">
								<ul>
									<li>페트병의 라벨과 뚜껑링을 <br>쉽게 뜯어 분리배출을 <br>시작해 볼까요?
									</li>

								</ul>
								<a target="_blank" href="https://www.terracycle.com/ko-KR/brigades/boon-ba-stick"
									class="btn btn-md">JOIN US</a>
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






	<!-- Blog Section-->
	<!-- <section id="blog" class="blog">
         <div class="container-fluid">
            <div class="row">
               <div class="main_blog sections">
                  <div class="head_title text-center">
                     <h2>OUR BLOG</h2>
                     <div class="subtitle">Suspendisse sed eros mollis,
                        tincidunt felis eget, interdum eratullam sit amet odio.</div>
                     <div class="separator"></div>
                  </div>
                

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
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

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
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

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
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

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
   </div>
   </section> -->
	<!-- End off Blog Section -->

	<section id="trial" class="trial text-center wow fadeIn"
		data-wow-duration="2s" data-wow-dealy="1.5s">
		<div class="main_trial_area">
			<div class="video_overlay sections" style="padding-top:150px; padding-bottom:150px;">
				<div class="container">
					<div class="row">
						<div class="main_trial">
							<div class="col-sm-12">
								<h2>게시판</h2>
								<h4>사람들의 소리를 들어보세요</h4>
								<a href="Community.jsp" class="btn btn-lg" style="font-size:1.5rem;">소리 듣기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


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

											<h2 class="statistic-counter">3891</h2>
											<h4 class="">방문자수</h4>
										</div>
									</div>
								</div>

								<div class="single_counter">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">

											<h2 class="statistic-counter">281</h2>
											<h4 class="">미션 인증 수</h4>
										</div>
									</div>
								</div>

								<div class="single_counter">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">

											<h2 class="statistic-counter">618</h2>
											<h4 class="">전체 게시물 수</h4>
										</div>

									</div>
								</div>

								<div class="single_counter">
									<div class="col-sm-3 col-xs-12">
										<div class="single_counter_item">

											<h2 class="statistic-counter">12</h2>
											<h4 class="">캠페인 수</h4>

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

	<!-- Team Section -->
	<section id="team" class="team">
		<div class="main_team_area">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="head_title textwhite text-center margin-top-80">
							<h2>OUR TEAM</h2>
							<div class="subtitle" id="team_name">깐부</div>
							<div class="separator"></div>
						</div>
						<!-- End off Head_title -->

						<div class="main_team">
							<ul>
								<li>
									<div class="single_team_img">
										<img src="assets/images/kkj.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>김국중</h4>
										<br>
										<p id="team_list">
											<br>프로젝트 총괄,<br> 캠페인, <br>로그인/로그아웃, <br>글검색, <br>커뮤니티 페이지 이동
										</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/kjn.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>김지나</h4>
										<br>
										<p id="team_list">
											<br>커뮤니티 게시판, <br> 게시판 글 <br>작성/수정/삭제, <br> 게시판 댓글 등록, <br>조회수
										</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/pjy.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>박준영</h4>
										<br>
										<p id="team_list">
											<br>데일리 기사 <br>자동 크롤링, <br> 사례 크롤링, <br>페이징 기능, <br>파이썬 오라클 연동
										</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/pjj.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>박진주</h4>
										<br>
										<p id="team_list">
											<br>데이터 차트 파트, <br> 데일리 미션, <br>게시판 댓글 <br>등록/삭제, <br> 포인트 기능
										</p>
									</div>
								</li>
								<li>
									<div class="single_team_img">
										<img src="assets/images/lhw.jpg" alt="" />
									</div>
									<div class="single_team_text">
										<h4>이혜원</h4>

										<p id="team_list">
											<br>전체 디자인 CSS, <br> 회원가입, <br>로그인/로그아웃, <br> 아이디 찾기/<br>비밀번호 찾기 
										</p>
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


	<!--Footer section-->
	<section class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_footer">
						<div class="row">
							<div class="col-sm-6 col-xs-12">
								<div class="flowus">
								<!-- 
									<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-instagram"></i></a> <a href=""><i
										class="fa fa-youtube"></i></a> <a href=""><i
										class="fa fa-dribbble"></i></a>
										 -->
								</div>
							</div>

							<div class="col-sm-6 col-xs-12">
								<div class="copyright_text">
									<p class=" wow fadeInRight" data-wow-duration="1s">
										Made with <i class="fa fa-heart"></i> by <a
											href="http://bootstrapthemes.co">깐부 김국중 김지나 박준영 박진주 이혜원</a>
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
