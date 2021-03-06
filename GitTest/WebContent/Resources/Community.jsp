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
.paging{
	text-align: center;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<% 
	CommunityDAO dao = new CommunityDAO();
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	String get_id="";
	//String get_nick = info.getMb_nickname();
	ArrayList<CommunityDTO> b_list;
	if(info!=null){
		get_id=info.getMb_id();
	}
		b_list=dao.viewBoard(get_id);
	//String article_seq=request.getParameter("article_cnt");
	// ?????? count
		
		// ???????? ???? ???? ?? ?????? ????
		int pageNumber = 1; //?????????? 1??????
		int page_count = dao.getCount(); // ???? ?? ?????? ???? ????
		if (request.getParameter("pageNumber") != null)
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
															<p class='c_1_1'>????</p>
														</legend>

														<p class="c_2" style="line-height: 3rem;">
															
															<a class='c_2_f' href="Community.jsp">??????????</a><br>
															<a class='c_2_f' href="SelectCommunity.jsp?num=1">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=2">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=3">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=4">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=5">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=6">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=7">??????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=8">??????????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=9">??????</a><br> <a class='c_2_f'
																href="SelectCommunity.jsp?num=10">??????</a><br> <a class='c_2_f' href="SelectCommunity.jsp?num=11">????????</a><br>
															  <a class='c_2_f' href="SelectCommunity.jsp?num=12">????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=13">????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=14">????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=15">????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=16">????????</a><br> <a
																class='c_2_f' href="SelectCommunity.jsp?num=17">??????</a><br> <a class='c_2_f'
																href="SelectCommunity.jsp?num=18">??????????????</a>
														</p>

													</fieldset>
												</form>
											</div>
											<div id="board2">
												<table id="list">
													<tr>
														<td>????</td>
														<td>????</td>
														<td>??????</td>
														<td>????????</td>
														<td>??????</td>
														<td>????</td>
													</tr>
													<!-- ?????? 20???? ?????? -->
													<%
													int len = pageNumber;
														
													for(int i = 1; i < pageNumber; i++){ // ?????? ???? ?????? ??????
														len += 19;
													}
													if((page_count / (pageNumber*20)) != 0){ // ???????? ?? ???? ???? / ???? ?????? ?? != ???? ?????? ?? -->  ???? ?????? ???????? ?????? ????
													for (int i = len; i < len+20; i++) {
													%>
													<tr>
														<td><%=(page_count-i)+1 %></td>
														<td><a
															href="ViewCommunity.jsp?article_seq=<%=b_list.get(i-1).getArticle_seq()%>"><%=b_list.get(i-1).getArticle_title()%>
														</a></td>
														<td><%=b_list.get(i-1).getMb_id()%></td>
														<td><%=b_list.get(i-1).getReg_date()%></td>
														<!-- ??????  -->
														<td><%=b_list.get(i-1).getArticle_cnt()%></td>
														
													<td><a
															href="../CommunityDeleteOneServiceCon?article_seq=<%=b_list.get(i-1).getArticle_seq()%>">????</a></td>
													</tr>
													<%
														}
													}else{  // ???????? ?? ???? ???? / ???? ?????? ?? == ???? ?????? ?? --> ?????? ???? ???? ???????? ????.
														for(int i = len; i <= page_count; i++){
													%>
													<tr>
														<td><%=(page_count-i)+1 %></td>
														<td><a
															href="ViewCommunity.jsp?article_seq=<%=b_list.get(i-1).getArticle_seq()%>"><%=b_list.get(i-1).getArticle_title()%>
														</a></td>
														<td><%=b_list.get(i-1).getMb_id()%></td>
														<td><%=b_list.get(i-1).getReg_date()%></td>
														<td><%=b_list.get(i-1).getArticle_cnt()%></td>
														<!-- <td>???????? ?????? ??????</td> -->
														<td><a
															href="../CommunityDeleteOneServiceCon?article_seq=<%=b_list.get(i-1).getArticle_seq()%>">????</a></td>
													</tr>
													<%
														}
													}%>
													<!--  ?????? ??(????) -->
												</table>
												
												<!-- ???? ???? -->
												<div>
													<div class="row">
														<form method="post" name="search"
															action="searchCommunity.jsp" style="margin-left: -50px;">
															<table class="pull-right"
																style="width: 800px !important; margin-left: 100px;">
																<tr>
																	<td><input type="text" class="form-control"
																		placeholder="?????? ????" name="searchText" maxlength="100"
																		tabindex="0" style="width: 40%; margin-left: 250px;"></td>
																	<td><button type="submit" class="btn btn-success"
																			style="margin-top: 0px;">????</button></td>
																</tr>
															</table>
														</form>
													</div>
												</div>
												<!-- ???? ???? ?? -->
												
												<!-- ?????? ????(????) -->
												<div >
													<div class="paging">
														<%
															if (pageNumber != 1) {//????????????
														%>
														<a 
															href="Community.jsp?pageNumber=<%=pageNumber - 1%>">????</a>
														<%
															}
														%>
														<%
															// ?????? ???? ????
														for (int i = 1; i <= (--page_count/20+1); i++) {
														%>
														<a href="Community.jsp?pageNumber=<%=i%>">l<%=i%>l
														</a>
														<%
															}
														%>
														<%
															if (page_count / (pageNumber * 20) != 0) {// ?????? ???????? ?????? ??
														%>
														<a 
															href="Community.jsp?pageNumber=<%=pageNumber + 1%>">????</a>
														<%
															}
														%>
													</div>
												</div>
												<!-- ?????? ??(????) -->
												
												<%if(info != null){ %>
												<a href="index.jsp"><button id="writer">??????????</button></a>
												<a href="CommunityWrite.jsp"><button id="writer">????????????</button></a>
												<%}else{ %>
												<a href="main.jsp"><button id="writer">??????????</button></a>
												<a onclick="alert('???????? ????????');"><button id="writer">????????????</button></a>
												<%} %>
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

	<script>
	//?????? ???????? ????????
	$(document).on("pageload",function(){
	  window.location.reload(true);
	});
	</script>

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
