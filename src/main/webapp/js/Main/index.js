/**
 * 
 */
var mainApp = angular.module('mainApp',["ngRoute","ngCookies",'ui.bootstrap']);

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



mainApp.controller('indexController',function($scope,$http,$location,$cookies,$rootScope,$templateCache){	//	
	
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
	
	$rootScope.$on('$routeChangeStart', function(event, next, current) {
		if (typeof current != 'undefined') {
    		$templateCache.removeAll();
       		console.log("current.templateUrl=" + current.templateUrl);
		}
	});

	
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
	
	$http.get("/AppleWeb/Apple/list/ALL")
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
			});	
	}	
	
	$scope.imageClick = function(index) {
		
		//alert(index);
		
		$scope.tempChain = $scope.shops[index].shopchainname;				
		
		if($scope.tempChain=="NONE"){			
			window.sessionStorage.setItem('CHAINNAME',$scope.tempChain);
			//$scope.url1 = "/AppleWeb/Apple/chain";
			$location.path("/shopinfo");
		}else if($scope.tempChain=='undefined'){
			
		}else{			
			window.sessionStorage.setItem('CHAINNAME',$scope.tempChain);
			//$scope.url1 = "/AppleWeb/Apple/chain";
			$location.path("/chain");
		}
	};
	
	$scope.tabs = tabs = [
	{num:0,name:'ALL',type:'',address:'/AppleWeb/Apple/view/ALL',image:'/AppleWeb/Images/Main/category/category_all.jpg'},
	{num:1,name:'CAFE',type:'',address:'/AppleWeb/Apple/view/CAFE',image:'/AppleWeb/Images/Main/category/category_cafe1.jpg'},
	{num:2,name:'KOREANFOOD',type:'',address:'/AppleWeb/Apple/view/KOREANFOOD',image:'/AppleWeb/Images/Main/category/category_korean.jpg'},
	{num:3,name:'CHINESEFOOD',type:'',address:'/AppleWeb/Apple/view/CHINESEFOOD',image:'/AppleWeb/Images/Main/category/category_china.jpg'},
	{num:4,name:'WESTERNFOOD',type:'',address:'/AppleWeb/Apple/view/WESTERNFOOD',image:'/AppleWeb/Images/Main/category/category_american.jpg'},
	{num:5,name:'JAPANESEFOOD',type:'',address:'/AppleWeb/Apple/view/JAPANESEFOOD',image:'/AppleWeb/Images/Main/category/category_japan.jpg'},
	{num:6,name:'FLOURFOOD',type:'',address:'/AppleWeb/Apple/view/FLOURFOOD',image:'/AppleWeb/Images/Main/category/category_sanck.jpg'},
	{num:7,name:'Q&A',type:'',address:'/AppleWeb/Apple/qna',image:'/AppleWeb/Images/Main/category/category_qa.jpg'}];
	
	$scope.tabClick = function(index) {		
		for(var i=0;i<8;i++){
			if(i==index){
				tabs[i].type = "active";
			}else{
				tabs[i].type = "";
			}
		}
		if(index==7){
			$scope.url1 = "/AppleWeb/Apple/qna";
		}else{
			$scope.url2 = tabs[index].address;
			getList(tabs[index].name);
		}
				
	};
//	
//	
//	
	$scope.itemClick = function(index) {
//		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
//										      + " Country : "+$scope.names[index].Country;
////											  + " Date : "+$scope.;
////											  &tc='+new Date().getTime();
//		alert($scope.names[index].Name+" clicked");
//		alert($scope.message);
	};
   $scope.myVar = -1;
   $scope.toggle = function(index) {
   	if($scope.myVar != index){
       	$scope.myVar = index;
   	}else{
   		$scope.myVar = -1;		
   	}
   };
   
   $scope.brandClick = function() {
	   //alert("BRAND");
	   $location.path("/");
	   $scope.rightView=false;
   };
	
   $scope.cancelClick = function() {
	   alert("cancel");
//		$scope.$apply(function() { $location.path("http://localhost:8080/AppleWeb/views/start.jsp"); });		
//		location.replace("http://localhost:8080/AppleWeb/views/start.jsp");
	};
});