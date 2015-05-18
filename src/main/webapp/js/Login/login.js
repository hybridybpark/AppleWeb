/**
 * 
 */



	mainApp.controller('loginCtrl', function($scope, $http, $location) {

		//scope.$apply(function() { $location.path("/route"); });
		$scope.loginClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
//			window.localStorage.setItem("MEMBERID", $scope.num);
//			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";
			
			alert($scope.login.id);
			alert($scope.login.pw);
			
			window.sessionStorage.setItem('MEMBERID',$scope.login.id);
			$location.path("/");
			
		};
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";
		};
	});