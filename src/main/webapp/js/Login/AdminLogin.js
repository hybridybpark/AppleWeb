/**
 * 
 */



	mainApp.controller('adminloginCtrl', function($scope, $http, $location) {

		$scope.loginClick = function() {
			
			alert($scope.adminlogin.id);
			alert($scope.adminlogin.pw);
			
			window.sessionStorage.setItem('MEMBERID',$scope.adminlogin.id);
			$location.path("/");
		};
		$scope.cancelClick = function() {
			window.location = "http://localhost:8080/AppleWeb/Apple/admin/";
		};
	});