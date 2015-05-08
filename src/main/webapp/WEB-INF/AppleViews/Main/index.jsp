<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/jspf/index.jspf"%>
    
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
		                <a class="navbar-brand" href="/AppleWeb/Apple/" data-ng-click="">APPLE</a>
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
					  	<li><a href="" data-ng-click="otherClick()"><span class="glyphicon glyphicon-user"></span> <%=memberId %>님 환영합니다.</a></li>
					  	<li><a href="/AppleWeb/Apple/" onclick="<%session.setAttribute("MEMBERID", "");%>"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
					  	<%
					  		}else{//비로그인
					  	%>
				        <li><a href="" data-ng-click="otherClick('join')"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
				        <li><a href="" data-ng-click="otherClick('login')"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				        <%
					  		}
				        %>         
				        <li><a href="" data-ng-click="otherClick('qna')"><span></span> Q&A</a>       
		            </ul>
		            <!-- /.navbar-top-links -->
		</nav>
		</div>
		
        </div>
        
        </header>
        
        <section>
        
        	<div class="container" data-ng-include="url1"></div>
        	
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
