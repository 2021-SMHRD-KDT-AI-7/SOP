<%@page import="Model.NewsDAO"%>
<%@page import="Model.NewsDTO"%>
<%@page import="Model.CampaignDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MemberDTO"%>
<%@page import="Model.CampaignDAO"%>
<%@page import="javax.sound.midi.MidiDevice.Info"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DailyNews</title>
<!-- �ǽð� ��� css �ҷ����� -->
<link rel="stylesheet" type="text/css" href="assets/css/news.css">
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
<%
   MemberDTO info = (MemberDTO)session.getAttribute("info");
   NewsDAO dao = new NewsDAO();
   ArrayList<NewsDTO> news_list = dao.getNews();
   //���� �������� ���° ������ �ΰ�
   int pageNumber = 1;//�⺻������ 1������
   if (request.getParameter("pageNumber") != null)
      pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
   %>
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
                           id="bs-example-navbar-collapse-1">
							
								<% String site ="";
								if(info != null){
										site = "index.jsp";	
								}else{
										site = "main.jsp";
								} %>
                           <ul class="nav navbar-nav navbar-right">
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#home">HOME</a></li>
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#history">ABOUT US</a></li>
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#portfolio">PORTFOLIO</a></li>
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#pricing">ķ����</a></li>
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#team">Ŀ�´�Ƽ</a></li>
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#blog">BLOG</a></li>
                              <li><a href="http://localhost:8081/GitTest/Resources/<%=site%>#contact">CONTACT</a></li>
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

   <div class="section-list-area ">
      <h3 class="blind">ȯ�� ���� ���</h3>
      <!-- 
      <div class="list first">
         <div class="article-area">
            <span class="article-photo"> <a target="_blank"
               href="https://www.hani.co.kr/arti/society/environment/1019808.html"><img 
                  src="https://flexible.img.hani.co.kr/flexible/normal/212/127/imgdb/child/2021/1118/53_16372061609671_20211118501522.jpg"></a>
            </span> <strong class="category"> </strong>
            <h4 class="article-title">
               <a target="_blank"
                  href="https://www.hani.co.kr/arti/society/environment/1019808.html">[�ܵ�]
                  ��������ٿ��� ó����� ��������� ���� �ƴ� �簳�� ���Ƽ���</a>
            </h4>
            <p class="article-prologue">
               <a target="_blank"
                  href="https://www.hani.co.kr/arti/society/environment/1019808.html">���ΰ�
                  8000����� �����ϰ� ������ �ߴܽ�Ų ������ٿ��� ���̷����μ��̰� �ҵ�ð���ӷ�(SFR) ��å �������߻����
                  �簳...</a> <br>
               <span class="date">2021-11-19 04:59</span>
            </p>
         </div>
      </div>
 -->
<%
   // len(���� �������� ��� �ε��� ���ϱ�)
	int len = pageNumber;
	int page_count = dao.getCount();
	int n = (int)((dao.getCount() / 5) + 1);

	 for(int i = 1; i < pageNumber; i++){ // ������ ���� �ε��� ���ϱ�
	      len += 4;
	 }

	if((page_count / (len*5)) != 0){ // ���̺��� �� ���� ���� / �ִ� ������ �� != �ִ� ������ �� +1 -->  ���� ������ �������� �ƴϸ� ����
		for(int i =len; i< len+5; i++){
			%>
			      <div class="list ">
			         <div class="article-area">
			            <span class="article-photo"> 
			            <a href="<%=news_list.get(i-1).getNews_url()%>">
			               <img src="<%=news_list.get(i-1).getImg_url() %>"
			                  alt=""
			                  title=""></a>
			            </span> <strong class="category"> </strong>
			            <h4 class="article-title">
			               <a
			                  href="<%=news_list.get(i-1).getNews_url()%>"><%=news_list.get(i-1).getNews_title()%></a>
			            </h4>
			            <p class="article-prologue">
			               <a
			                  href="<%=news_list.get(i-1).getNews_url()%>"><%=news_list.get(i-1).getNews_content() %></a> <br>
			               <span class="date"><%=news_list.get(i-1).getReg_date()%></span>
		            </p>
		         </div>
		      </div>
		<%} 
	}else{  // ���̺��� �� ���� ���� / �ִ� ������ �� == �ִ� ������ �� --> ���̸� ���� �ִ� �������� ����.
		for(int i = len; i <= page_count; i++){
			%>
		      <div class="list ">
		         <div class="article-area">
		            <span class="article-photo"> 
		            <a href="<%=news_list.get(i-1).getNews_url()%>">
		               <img src="<%=news_list.get(i-1).getImg_url() %>"
		                  alt=""
		                  title=""></a>
		            </span> <strong class="category"> </strong>
		            <h4 class="article-title">
		               <a
		                  href="<%=news_list.get(i-1).getNews_url()%>"><%=news_list.get(i-1).getNews_title()%></a>
		            </h4>
		            <p class="article-prologue">
		               <a
		                  href="<%=news_list.get(i-1).getNews_url()%>"><%=news_list.get(i-1).getNews_content() %></a> <br>
		               <span class="date"><%=news_list.get(i-1).getReg_date()%></span>
			            </p>
			         </div>
			      </div>
			<%}
	}
	%>

   </div>
   <div>
      <div id="search_form">

         <form name="frmsearch" method="post"
            action="//search.hani.co.kr/Search" title="�˻�">
            <input type="text" name="keyword" value="" title="�˻���" class="text"><input
               type="image"
               src="//img.hani.co.kr/section-image/15/hani/images/icon/icon_top_search.png"
               class="button" title="�˻�">
         </form>

      </div>
   </div>
<!-- 
   <div class="paginate">
      <a
         href="http://127.0.0.1:5500/Project_%20%EA%B9%90%EB%B6%80/news1/news1.html"
         class="selected">1</a> <a
         href="http://127.0.0.1:5500/Project_%20%EA%B9%90%EB%B6%80/news1/news2.html">2</a>
      <a href="/arti/society/environment/list3.html">3</a> <a
         href="/arti/society/environment/list4.html">4</a> <a
         href="/arti/society/environment/list5.html">5</a> <a
         href="/arti/society/environment/list6.html">6</a> <a
         href="/arti/society/environment/list7.html">7</a> <a
         href="/arti/society/environment/list8.html">8</a> <a
         href="/arti/society/environment/list9.html">9</a> <a
         href="/arti/society/environment/list10.html">10</a> <a
         href="/arti/society/environment/list11.html" class="next">����</a>
   </div>
    -->
    
   <div class="paginate">
   <div class=container style="text-align: center">
            <%
               if (pageNumber != 1) {//������������
            %>
            <a class="prev" href="News.jsp?pageNumber=<%=pageNumber - 1%>">����</a>
            <%
               }
            %>
            <% // ����¡ ���� ǥ��
               for (int i = 1; i <= n; i++) {
            %>
               <a class="selected" href="News.jsp?pageNumber=<%=i%>"><%=i%>
               </a>
            <%
               }
            %>
            <%
               if (page_count / (pageNumber*5) != 0) {// ������ �������� �ƴϸ� ��
            %>
            <a class="next" href="News.jsp?pageNumber=<%=pageNumber + 1%>">����</a>
            <%
               }
            %>
</div>
         </div>

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
                                 href="http://bootstrapthemes.co">��� �豹�� ������ ���ؿ� ������ ������</a>
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



   <!-- </div>  -->

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