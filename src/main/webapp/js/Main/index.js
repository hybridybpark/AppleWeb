/**
 * 
 */
var mainApp = angular.module('mainApp',["ngRoute","ngCookies",'ui.bootstrap','ngMap','uiGmapgoogle-maps']);

mainApp.config(function($routeProvider) {

    $routeProvider
        // home page
        .when('/', {
        	templateUrl: '/AppleWeb/Apple/body',
            controller: 'indexController'
        })

        // grid page
        .when('/chain', {
            templateUrl: '/AppleWeb/Apple/chain',
            controller: 'chainCtrl'
        })
        
        .when('/join', {
            templateUrl: '/AppleWeb/Apple/join',
            controller: 'joinCtrl'
        })
        
        .when('/login', {
            templateUrl: '/AppleWeb/Apple/login',
            controller: 'loginCtrl'
        }) 
        .when('/qna', {
            templateUrl: '/AppleWeb/Apple/qnapage',
            controller: 'qnaCtrl'
        })
        .when('/qna/write', {
            templateUrl: '/AppleWeb/Apple/qna/write',
            controller: 'qnaCtrl'
        }) 
        .when('/business', {
            templateUrl: '/AppleWeb/Apple/business',
            controller: 'businessCtrl'
        })        
         .when('/shopinfo', {
            templateUrl: '/AppleWeb/Apple/shopinfo',
            controller: 'shopinfoCtrl'
        })  
	 	// otherwise page
    	.otherwise({
    		redirectTo: '/'
    	});

});



mainApp.controller('indexController',function($scope,$http,$location,$cookies,$rootScope,$templateCache,$window){	//	
	
	//////////////paging//////////////////
	  $scope.totalItems = 64;
	  $scope.currentPage = 1;

	  $scope.setPage = function (pageNo) {
	    $scope.currentPage = pageNo;
	  };

	  $scope.pageChanged = function() {
	    $log.log('Page changed to: ' + $scope.currentPage);
	  };

	  $scope.maxSize = 9;	  
	
	///////////////////////////////////////
	
	
	$scope.memberID="";
	$scope.loginshow=false;
	$scope.rightView=true;
	
//	$rootScope.$on('$routeChangeStart', function(event, next, current) {
//		if (typeof current != 'undefined') {
//    		$templateCache.removeAll();
//       		console.log("current.templateUrl=" + current.templateUrl);
//		}
//	});

	
//	alert($.cookie('SITE'));
	$scope.otherClick = function(pagename) {		
		
		//$scope.otherUrl="/AppleWeb/Apple/"+pagename;
		//$scope.url1="/AppleWeb/Apple/"+pagename;
		$location.path("/"+pagename);
		$scope.rightView=false;
//		$location.replace();
//		window.location.path("/AppleWeb/Apple/"+pagename);
//		location.replace();
//		$scope.url1 = "/AppleWeb/Apple/"+pagename;
		
	};
	
//	if($cookies.pagecount){
//		
//	}else{
//		$scope.otherClick($.cookie('SITE'));
//		$cookies.pagecount=0;
//	}
	
	
	if(window.sessionStorage){ 		
 		if(window.sessionStorage.getItem('MEMBERID')){ 			
 			$scope.memberID = window.sessionStorage.getItem('MEMBERID');
 			$scope.loginshow=true; 			
 		}else{
			
 		} 		
 	}else{
 		alert("wrong");
 	}
	
	$scope.logout = function() {
		$scope.memberID="";
		$scope.loginshow=false;
		window.sessionStorage.setItem('MEMBERID',"");
		alert("로그아웃 되었습니다.");
		$location.path("/asd");
	}
	
	$scope.url1 = "/AppleWeb/Apple/body"
//	
	$scope.url2 = "/AppleWeb/Apple/view/ALL";	
	
	$http.get("/AppleWeb/Apple/list/종합")
	.success(function (data) {
		$scope.shops = data;
		$scope.totalItems = data.length;
//		alert($scope.totalItems);
//		alert($scope.shops[0].shopmark);
		});	
	
	function getList(text) {
		$http.get("/AppleWeb/Apple/list/"+text)
		.success(function (data) {
			$scope.shops = data;
			$scope.totalItems = data.length;
			});	
	}	
	
	/////////////////////////////imageclick//////////////////////////
	
	$scope.imageClick = function(index) {
		
		//alert(index);
		window.sessionStorage.setItem('CHAINNAME',$scope.shops[index].name);
		$location.path("/shopinfo");
		
//		$scope.tempChain = $scope.shops[index].shopchainname;				
//		console.log($scope.tempChain);
//		if($scope.tempChain=="NONE"){			
//			window.sessionStorage.setItem('CHAINNAME',$scope.tempChain);
//			//$scope.url1 = "/AppleWeb/Apple/chain";
//			$location.path("/shopinfo");
//			
//		}else if($scope.tempChain=='undefined'){
//			
//		}else{			
//			window.sessionStorage.setItem('CHAINNAME',$scope.tempChain);
//			//$scope.url1 = "/AppleWeb/Apple/chain";
//			$location.path("/chain");
//		}
	};
	
	/////////////////////////////////////tabs/////////////////////////////////
	
	$scope.tabs = tabs = [
	{num:0,name:'ALL',type:'',korean: '종합'},
	{num:1,name:'CAFE',type:'',korean: '까페'},
	{num:2,name:'KOREANFOOD',type:'',korean: '한식'},
	{num:3,name:'CHINESEFOOD',type:'',korean: '중식'},
	{num:4,name:'WESTERNFOOD',type:'',korean: '양식'},
	{num:5,name:'JAPANESEFOOD',type:'',korean: '일식'},
	{num:6,name:'FLOURFOOD',type:'',korean: '분식'}];	
	
	$scope.tabClick = function(index) {		
		for(var i=0;i<7;i++){
			if(i==index){
				tabs[i].type = "active";
			}else{
				tabs[i].type = "";
			}
		}		
//			$scope.url2 = tabs[index].address;
			
			getList(tabs[index].korean);		
			
				
	};
//	
//	
//	
	
   $scope.myVar = -1;
   $scope.toggle = function(index) {
   	if($scope.myVar != index){
       	$scope.myVar = index;
   	}else{
   		$scope.myVar = -1;		
   	}
   };
   
   /////////////////////////////brand////////////////
   
   $scope.brandClick = function() {
	   //alert("BRAND");
	   $location.path("/");
	   $scope.rightView=false;
	   $window.location.reload();
   };
	
   $scope.cancelClick = function() {
	   alert("cancel");
//		$scope.$apply(function() { $location.path("http://localhost:8080/AppleWeb/views/start.jsp"); });		
//		location.replace("http://localhost:8080/AppleWeb/views/start.jsp");
	};
	
	
	///////////////////search/////////////
	
	$scope.goSearch = function() {
//		alert($scope.searchText);
		$http.get("/AppleWeb/Apple/search/"+$scope.searchText)
		.success(function (data) {
			$scope.shops = data;
			$scope.totalItems = data.length;
			});	
		$scope.categoryName = "SearchResult";
		$scope.categorySmallName = "검색결과";
	};
	
	////////////////////////////////////////
	
	/////////////////reservation/////////////////
	
//	$cookies.resvName = "test";
	
	if($cookies.resvName){
		console.log("true");
		$scope.reservationTime = $cookies.resvTime;
		$scope.reservationName = $cookies.resvName;
		$scope.reservationShop = $cookies.resvShop;
		$scope.rightView = true;
	}else{
		console.log("false");
		$scope.rightView = false;
	}
	
});