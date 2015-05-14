/**
 * 
 */
var mainApp = angular.module('mainApp',[]);
mainApp.controller('businessCtrl',function($scope,$http,$location){
	$scope.btabs = [
	                {name:'예약목록',type:'active',url:'/AppleWeb/Apple/business/reservation'},
	                {name:'상점목록',type:'',url:'/AppleWeb/Apple/business/businessshop'},
	                {name:'상점등록',type:'',url:'/AppleWeb/Apple/business/registration'},
	                {name:'문의',type:'',url:'/AppleWeb/Apple/business/inquiry'}
	                ];
	
	$scope.url = $scope.btabs[0].url;
	
	$scope.btabClick = function(index) {
		//alert(index);
		for(var i=0;i<4;i++){
			if(i==index){
				$scope.btabs[i].type="active";
				$scope.url = $scope.btabs[i].url;
			}else{
				$scope.btabs[i].type="";
			}
		}
		
	}
	
	
});