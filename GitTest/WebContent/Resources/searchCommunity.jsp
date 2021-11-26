<%@page import="java.io.PrintWriter"%>
<%@page import="Model.MemberDTO"%>
<%@page import="Model.CommunityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CommunityDAO"%>
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
<title>Community</title>
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
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<style>
p.c_2 {
	font-size: 13px;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<%
		CommunityDAO dao = new CommunityDAO();
	ArrayList<CommunityDTO> b_list = dao.viewBoard();
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	request.setCharacterEncoding("euc-kr");
	String get_id = "";
	if (info != null) {
		get_id = info.getMb_id();
	}
	ArrayList<CommunityDTO> list = dao.getSearch(request.getParameter("searchText"));

	if (list.size() == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('검색결과가 없습니다')");
		script.println("history.back()");
		script.println("</script>");
	}
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
										<%if(info != null){ %>
											<a class="navbar-brand" href="index.jsp"> <img src="assets/images/logo1.png" /></a>
										<%}else{%>
											<a class="navbar-brand" href="main.jsp"> <img src="assets/images/logo1.png" /></a>
										<%} %>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->



									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1"></div>

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

										<div class="main_home wow fadeInUp" data-wow-duration="700ms"
											style="margin-bottom: 300px;">


											<div id='c_up'
												style="width: 200px; float: left; margin-left: -55px;">
												<form>
													<fieldset>
														<legend>
															<p class='c_1_1'>지역</p>
														</legend>

														<p class="c_2" style="line-height: 3rem;">
															<a class='c_2_f' href="#">서울특별시</a><br> <a
																class='c_2_f' href="#">인천광역시</a><br> <a
																class='c_2_f' href="#">대전광역시</a><br> <a
																class='c_2_f' href="#">대구광역시</a><br> <a
																class='c_2_f' href="#">울산광역시</a><br> <a
																class='c_2_f' href="#">부산광역시</a><br> <a
																class='c_2_f' href="#">광주광역시</a><br> <a
																class='c_2_f' href="#">세종특별자치시</a><br> <a
																class='c_2_f' href="#">경기도</a><br> <a class='c_2_f'
																href="#">강원도</a><br> <a class='c_2_f' href="#">충청북도</a><br>
															<a class='c_2_f' href="#">충청남도</a><br> <a
																class='c_2_f' href="#">경상북도</a><br> <a
																class='c_2_f' href="#">경상남도</a><br> <a
																class='c_2_f' href="#">전라북도</a><br> <a
																class='c_2_f' href="#">전라남도</a><br> <a
																class='c_2_f' href="#">제주도</a><br> <a class='c_2_f'
																href="#">데일리미션인증</a>
														</p>

													</fieldset>
												</form>
											</div>
											<div id="board2">
												<table id="list">
													<tr>
														<td>번호</td>
														<td>제목</td>
														<td>작성자</td>
														<td>작성일자</td>
														<td>조회수</td>

														<td>삭제</td>
													</tr>

													<%
														for (int i = 0; i < list.size(); i++) {
													%>
													<tr>
														<td><%=i + 1%></td>
														<td><a
															href="ViewCommunity.jsp?article_seq=<%=list.get(i).getArticle_seq()%>"><%=list.get(i).getArticle_title()%>
														</a></td>
														<td><%=list.get(i).getMb_id()%></td>
														<td><%=list.get(i).getReg_date()%></td>
														<td>조회수는 나중에 만들기</td>
														<td><a
															href="../CommunityDeleteOneServiceCon?article_seq=<%=list.get(i).getArticle_seq()%>">삭제</a></td>
													</tr>
													<%
														}
													%>
												</table>
												<div>
													<div class="row">
														<form method="post" name="search"
															action="searchCommunity.jsp" style="margin-left: -50px;">
															<table class="pull-right"
																style="width: 800px !important; margin-left: 100px;">
																<tr>
																	<td><input type="text" class="form-control"
																		placeholder="검색어 입력" name="searchText" maxlength="100"
																		tabindex="0" style="width: 40%; margin-left: 250px;"></td>
																	<td><button type="submit" class="btn btn-success"
																			style="margin-top: 0px;">검색</button></td>
																</tr>

															</table>
														</form>
													</div>
												</div>
												<%
													if (info != null) {
												%>
												<a href="index.jsp"><button id="writer">홈으로가기</button></a>
												<%
													} else {
												%>
												<a href="main.jsp"><button id="writer">홈으로가기</button></a>
												<%
													}
												%>
												<a href="Community.jsp"><button id="writer">뒤로가기</button></a>
												<a href="CommunityWrite.jsp"><button id="writer">작성하러가기</button></a>
											</div>

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

		<!--Footer section-->
		<section class="footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="main_footer">
							<div class="row">
								<div class="col-sm-6 col-xs-12">
									<div class="flowus">
										<a href="Community.jsp"><i class="fa fa-facebook"></i></a> <a
											href=""><i class="fa fa-twitter"></i></a> <a href=""><i
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
