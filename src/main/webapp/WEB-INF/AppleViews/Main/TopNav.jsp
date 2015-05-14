<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<div class="navbar-xs">
        	<div class="navbar-default"  style="background-color: #f5f5f5; border-bottom: 1px solid red;">
        		<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
		            <div class="navbar-header" style="padding-left: 40px;">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		                    <span class="sr-only">Toggle navigation</span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		                <a class="navbar-brand" href="" data-ng-click="brandClick()">APPLE</a>
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
		            	<!-- 로그인 -->		                
					  	<li>
						  	<a href="" data-ng-click="otherClick('business')" data-ng-show="loginshow">
						  	<span class="glyphicon glyphicon-user"></span> {{memberID}}님 환영합니다.</a>
					  	</li>
					  	<li>
						  	<a href="" data-ng-click="logout()" data-ng-show="loginshow">
						  	<span class="glyphicon glyphicon-log-out"></span> 로그아웃</a>
					  	</li>
					  	<!-- 비로그인 -->
				        <li>
					        <a href="" data-ng-click="otherClick('join')" data-ng-show="!loginshow">
					        <span class="glyphicon glyphicon-user"></span> 회원가입</a>
				        </li>
				        <li>
					        <a href="" data-ng-click="otherClick('login')" data-ng-show="!loginshow">
					        <span class="glyphicon glyphicon-log-in"></span> 로그인</a>
				        </li>
				               
				        <li><a href="" data-ng-click="otherClick('qna')"><span></span> Q&A</a>       
		            </ul>
		            <!-- /.navbar-top-links -->
		</nav>
		</div>
		
        </div>