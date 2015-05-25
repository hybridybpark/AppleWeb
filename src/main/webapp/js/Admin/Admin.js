/**
 * 
 */


var adminApp = angular.module('adminApp',["ngRoute",'ui.bootstrap']);

adminApp.config(function($routeProvider) {

    $routeProvider
        // home page
        .when('/', {
        	templateUrl: '/AppleWeb/Apple/admin/login',
            controller: 'adminloginCtrl'
        })

        // grid page
        .when('/adminpage', {
            templateUrl: '/AppleWeb/Apple/admin/adminpage',
            controller: 'adminpageCtrl'
        })
        
        .when('/neighbor', {
            templateUrl: '/AppleWeb/Apple/admin/neighbor',
            controller: 'neighborCtrl'
        }) 
        .when('/member', {
            templateUrl: '/AppleWeb/Apple/admin/member',
            controller: 'memberCtrl'
        }) 
        .when('/qna', {
            templateUrl: '/AppleWeb/Apple/admin/qna',
            controller: 'qnaCtrl'
        }) 
        
	 	// otherwise page
    	.otherwise({
    		redirectTo: '/'
    	});

});

adminApp.controller('adminCtrl',function($scope,$http,$location,$window){
	
//	$scope.memberID="";
//	$scope.loginshow=false;
//	
	$scope.showTabs=false;
	
	if(window.sessionStorage){ 		
 		if(window.sessionStorage.getItem('ADMINID')){ 			
// 			$scope.memberID = window.sessionStorage.getItem('ADMINID');
 			$scope.showTabs=true;
 			$location.path("/adminpage");
 		}else{
 			$location.path("/");			
 		} 		
 	}else{
 		alert("wrong");
 	}
//	
	$scope.logout = function() {
		$scope.memberID="";
		$scope.loginshow=false;
		window.sessionStorage.setItem('ADMINID',"");
		alert("로그아웃 되었습니다.");
		$window.location.reload();
		$location.path("/");
		
	}
	
	
	$scope.btabs = [
	                {name:'가입요청',type:'active',url:'/adminpage'},
	                {name:'입점요청',type:'',url:'/neighbor'},
	                {name:'회원관리',type:'',url:'/member'},
	                {name:'Q&A',type:'',url:'/qna'}
	                ];
	
	$scope.url = $scope.btabs[0].url;
//	$scope.pagename = $scope.btabs[0].name;
	$scope.btabClick = function(index) {
		//alert(index);
		for(var i=0;i<4;i++){
			if(i==index){
				$scope.btabs[i].type="active";
//				$scope.url = $scope.btabs[i].url;
//				$scope.pagename = $scope.btabs[i].name;
				$location.path($scope.btabs[i].url);
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
});