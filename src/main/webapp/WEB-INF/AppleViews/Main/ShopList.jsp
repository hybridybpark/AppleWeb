<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<h4>ALL.jsp </h4>
<div class="row">
  <div class="col-xs-6 col-md-3" data-ng-repeat="x in [1,2,3,4,5,6,7,8]">
    <div class="thumbnail">
      <img src="{{x.image}}" alt="..." data-ng-click="imageClick($index)">			     
    </div>
  </div>			 
</div>

