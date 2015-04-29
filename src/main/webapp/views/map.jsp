<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>map.jsp</title>

<style type="text/css">
*{margin: 0; padding: 0;}
html, body { height: 100%}
#map{
height : 50%;
width: 50%;}
</style>
<script src="http://maps.google.com/maps/api/js?sensor=false" ></script>

</head>

<body data-ng-controller = "myController">
<div id="map"></div>
<script type="text/javascript">
	var element = document.getElementById('map');
	var map = new google.maps.Map(element, {
		zoom: 10,
		center: new google.maps.LatLng(),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	});
</script>
</body>
</html>