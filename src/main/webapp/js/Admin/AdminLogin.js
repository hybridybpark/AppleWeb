/**
 * 
 */


var adminApp = angular.module('adminApp',[]);

adminApp.controller('adminlogin', function($scope, $http, $location) {		
		$scope.adminlogin = {adminid:"",adminpassword:""};
		
		$scope.doSubmit = function() {
			
			if($scope.adminlogin.adminid=="") {
				alert("아이디를 입력하세요");
				return;
			}
			if($scope.adminlogin.adminpassword=="") {
				alert("비밀번호를 입력하세요");
				return;
			}
			var result = $http.post("http://localhost:8080/AppleWeb/Apple/admin/login",$scope.adminlogin);
			result.success(function(result,status,headers,config) {
				alert(result.status);
				alert(result.statusText);
				if(result.status){
					window.location = "http://localhost:8080/AppleWeb/Apple/admin";
					location.replace(location);
//					$location.path("http://localhost:8080/AppleWeb/Apple/admin");
				}else{
					alert(result.statusText);
				}
//				alert(status);
//				alert(headers);
//				alert(config);
//				if(data){
//					window.location = "http://localhost:8080/AppleWeb/Apple/admin";
//					location.replace(location);
//				}else{
//					alert(data);
//				}
			});
//			alert($scope.adminlogin.id);
//			alert($scope.adminlogin.pw);
//			window.location = "http://localhost:8080/AppleWeb/Apple/admin";
//			location.replace(location);
		};	
	});