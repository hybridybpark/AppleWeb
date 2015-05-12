/**
 * 
 */

mainApp.controller('shopinfoCtrl',function($scope,$http,$location,$cookieStore){	
	$scope.shopname = window.sessionStorage.getItem('SHOPNAME');
	$scope.businessnumber = window.sessionStorage.getItem('SHOPBUSINESSNUMBER');
	
	$scope.stabs = [
	                {name:'정보',type:'active',url:'/AppleWeb/Apple/shopinfo/info'},
	                {name:'메뉴',type:'',url:'/AppleWeb/Apple/shopinfo/menu'},
	                {name:'리뷰',type:'',url:'/AppleWeb/Apple/shopinfo/review'}	                
	                ];
	
	$scope.url = $scope.stabs[0].url;
	
	$scope.stabClick = function(index) {
		//alert(index);
		for(var i=0;i<4;i++){
			if(i==index){
				$scope.stabs[i].type="active";
				$scope.url = $scope.stabs[i].url;
			}else{
				$scope.stabs[i].type="";
			}
		}
		
	};	
	
	
});
