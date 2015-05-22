/**
 * 
 */



	mainApp.controller('loginCtrl', function($scope, $http, $location) {

		
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
			$location.path("/");
		};
		
		$scope.login = {businessnumber:"",password:""};
		
		$scope.doSubmit = function() {
			
			if($scope.login.businessnumber=="") {
				alert("사업자 번호를 입력하세요");
				return;
			}
			if($scope.login.password=="") {
				alert("비밀번호를 입력하세요");
				return;
			}
			var result = $http.post("/AppleWeb/Apple/login",$scope.login);
			result.success(function(result,status,headers,config) {
//				alert(result.status);
//				alert(result.statusText);
				if(result.status){
					window.sessionStorage.setItem('MEMBERID',$scope.login.businessnumber);
					window.location = "/AppleWeb/Apple/";
					location.replace(location);					
				}else{
					alert(result.statusText);
					$scope.login.businessnumber="";
					$scope.login.password="";
				}
			});
		};	
	});