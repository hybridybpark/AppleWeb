
/**
 * 
 */


mainApp.controller('joinCtrl', function($scope, $http, $location) {


// angularjs

		//scope.$apply(function() { $location.path("/route"); });	
		$scope.cancelClick = function() {
			//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
<<<<<<< HEAD
//			window.location = "http://localhost:8080/AppleWeb/views/start.jsp";
			$location.path("/join");
			$route.reload();
=======
			window.location = "http://localhost:8080/AppleWeb/Apple/#/";

>>>>>>> 632593a7a8c85127072285beb08760fa6b90bc2e
		};
		
		$scope.doSubmit = function() {
			 alert("가입신청 하시겠습니까?");
			
<<<<<<< HEAD
			var result = boardFrm.submit();
			
			alert(result);
			
=======
			boardFrm.submit();
			
			alert("가입신청이 완료되었습니다.")
>>>>>>> 632593a7a8c85127072285beb08760fa6b90bc2e
		};

	});

		
		
	
