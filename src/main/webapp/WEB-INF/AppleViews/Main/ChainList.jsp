<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>
	<div class="container" data-ng-controller="chainCtrl" style="border: 1px solid blue;">
	<div class="header">
		<br>
		<img alt="{{chain.name}}" src="{{chain.image}}" style="height: 150px;">
	</div>
	<h3>매장 찾기</h3>
	<div class="container">
		<ul class="media-list" data-ng-repeat="x in chainlist">
        <li class="media">
            <a href="#" class="pull-left">
                <img src="{{x.shopimage}}" class="media-object" alt="Sample Image" style="width: 200px;height: 200px;">
            </a>
            <div class="media-body">
                <h4 class="media-heading">{{x.shopname}}</h4>
                <p>주소 : {{x.shopaddress}}</p>
                <p>전화 : {{x.shopphone}}</p>                
                <a href="Menu.jsp">상세정보 보기</a>
            </div>
         </li>         
         </ul>
	</div>
	</div>


