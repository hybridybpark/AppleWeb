<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>


<h4>CHINESEFOOD.jsp </h4>
<div class="row">
  <div class="col-xs-6 col-md-3" data-ng-repeat="x in shops">
    <div class="thumbnail">
      <img src="{{x.shopimage}}" alt="..." data-ng-click="imageClick($index)">			     
    </div>
  </div>			 
</div>