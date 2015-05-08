/**
 * 
 */

mainApp.controller('chainCtrl',function($scope,$http,$location,$cookieStore){	
	$scope.url1 = 'http://placehold.it/100&text=지점';	
	$scope.chainname = "CAFEBENE";
//	alert($scope.session.get('CHAINNAME'));

 	if(window.sessionStorage){ 		
 		if(window.sessionStorage.length>0){
 			$scope.chainname = window.sessionStorage.getItem('CHAINNAME');	
 		}else{
			
 		} 		
 	}else{
 		alert("wrong");
 	}
	
// 	$http.get("../Apple/chain/list.json")
// 	.success(function (data) {
// 		$scope.chainlist = data;		
// 		});
	
	$http.get("/AppleWeb/Apple/chain/list/"+$scope.chainname)
	.success(function (data) {
		$scope.chainlist = data;
		alert(date);
		});
	
 	$http.get("/AppleWeb/Apple/chain/chain/"+$scope.chainname)
 	.success(function (data) {
 		$scope.chain = data;
 		alert(date);
 		});
	
	
	//scope.$apply(function() { $location.path("/route"); });	
	$scope.cancelClick = function() {		
		//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
		window.location="/AppleWeb/Apple/";
	};
});