<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<h4>ALL.jsp </h4>
<div class="row">
  <div class="col-xs-6 col-md-3" data-ng-repeat="x in shops | orderBy :'-shopmark'">
    <div class="thumbnail">
      <img src="{{x.shopimage}}" alt="{{x.shopname}}" data-ng-click="imageClick($index)">
      <div class="caption">
      	<h4>{{x.shopname}}</h4>
      	<p>{{x.shopmark}}</p>
      </div>			     
    </div>
  </div>			 
</div>

