/**
 * 
 */


	mainApp.controller('joinCtrl', function($scope, $http, $location) {

		//scope.$apply(function() { $location.path("/route"); });	
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";

		};
	});