<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>


<h4>JAPANESEFOOD.jsp </h4>
<div class="row">
  <div class="col-xs-6 col-md-3" data-ng-repeat="x in shops">
    <div class="thumbnail">
      <img src="{{x.shopimage}}" alt="{{x.shopname}}" data-ng-click="imageClick($index)">			     
    </div>
  </div>			 
</div>