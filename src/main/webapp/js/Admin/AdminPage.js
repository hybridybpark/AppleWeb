/**
 * 
 */
var adminApp = angular.module('adminApp',[]);
adminApp.controller('adminCtrl',function($scope,$http,$location){
	$scope.btabs = [
	                {name:'가입요청',type:'active',url:'/AppleWeb/Apple/admin/adminpage'},
	                {name:'입점요청',type:'',url:'/AppleWeb/Apple/admin/neighbor'},
	                {name:'회원목록',type:'',url:'/AppleWeb/Apple/admin/member'}
	                ];
	
	$scope.url = $scope.btabs[0].url;
//	$scope.pagename = $scope.btabs[0].name;
	$scope.btabClick = function(index) {
		//alert(index);
		for(var i=0;i<3;i++){
			if(i==index){
				$scope.btabs[i].type="active";
				$scope.url = $scope.btabs[i].url;
//				$scope.pagename = $scope.btabs[i].name;
			}else{
				$scope.btabs[i].type="";
			}
		}
		
	}
	
    $scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
	
	$http.get("http://localhost:8080/AppleWeb/Apple/admin/list.json").success(function (data) {
		$scope.names2 = data;
		});
	
	$http.get("http://localhost:8080/AppleWeb/Apple/chain/list.json").success(function (data) {
		$scope.names3 = data;
		});
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
$(document).ready(function(){
		$("#p1").mousedown(function(){
	        $("#p1").attr("class","active");
	        $("#p1").siblings().attr("class","");
	    });
		$("#p2").mousedown(function(){
	        $("#p2").attr("class","active");
	        $("#p2").siblings().attr("class","");
	    });
		$("#p3").mousedown(function(){
	        $("#p3").attr("class","active");
	        $("#p3").siblings().attr("class","");
	    });
		$("#p4").mousedown(function(){
	        $("#p4").attr("class","active");
	        $("#p4").siblings().attr("class","");
	    });
		$("#p5").mousedown(function(){
	        $("#p5").attr("class","active");
	        $("#p5").siblings().attr("class","");
	    });
});