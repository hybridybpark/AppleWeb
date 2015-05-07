/**
 * 
 */
var mainApp = angular.module('MainApp',["ngRoute"]);

//mainApp.constant("baseUrl","http://localhost:8080/AppleWeb/Apple/");
//
//mainApp.config(function($routeProvider,$locationProvider) {
//	
//	$locationProvider.html5Mode(true);
//	
//	$routeProvider.when("/",{});
//});


mainApp.controller('indexController',function($scope,$http,$location){	//	
//	
	$scope.url2 = "/AppleWeb/Apple/view/ALL";
	
	$scope.otherUrl="";	
	
	$scope.mainShow=true;
	
	$scope.otherShow=false;
	
	$scope.otherClick = function(pagename) {		
		
		$scope.otherUrl="/AppleWeb/Apple/"+pagename;		
		
		$scope.otherShow=true;
		$scope.mainShow=false;
	};
	
	$scope.imageClick = function(index) {
		alert(index+"");		
		$scope.url2 = "ChainList.jsp";
	};
	
	$scope.goMain = function() {
		//$location.path("AppleWeb/Apple/");
		$scope.otherShow=false;
		$scope.mainShow=true;
	};
	$http.get("/AppleWeb/Apple/list/ALL")
	.success(function (data) {
		$scope.shops = data;		
		});	
	
	$scope.tabs = tabs = [
	{num:0,name:'ALL',type:'',address:'/AppleWeb/Apple/view/ALL',image:'/AppleWeb/Images/Main/category/category_all.jpg'},
	{num:1,name:'CAFE',type:'',address:'/AppleWeb/Apple/view/CAFE',image:'/AppleWeb/Images/Main/category/category_cafe1.jpg'},
	{num:2,name:'한식',type:'',address:'/AppleWeb/Apple/view/KOREANFOOD',image:'/AppleWeb/Images/Main/category/category_korean.jpg'},
	{num:3,name:'중식',type:'',address:'/AppleWeb/Apple/view/CHINESEFOOD',image:'/AppleWeb/Images/Main/category/category_china.jpg'},
	{num:4,name:'양식',type:'',address:'/AppleWeb/Apple/view/WESTERNFOOD',image:'/AppleWeb/Images/Main/category/category_american.jpg'},
	{num:5,name:'일식',type:'',address:'/AppleWeb/Apple/view/JAPANESEFOOD',image:'/AppleWeb/Images/Main/category/category_japan.jpg'},
	{num:6,name:'분식',type:'',address:'/AppleWeb/Apple/view/FLOURFOOD',image:'/AppleWeb/Images/Main/category/category_sanck.jpg'},
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
			$scope.url2 = "QnA.jsp";
		}else{
			
		}
		$scope.url2 = tabs[index].address;		
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
	
   $scope.cancelClick = function() {
	   alert("cancel");
//		$scope.$apply(function() { $location.path("http://localhost:8080/AppleWeb/views/start.jsp"); });		
//		location.replace("http://localhost:8080/AppleWeb/views/start.jsp");
	};
});