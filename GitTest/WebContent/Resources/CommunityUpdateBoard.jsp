<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Model.CommunityDTO"%>
<%@page import="Model.CommunityDAO"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Community_write</title>
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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">

<%
      	String article_seq = request.getParameter("article_seq");

      	CommunityDAO dao = new CommunityDAO();
      	CommunityDTO dto = dao.viewOneBoard(article_seq);
		MemberDTO info = (MemberDTO)session.getAttribute("info");
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
                              <a class="navbar-brand" href="#home">
                              <img src="assets/images/logo1.png" />
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->



                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class="nav navbar-nav navbar-right">
                                 <li><a href="index.html">HOME</a></li>
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
                                 <div></div>
                                 <div class="container">
                                    <h2>게시판 글쓰기</h2>
                                    <form action="../UpdateCommunityServiceCon" method="post" enctype = "multipart/form-data">
                                       <div class="form-group">
                                          <label for="location">지역</label>
                                          <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                                          <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                                          <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
														<select id="location">
															<option value="1">서울특별시</option>
															<option value="2">인천광역시</option>
															<option value="3">대전광역시</option>
															<option value="4">대구광역시</option>
															<option value="5">울산광역시</option>
															<option value="6">부산광역시</option>
															<option value="7">광주광역시</option>
															<option value="8">세종특별자치시</option>
															<option value="9">경기도</option>
															<option value="10">강원도</option>
															<option value="11">충청북도</option>
															<option value="12">충청남도</option>
															<option value="13">경상북도</option>
															<option value="14">경상남도</option>
															<option value="15">전라북도</option>
															<option value="16">전라남도</option>
															<option value="17">제주도</option>
														</select>
													</div>
                                       <div class="form-group">
                                          <label for="title">제목</label>
                                          <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                                          <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                                          <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                                          <input type="text" class="form-control" id="title"
                                             placeholder="제목 입력(4-100)" name="article_title" maxlength="100"
                                             required="required" pattern=".{4,100}" value=<%=dto.getArticle_title() %>>
                                       </div>
                                       <div class="form-group">
                                          <label for="content">내용</label>
                                          <!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
                                          <!--  textearea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
                                          <textarea class="form-control" rows="20" id="content"
                                             name="article_content" placeholder="내용 작성" wrap="off"><%=dto.getArticle_content() %></textarea>
                                       </div>
                                       <div class="form-group">
                                          <label for="writer">작성자</label> <input type="text"
                                             class="form-control" id="writer"
                                             placeholder="작성자(2자-10자)" name="mb_id" value=<%=dto.getMb_id()%>>
                                       </div>
                                       <div class="form-group">
                                          <label for="writer">파일등록</label>
                                          <input name = "article_file1" type="file" style="float: right;">
                                          <input name = "article_file2" type="file" style="float: right;">                                          
                                          <input name = "article_file3" type="file" style="float: right;"> 
                                          <input type="hidden" class="class" name="article_seq" id="id" value=<%= dto.getArticle_seq() %>>                                         
                                       </div>
                                       <button type="submit" class="btn btn-default">등록</button>
                                    </form>
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