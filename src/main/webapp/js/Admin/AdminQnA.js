/**
 * 
 */

adminApp.controller('qnaCtrl',function($scope,$http,$location,$route){	
	
	// 삭제 password name 선언
	//$scope.inputpassword="w";
	
	$http.get("/AppleWeb/Apple/qna/list.json").success(function(data) {
		$scope.list = data;
	});
	
	// 내용확인 및 덧글
    $scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
    
    // 삭제 버튼 
	$scope.replySubmit = function(index) {
		$scope.title = $scope.list[index].title;
		//$scope.password = $scope.list[index].password;
		//if($scope.password==$scope.inputpassword){
//			$http.post("/AppleWeb/Apple/QnA.delete2/"+$scope.title+"."+$scope.inputpassword).success(function() {
//				location.replace("/AppleWeb/Apple/qna");
//			});
		//}else{
			//alert("worng password");
			//alert($scope.inputpassword+"");
		//}
		var result = $http.post("/AppleWeb/Apple/QnA.reply",$scope.list[index]);
		result.success(function(result,status,headers,config) {
			if(result.status){
//				
				$route.reload();
			}else{
				alert(result.statusText);
			}
		});
		result.error(function(error) {
			console.log(error);
		})
	};
	
	
	
});
//var myApp = angular.module('myApp',[]);
//
//myApp.controller('myController',function($scope,$http){	
//	
//	$http.get("http://localhost:8080/AppleWeb/Apple/admin/list.json").success(function (data) {
//		$scope.names2 = data.records;
//		});
//	
//	
//	
//	$scope.itemClick = function(index) {
//		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
//										      + " Country : "+$scope.names[index].Country;
//		alert($scope.names[index].Name+" clicked");
//		alert($scope.message);
//	};
//    $scope.myVar = -1;
//    $scope.toggle = function(index) {
//    	if($scope.myVar != index){
//        	$scope.myVar = index;
//    	}else{
//    		$scope.myVar = -1;		
//    	}
//    };
//
//});
//	
