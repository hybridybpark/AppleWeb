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
		
		$scope.login = {loginid:"",loginpassword:""};
		
		$scope.doSubmit = function() {
			
			if($scope.login.loginid=="") {
				alert("아이디를 입력하세요");
				return;
			}
			if($scope.login.loginpassword=="") {
				alert("비밀번호를 입력하세요");
				return;
			}
			var result = $http.post("http://localhost:8080/AppleWeb/Apple/login",$scope.login);
			result.success(function(result,status,headers,config) {
				alert(result.status);
				alert(result.statusText);
				if(result.status){
					window.location = "http://localhost:8080/AppleWeb/Apple/";
					location.replace(location);					
				}else{
					alert(result.statusText);
				}
			});
		};	
	});