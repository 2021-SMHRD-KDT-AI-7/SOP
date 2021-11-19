<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<head>
<meta charset="EUC-KR">
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

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>


<body>
	<div id="wrap" class="wrap">
		<div class="u_skip">
			<a href="http://localhost:8081/GitTest/Resources/index.html">본문
				바로가기</a>
		</div>
  <body data-spy="scroll" data-target=".navbar-collapse">

        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
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
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            <a class="navbar-brand" href="#home">
                                                <img src="assets/images/logo.png"/>
                                            </a>
                                        </div>

                                        <!-- Collect the nav links, forms, and other content for toggling -->



                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                            <ul class="nav navbar-nav navbar-right">
                                                <li><a href="index.html">HOME</a></li>
                                                <li><a href="#history">ABOUT US</a></li>
                                                <li><a href="#portfolio">PORTFOLIO</a></li>
                                                <li><a href="#pricing">캠페인</a></li>
                                                <li><a href="#team">커뮤니티</a></li>
                                                <li><a href="#blog">BLOG</a></li>
                                                <li><a href="#contact">CONTACT</a></li>
                                            </ul>


                                        </div>

                                    </div>
                                </nav>
                            </div>   
                        </div>

                    </div>

                </div>
            </header> <!--End of header -->

		<div id="container" class="container">
			<!-- content -->
			<div class="content">
				<div class="login_wrap">
					<form id="frmNIDLogin" name="frmNIDLogin" target="_top"
						autocomplete="off" action="https://nid.naver.com/nidlogin.login"
						method="POST">
						<input type="hidden" id="localechange" name="localechange"
							value=""> <input type="hidden" name="dynamicKey"
							id="dynamicKey"
							value="YNPfru3WQHYHKub5J8NYiD7M9Y1Flk6W4dbVN5YkkibZN3lLQl_LyLO1enEgbYDi6OHGtuXV34DDjUvj7QFQCoQHVbgxsKOLDG04_nrtOak">
						<input type="hidden" name="encpw" id="encpw" value=""> <input
							type="hidden" name="enctp" id="enctp" value="1"> <input
							type="hidden" name="svctype" id="svctype" value="1"> <input
							type="hidden" name="smart_LEVEL" id="smart_LEVEL" value="1">
						<input type="hidden" name="bvsd" id="bvsd" value=""> <input
							type="hidden" name="encnm" id="encnm" value=""> <input
							type="hidden" name="locale" id="locale" value="ko_KR"> <input
							type="hidden" name="url" id="url" value="https://www.naver.com">


						<ul class="panel_wrap">
							<li class="panel_item" style="display: block;">
								<div class="panel_inner" role="tabpanel" aria-controls="loinid">
									<div class="id_pw_wrap">
										<div class="input_row" id="id_line">
											<div class="icon_cell" id="id_cell">
												<span class="icon_id"> <span class="blind">아이디</span>
												</span>
											</div>
											<input type="text" id="id" name="id" placeholder="아이디"
												title="아이디" class="input_text" maxlength="41" value="">
											<span role="button" class="btn_delete" id="id_clear"
												style="display: none;"> <span class="icon_delete">
													<span class="blind">삭제</span>
											</span>
											</span>
										</div>
										<div class="input_row" id="pw_line">
											<div class="icon_cell" id="pw_cell">
												<span class="icon_pw"> <span class="blind">비밀번호</span>
												</span>
											</div>
											<input type="password" id="pw" name="pw" placeholder="비밀번호"
												title="비밀번호" class="input_text" maxlength="16"> <span
												role="button" class="btn_delete" id="pw_clear"
												style="display: none;"> <span class="icon_delete">
													<span class="blind">삭제</span>
											</span>
											</span>
										</div>
									</div>
									<div class="login_keep_wrap" id="login_keep_wrap">
										<div class="keep_check">
											<input type="checkbox" id="keep" name="nvlong"
												class="input_keep" value="off"> <label for="keep"
												class="keep_text">로그인 상태 유지</label>
										</div>
										<div class="ip_check">
											<a href="/login/ext/help_ip3.html" target="_blank"
												id="ipguide" title="IP보안"><span class="ip_text">IP보안</span></a>
											<span class="switch"> <input type="checkbox"
												id="switch" class="switch_checkbox" value="off"> <label
												for="switch" class="switch_btn"> <span class="blind"
													id="switch_blind">on</span>
											</label>
											</span>
										</div>
									</div>

									<div class="login_error_wrap" id="err_capslock"
										style="display: none;">
										<div class="error_message">
											<strong>CapsLock</strong>이 켜져 있습니다.
										</div>
									</div>

									<div class="login_error_wrap" id="err_empty_id"
										style="display: none;">
										<div class="error_message">
											<strong>아이디</strong>를 입력해 주세요.
										</div>
									</div>

									<div class="login_error_wrap" id="err_empty_pw"
										style="display: none;">
										<div class="error_message">
											<strong>비밀번호</strong>를 입력해 주세요.
										</div>
									</div>
									<div class="login_error_wrap" id="err_common"
										style="display: none;">
										<div class="error_message" style="width: 90%"></div>
									</div>
									<div class="btn_login_wrap">

										<button type="submit" class="btn_login" id="log.login">
											<span class="btn_text">로그인</span>
										</button>

									</div>
								</div>
							</li>
						</ul>
					</form>
				</div>
				<ul class="find_wrap" id="find_wrap">

					<li><a target="_blank"
						href="https://nid.naver.com/user2/api/route?m=routePwInquiry&amp;lang=ko_KR"
						class="find_text">비밀번호 찾기</a></li>
					<li><a target="_blank"
						href="https://nid.naver.com/user2/api/route?m=routeIdInquiry&amp;lang=ko_KR"
						class="find_text">아이디 찾기</a></li>
					<li><a target="_blank"
						href="https://nid.naver.com/user2/V2Join?m=agree&amp;lang=ko_KR"
						class="find_text">회원가입</a></li>

				</ul>

			</div>
			<!-- //content -->
		</div>
</body>