/**
 * 
 */

mainApp.controller('reviewCtrl',function($scope,$http,$location,$cookieStore){	
	$scope.shopname = window.sessionStorage.getItem('SHOPNAME');
	$scope.businessnumber = window.sessionStorage.getItem('SHOPBUSINESSNUMBER');
	
	$http.post();
	
});