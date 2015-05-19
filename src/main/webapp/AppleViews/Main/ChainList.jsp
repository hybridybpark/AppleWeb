<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>
	<div class="container" data-ng-controller="chainCtrl" style="border: 1px solid lightgray; margin-top: 16px;">
	<div class="header">		
		<img alt="{{chain.name}}" src="{{chain.image}}" style="height: 300px;width: 800px;">
	</div>	
	<hr>
	<div class="row">
         <div class="col-lg-12">
              <h1 class="page-header">{{chain.name}}
                  <small>매장 목록</small>
              </h1>
         </div>
    </div>			
	
	<ul class="list-group" data-ng-repeat="x in chainlist">
       <li class="list-group-item">
       	<div class="media">
            <div class="media-left">
                <a>
                    <img src="{{x.shopimage}}" class="media-object" alt="Sample Image" style="width: 700px;height: 300px;">
                </a>
            </div>
            <div class="media-body">
                <h3>{{x.shopname}}</h3>
               	<p>주소 : {{x.shopaddress}}</p>
               	<p>전화 : {{x.shopphone}}</p>
               	<a class="btn btn-primary" data-ng-click="goDetail($index)">상세정보 보기 <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>        	
        </li>         
        </ul>
	
	</div>
	


