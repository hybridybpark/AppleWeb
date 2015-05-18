<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/jspf/index.jspf"%>
    
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;	
%>
<!DOCTYPE html>
<html data-ng-app="mainApp">

<head>
	<title>index</title>	
	
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  } 
	.thumbnail {
	    position: relative;
	    width: 100%;
	    max-height: 512px;    
	}
  </style>

</head>

<body data-ng-controller="indexController">
	
    	<header>
        <!-- Navigation -->
        	<jsp:include page="TopNav.jsp"></jsp:include>        
        </header>
        
        <section>
        
        	<div class="container" data-ng-view></div>
        	
<!--         	<div class="container" data-ng-include="url1"></div> -->
        	
        	<div class="fixed-bottom-right" data-ng-show="rightView">
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
                             <button class="btn">상세보기2</button>
                         </li>                                                                
                    </ul>            
			  </div>				  
			</div>	
		</div>
        </section>
        

    <footer class="container">
    
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
