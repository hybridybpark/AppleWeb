/**
 * 
 */

adminApp.controller('memberCtrl',function($scope,$http,$location){	
	$http.get("http://localhost:8080/AppleWeb/Apple/admin/list.json").success(function (data) {
		$scope.memberList = data;
		$scope.memberTotalItems = $scope.memberList.length;
		$scope.memberCurrentPage=1;
		});
	
	
});
