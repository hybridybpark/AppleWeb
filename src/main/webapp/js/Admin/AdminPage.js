/**
 * 
 */

adminApp.controller('adminpageCtrl',function($scope,$http,$location,$route){	
	$http.get("http://localhost:8080/AppleWeb/Apple/admin/stayList.json").success(function (data) {
		$scope.stayList = data;
		$scope.stayTotalItems = $scope.stayList.length;
		$scope.stayCurrentPage=1;
		});
	
	$scope.adminpageVar = -1;
    $scope.toggle = function(index) {
    	if($scope.adminpageVar != index){
        	$scope.adminpageVar = index;
    	}else{
    		$scope.adminpageVar = -1;		
    	}
    };	
	
	$scope.ARupdateAccount = function(index) {
		var date = new Date();
		console.log(date);
		$scope.stayList[index].adate = date;
		$scope.stayList[index].ADATE = date;
		console.log(angular.toJson($scope.stayList[index]));
		$http.post("/AppleWeb/Apple/admin/adminpage",angular.toJson($scope.stayList[index])).success(function(result) {
			console.log(result);
		}).error(function(error) {
			console.log(error);
		});
		$location.path("/adminpage");
		$route.reload();
	}
	
	$scope.accept = function(index) {
		$scope.stayList[index].CONDITION="ACCEPT";
		$scope.stayList[index].condition="ACCEPT";
		$scope.ARupdateAccount(index);
	}
	$scope.reject = function(index) {
		$scope.stayList[index].CONDITION="REJECT";
		$scope.stayList[index].condition="REJECT";
		$scope.ARupdateAccount(index);
	}
});
