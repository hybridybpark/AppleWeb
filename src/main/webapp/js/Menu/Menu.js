/**
 * 
 */
var mainApp = angular.module('mainApp',[]);

mainApp.controller('menuCtrl',function($scope,$http){	
	$scope.shopname = window.sessionStorage.getItem('SHOPNAME');
	$scope.businessnumber = window.sessionStorage.getItem('SHOPBUSINESSNUMBER');
	
	$http.get("http://localhost:8080/AppleWeb/Apple/Menu/list.json").success(function(data) {
		$scope.list = data;
	});
});