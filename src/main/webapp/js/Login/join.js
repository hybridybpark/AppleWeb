
// angularjs

	var myApp = angular.module('myApp', []);
	myApp.controller('userCtrl', function($scope, $http, $location) {

		//scope.$apply(function() { $location.path("/route"); });	
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";

		};
		
		$scope.doSubmit = function() {
			 alert("저장하시겠습니까?");
			
			boardFrm.submit();
		};
	});
