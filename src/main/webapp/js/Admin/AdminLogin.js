/**
 * 
 */


var adminApp = angular.module('adminApp',[]);
adminApp.controller('adminlogin', function($scope, $http, $location) {		
		$scope.adminlogin = {id:"",pw:""};
		
		$scope.doSubmit = function() {
			//alert($scope.adminlogin.id);
			if($scope.adminlogin.id=="") {
				alert("아이디를 입력하세요");
				return;
			}
			if($scope.adminlogin.pw=="") {
				alert("비밀번호를 입력하세요");
				return;
			}else {
				alert("아이디와 비밀번호를 다시 입력하세요");
				return;
			}
			
			//boardFrm.submit();
			alert($scope.adminlogin.id);
			alert($scope.adminlogin.pw);
			window.location = "http://localhost:8080/AppleWeb/Apple/admin";
			location.replace(location);
		};	
	});