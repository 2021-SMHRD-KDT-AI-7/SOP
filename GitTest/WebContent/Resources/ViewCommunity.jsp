<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> 
<%@page import="Model.MemberDTO"%>
<%@page import="Model.CommentDAO"%>
<%@page import="Model.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CommunityDTO"%>
<%@page import="Model.CommunityDAO"%>
<%@page import="Model.CampaignDTO"%>
<%@page import="Model.CampaignDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html class="no-js" lang=""> <!--<![endif]-->
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
    </head>
<body data-spy="scroll" data-target=".navbar-collapse">
   <%
	  /* HttpSession session = request.getSession(); */
		
	  MemberDTO info=(MemberDTO)session.getAttribute("info"); 
	   
      String article_seq = request.getParameter("article_seq");
      String comment_seq = request.getParameter("comment_seq");
      
      CommunityDAO dao = new CommunityDAO();
      CommunityDTO dto = dao.viewOneBoard(article_seq);
      
      CommentDAO cmt_dao = new CommentDAO();
      ArrayList<CommentDTO> cmt_list = new ArrayList<>();
      
      if(info != null){
			cmt_list = cmt_dao.getComment(article_seq);
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
                              <a class="navbar-brand" href="index.html"> <img
                                 src="assets/images/logo.png" />
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->



                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">
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
                                  <div id="board">
                                    <table id="list">
                                       <tr>
                                          <td>제목</td>
                                          <td id="article_seq"><%=dto.getArticle_title() %></td>
                                       </tr>
                                       <tr>
                                          <td>작성자</td>
                                          <td><%=dto.getMb_id() %></td>
                                       </tr>
                                       <tr>
                                          <td colspan="2">내용</td>
                                       </tr>
                                       <!-- 댓글 다는 곳 -->
                                       <tr>
                                          <td colspan="2"><%=dto.getArticle_content() %> 
                                          <img src="./image/<%=dto.getArticle_file1()%>"></td>
                                       </tr>
                                       <tr>
                                             <td colspan="2"><input type="text" size="50"><input id="write_com" type="button" value="댓글작성"> </td>
                                       </tr>
                              <tr>
                                 <td colspan="2">
                                    <%
                                    	for (int i=0; i<cmt_list.size(); i++){ %>
											
                                    		<tr id="comments-<%=i%>" style="list-style:none; padding:0">
											<td><%=cmt_list.get(i).getComment_content()%></td>
											<td></td>
											</tr>
                                    	<%}
                                    %>
                                       
                                    
                                 </td>
                              </tr>
                              <tr>
                                          <td colspan="2"><a href="Community.jsp"><button>뒤로가기</button></a>
                                                      <a href="CommunityUpdateBoard.jsp?article_seq=<%=dto.getArticle_seq()%>"><button>수정하기</button></a></td>
                                               
                                       </tr>
                                    </table>
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

   <script src="jquery-3.6.0.min.js"></script>
   <script> 
      //type=text 인 input 태그에 작성한 댓글을 ul(id=comments) 태그에 추가(li태그 사이에)
       var num = 1;
      $('#write_com').on('click',function(){
    	  /* alert("!") */
    	  var seq = <%=article_seq%>;
    	  var number = <%=cmt_list.size()-1%>;
          var com = $('input[type=text]').val()    //댓글
          $('#comments-' + number).after('<tr id="comments-'+(number+1)+'" style="list-style:none; padding:0"><td class="com'+num+'">'+com+'</td><td><input type="button" value="댓글삭제" onclick="del('+num+')"></td></tr>');
          num++;
          location.reload();
          // $('imput[type=text]').val('');
          /* alert(com) */
          insert_com(seq, com);
         
      }); 
      
      function del(num){
         $('.com'+num).remove();
      }
      
      
      function insert_com(seq, com){
    	  $.ajax({
              type : "post",
              data : {
                 "article_seq" : seq,
                 "comment" : com
              },
              url : "../CommentService",
              dataType : "text",
              success : function(data){
                 alert(data);
              },
              error : function(){
                 alert("실패!");
              }
           }); 
      }
       
      //댓글등록
   /*    function WriteCmt(){
         var form =document.getElementById("writeCommentForm");
         
         var board=form.comment_board.value
         var id = form.comment_id.value
         var content=form.comment_content.value;
         
         if(!content){
            alert("내용을 입력하세요");
            return false;
         }else{
            var param="comment_board"+ board +"&comment_id"+id+"&comment_content="+content;
            
            httpRequest=getXMLHttpRequest();
            httpRequest.onreadystatechange=checkFun;
            httpRequest.open("POST","CommentWriteAction.co",true);
            httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded;charset=euc-kr');
            httpRequest.send(param);
         }
         
         function checkFunc(){
            if)httpRequest.readyState==4{
               //결과값을 가져온다
               var resultText=httpRequest.responseText;
               if(resultText==1){
                  document.location.reload();//상세보기 창 새로고침
               }
            }
         }
      } */
   
   </script>
	<script src="jquery-3.6.0.min.js"></script>
	
	
	
	<!-- 댓글 스크립트  -->
	<script> 
		//type=text 인 input 태그에 작성한 댓글을 ul(id=comments) 태그에 추가(li태그 사이에)
		 var num = 1;
		$('#write_com').on('click',function(){
			
			// db 보내는 준비
			var com = $('input[type=text]').val()
			$('#comments').append('<li class="com'+num+'">'+com+'<input type="button" value="댓글삭제" onclick="del('+num+')"></li>');
			num++;
			$('imput[type=text]').val('');
			/* 
=======
			
			$.ajax({
				type : "post",
				data : {
					"article_seq" : $('#article_seq').jsp()
				},
				url : "CommentService",
				dataType : "text",
				success : function(data){
					alert(data);
				},
				error : function(){
					alert("실패!");
				}
			}); */
			
		}); 
			});

			// 실제 댓글 달리는 기능
			var com = $('input[type=text]').val()
			$('#comments').append('<li class="com'+num+'">'+com+'<input type="button" value="댓글삭제" onclick="del('+num+')"></li>');
			num++;
			$('imput[type=text]').val('');
 
		
		function del(num){
			$('.com'+num).remove();
		}
		 
		//댓글등록
	/* 	function WriteCmt(){
			var form =document.getElementById("writeCommentForm");
			
			var board=form.comment_board.value
			var id = form.comment_id.value
			var content=form.comment_content.value;
			
			if(!content){
				alert("내용을 입력하세요");
				return false;
			}else{
				var param="comment_board"+ board +"&comment_id"+id+"&comment_content="+content;
				
				httpRequest=getXMLHttpRequest();
				httpRequest.onreadystatechange=checkFun;
				httpRequest.open("POST","CommentWriteAction.co",true);
				httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded;charset=euc-kr');
				httpRequest.send(param);
			}
			
			function checkFunc(){
				if)httpRequest.readyState==4{
					//결과값을 가져온다
					var resultText=httpRequest.responseText;
					if(resultText==1){
						document.location.reload();//상세보기 창 새로고침
					}
				}
			}
		} */
	
	</script>
</body>
</html>