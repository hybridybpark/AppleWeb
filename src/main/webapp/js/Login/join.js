
/**
 * 
 */


mainApp.controller('joinCtrl', function($scope, $http, $location) {


// angularjs

		//scope.$apply(function() { $location.path("/route"); });	
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");

//			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";
			$location.path("/");
			$route.reload();
		};
		
		$scope.joindata = {
				BUSINESSNUMBER:"",
				PASSWORD:"",
				EMAIL:"",
				PHONE:"",
				BUSINESSNAME:"",
				EMAILACCEPT:"",
				SMSACCEPT:""
		}
		
		$scope.doSubmit = function() {
			 alert("가입신청 하시겠습니까?");
			 console.log(angular.toJson($scope.joindata));
			 $http.post("/AppleWeb/Apple/join",angular.toJson($scope.joindata)).success(function(result) {
				 console.log(result.statusText);
				$location.path("/");
			}).error(function(error) {
				console.log(error);
			});
			
		};

	});

		
		
	
