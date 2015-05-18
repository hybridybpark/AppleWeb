<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>
	<div class="container" data-ng-controller="chainCtrl" style="border: 1px solid lightgray; margin-top: 16px;">
	<div class="header">		
		<img alt="{{chain.name}}" src="{{chain.image}}" style="height: 150px;">
	</div>	
	<hr>
	<h3 class="text-primary">매장 찾기</h3>			
	
		<ul class="list-group" data-ng-repeat="x in chainlist">
        <li class="list-group-item">
        	<div class="media">
        	<div class="media-left">
            <a href="#">
                <img src="{{x.shopimage}}" class="media-object" alt="Sample Image" style="width: 200px;height: 200px;">
            </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">{{x.shopname}}</h4>
                <p>주소 : {{x.shopaddress}}</p>
                <p>전화 : {{x.shopphone}}</p>                
                <a href="" data-ng-click="goDetail($index)">상세정보 보기</a>
            </div>
            </div>
         </li>         
         </ul>
	
	</div>


