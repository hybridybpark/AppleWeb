<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<title>ALL.jsp</title>



</head>

<body>


<h4>FLOURFOOD.jsp </h4>
<div class="row">
			  <div class="col-xs-6 col-md-3" data-ng-repeat="x in shops">
			    <div class="thumbnail">
			      <img src="{{x.image}}" alt="..." data-ng-click="imageClick($index)">			     
			    </div>
			  </div>			 
			</div>

</body>

</html>