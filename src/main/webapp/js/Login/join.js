
/**
 * 
 */


	mainApp.controller('joinCtrl', function($scope, $http, $location) {


// angularjs

		//scope.$apply(function() { $location.path("/route"); });	
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
//			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";
			$location.path("/join");
			$route.reload();
		};
		
		$scope.doSubmit = function() {
			 alert("가입신청 하시겠습니까?");
			
			var result = boardFrm.submit();
			
			alert(result);
			
		};

	});

		
		
	
