
// angularjs
businessApp.controller('inquiryCtrl',function($scope,$http,$location){	
	
	$scope.inquiry = [1,2,3,4,5,6,7,8];
	
	$scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
	
});

