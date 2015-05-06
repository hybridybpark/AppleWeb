<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;	
%>
<!DOCTYPE html>
<html data-ng-app="MainApp">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--     <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- 	<meta name="viewport" content="width=800px, initial-scale=1"> -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>index</title>

    <!-- Bootstrap Core CSS -->
    <link href="/AppleWeb/Frameworks/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
	<!--     <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"> -->
	<link href="/AppleWeb/Frameworks/metisMenu.min.css" rel="stylesheet">
	
    <!-- Custom CSS -->
	<!--     <link href="../dist/css/sb-admin-2.css" rel="stylesheet"> -->
	<link href="/AppleWeb/Frameworks/sb-admin-2.css" rel="stylesheet">
	
    <!-- Custom Fonts -->
	<!--     <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
    <link href="/AppleWeb/Frameworks/font-awesome.min.css" rel="stylesheet">
    
    <!-- jQuery -->
	<!--     <script src="../bower_components/jquery/dist/jquery.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/jquery/jquery-2.1.3.min.js"></script>
	
    <!-- Bootstrap Core JavaScript -->
	<!--     <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
	<!--     <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
	<!--     <script src="../dist/js/sb-admin-2.js"></script> -->
	<script src="/AppleWeb/Frameworks/sb-admin-2.js"></script>
	
	<!-- Angular JavaScript -->
	<!-- 	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/angular-1.3.15/angular.js"></script>
	<script src="/AppleWeb/Frameworks/angular-1.3.15/angular-route.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<script src="/AppleWeb/js/Main/index.js"></script>
	
	<link href="/AppleWeb/css/Main/index.css" rel="stylesheet">

<style type="text/css">
	
</style>

</head>

<body data-ng-controller="indexController">
	
    	<header>
        <!-- Navigation -->
        <div class="navbar-xs" style="background-color: gray;">
        	<div class="navbar-default"  style="background-color: #f5f5f5;">
        		<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
		            <div class="navbar-header" style="padding-left: 40px;">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		                    <span class="sr-only">Toggle navigation</span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		                <a class="navbar-brand" href="start2.jsp">start2</a>
		            </div>
		            <ul class="nav navbar-nav navbar-left"  style="padding-left: 40px;">
		            	<li>
		            		<img alt="" src="/AppleWeb/Images/Main/main1.jpg" style="height: 20px;">		            		
		            	</li>
		            	<li>
		            		<img alt="" src="/AppleWeb/Images/Main/main2.jpg" style="height: 20px;">		            		
		            	</li>
		            	<li>
		            		<img alt="" src="/AppleWeb/Images/Main/main3.jpg" style="height: 20px;">		            		
		            	</li>
		            	<li>
		            		<img alt="" src="/AppleWeb/Images/Main/main4.jpg" style="height: 20px;">		            		
		            	</li>
		            	<li>
		            		<img alt="" src="/AppleWeb/Images/Main/main5.jpg" style="height: 20px;">		            		
		            	</li>
		            	<li>
		            		<img alt="" src="/AppleWeb/Images/Main/main6.jpg" style="height: 20px;">		            		
		            	</li>
		            </ul>
		            <!-- /.navbar-header -->
<!-- 					<ul class="nav navbar-top-links navbar-right"> -->
		            <ul class="nav navbar-nav navbar-right" style="padding-right: 40px;">
		                <%
				  		if (login){//로그인
					  	%>
					  	<li><a href=""><span class="glyphicon glyphicon-user"></span> <%=memberId %>님 환영합니다.</a></li>
					  	<li><a href="start.jsp" onclick="<%session.setAttribute("MEMBERID", "");%>"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
					  	<%
					  		}else{//비로그인
					  	%>
				        <li><a href="Join.jsp"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
				        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				        <%
					  		}
				        %>                
		            </ul>
		            <!-- /.navbar-top-links -->
		</nav>
		</div>
		
        </div>
        <div class="container">
        <div class="row" style="vertical-align: middle; text-align: center; height: 100px;">					
					<div class="col-md-offset-3 col-md-6">
						<h1><a href="/"><img src="/AppleWeb/Images/Main/hlogo.gif" alt="menupan.com 매일매일 맛있게" style="width: 172px;" /></a></h1>
						<div class="input-group">							
						    <input type="text" class="form-control" placeholder="Search for...">
						      <span class="input-group-btn">
						        <button class="btn btn-default" type="button">Go!</button>
						      </span>
					    </div><!-- /input-group -->	
					</div>
		</div>
       </div>
        </header>
        
        <section class="container">
        <!-- Page Content -->
        <div id="page-wrapper" style="margin-left: 0px;">
            <div class="container-fluid">            	
            	 <nav class="container">
		            <div class="navbar-default sidebar" role="navigation"  style="width: 150px;">
		                <div class="sidebar-nav navbar-collapse" style="width: 150px;">
		                    <ul class="nav" id="side-menu" style="width: 150px;">
		<!--                         <li class="sidebar-search"> -->
		<!--                             <div class="input-group custom-search-form"> -->
		<!--                                 <input type="text" class="form-control" placeholder="Search..."> -->
		<!--                                 <span class="input-group-btn"> -->
		<!--                                     <button class="btn btn-default" type="button"> -->
		<!--                                         <i class="glyphicon glyphicon-search"></i> -->
		<!--                                     </button> -->
		<!--                                 </span> -->
		<!--                             </div> -->
		<!--                             /input-group -->
		<!--                         </li> -->                       
		                       
		                        <li>
		                        	<a ng-mouseenter="show1 = true" ng-mouseleave="show1 = false" style="padding: 0px;" ng-click="tabClick(0)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_all.jpg" data-ng-show="!show1"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_all1.jpg" data-ng-show="show1"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show2 = true" ng-mouseleave="show2 = false" style="padding: 0px;" ng-click="tabClick(1)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_cafe.jpg" data-ng-show="!show2"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_cafe1.jpg" data-ng-show="show2"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show3 = true" ng-mouseleave="show3 = false" style="padding: 0px;" ng-click="tabClick(2)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_korean.jpg" data-ng-show="!show3"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_korean1.jpg" data-ng-show="show3"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show4 = true" ng-mouseleave="show4 = false" style="padding: 0px;" ng-click="tabClick(3)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_china.jpg" data-ng-show="!show4"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_china1.jpg" data-ng-show="show4"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show5 = true" ng-mouseleave="show5 = false" style="padding: 0px;" ng-click="tabClick(4)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_american.jpg" data-ng-show="!show5"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_american1.jpg" data-ng-show="show5"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show6 = true" ng-mouseleave="show6 = false" style="padding: 0px;" ng-click="tabClick(5)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_japan.jpg" data-ng-show="!show6"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_japan1.jpg" data-ng-show="show6"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show7 = true" ng-mouseleave="show7 = false" style="padding: 0px;" ng-click="tabClick(6)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_sanck.jpg" data-ng-show="!show7"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_sanck1.jpg" data-ng-show="show7"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show8 = true" ng-mouseleave="show8 = false" style="padding: 0px;" ng-click="tabClick(7)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_qa.jpg" data-ng-show="!show8"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_qa1.jpg" data-ng-show="show8"   style="width: 150px;">
		                        	</a>
		                        </li>
		                            
		                    </ul>
		                </div>
		                <!-- /.sidebar-collapse -->
		            </div>
		            <!-- /.navbar-static-side -->
		        </nav>
        		
        	
        
        <hr>
            	
<!--                 <div class="input-group custom-search-form"> -->
<!--                     <input type="text" class="form-control" placeholder="Search..."> -->
<!--                     <span class="input-group-btn"> -->
<!--                         <button class="btn btn-default" type="button"> -->
<!--                             <i class="glyphicon glyphicon-search"></i> -->
<!--                         </button> -->
<!--                     </span> -->
<!--                 </div> -->
				
				
				
                <!-- /input-group -->
                
            	<div style="text-align: center;">
            	
            	
            	
            	<img alt="" src="/AppleWeb/Images/Main/h119200_620.jpg" width="620" data-ng-show="true">
            	<img alt="" src="/AppleWeb/Images/Main/drive_620.jpg" width="620" data-ng-show="false">
            	<img alt="" src="/AppleWeb/Images/Main/garosugil_620.jpg" width="620" data-ng-show="false">
            	
            	<div class="input-group-right"  style="margin-top: -20px; margin-right: -50%;">
            		<input type="radio" aria-label="..." style="margin-left: 0px;">
            		<input type="radio" aria-label="..." style="margin-left: 0px;">
            		<input type="radio" aria-label="..." style="margin-left: 0px;">
            	</div>
            		
            		
            	            				
						    
            				
            			
            	</div>
            	<hr>
                <div class="row">
                    <div class="col-lg-12">
                        <div data-ng-include="url2"></div>						
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->   
            
        </div>
        <!-- /#page-wrapper -->
		
		<!-- floating layout -->
		
		
		<div id="cont">
			<div id="float_layer">
				<div class="panel panel-default">
				  <div class="panel-heading">Panel heading without title</div>
				  <div class="panel-body">
				    Panel content
				  </div>
				</div>	
			</div>
		</div>
		<div class="fixed-bottom-right">
		   <!-- 우측광고 삽입 -->
		   <div class="panel panel-default">
				  <div class="panel-heading">예약목록</div>
				  <div class="panel-body">
				    	<ul class="list-group">
		                                <li class="list-group-item">
		                                    <p>13:00</p>
		                                    <p>예약명</p>
		                                    <p>예약이름</p>
		                                    <p>3명</p>
		                                    <button class="btn">상세보기</button>
		                                </li>                                                                
		                            </ul>            
				  </div>				  
				</div>	
		</div>
		
    </section>

    <footer>
	<div>
         <p class="text-center">
             <small><strong> Apple</strong></small><br>
             <small>대표 : Apple(주) ㆍ 주소 :  이대역 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br>
             <small>Copyrightⓒ All rights reserved.</small>
         </p>
     </div>
	</footer>

</body>

</html>
