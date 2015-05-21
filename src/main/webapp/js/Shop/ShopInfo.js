/**
 * 
 */
mainApp.controller('shopinfoCtrl',function($scope,$http,$location,GeoCoder){	
//	$scope.shopname = window.sessionStorage.getItem('SHOPNAME');
	$scope.businessnumber = window.sessionStorage.getItem('SHOPBUSINESSNUMBER');
	$scope.chainname = window.sessionStorage.getItem('CHAINNAME');
	$scope.stabs = [
	                {name:'정보',type:'active',url:'/AppleWeb/Apple/shopinfo/info'},
	                {name:'메뉴',type:'',url:'/AppleWeb/Apple/shopinfo/menu'},
	                {name:'리뷰',type:'',url:'/AppleWeb/Apple/shopinfo/review'}	                
	                ];
	
	$scope.url = $scope.stabs[0].url;
	
	$scope.stabClick = function(index) {
		//alert(index);
		for(var i=0;i<3;i++){
			if(i==index){
				$scope.stabs[i].type="active";
				$scope.url = $scope.stabs[i].url;
				if(i==0){
					
				}else if(i==1){
					
				}else{
					
				}
			}else{
				$scope.stabs[i].type="";
			}
		}
		
	};	
	/////////////////////map initial/////////////////////

	
	$scope.mapLoc = {k:"",d:""};
	
	$scope.findGeo = function(text) {
		var geo = GeoCoder.geocode({
			address : text
		});
		
		geo.then(function(result) {
//			console.log(result[0]);
//			console.log(result[0].geometry);
//			console.log(result[0].geometry.location);
			console.log(result[0].geometry.location.A);
			console.log(result[0].geometry.location.F);
			
			$scope.mapLoc.k=result[0].geometry.location.A;
			$scope.mapLoc.d=result[0].geometry.location.F;			
		});
	}
	
//
	/////////////////get chain/////////////////
//	$scope.chainname="스타벅스";
	
	$scope.shopinfo={businessnumber:"",shopname:"",shopaddress:"",shopphone:"",shopcategory:"",shopinfo:"",shopchainname:"",shopmark:"",shopimage:""};	
	$scope.selectedShopName;
	var result = $http.post("http://localhost:8080/AppleWeb/Apple/shopinfo",$scope.chainname);
	result.success(function(result,status,headers,config) {
//		alert(result);
		$scope.titleimage = result.chain.titleimage;
		$scope.chainDesc = result.chain.desc;
//		alert(result.chain.titleimage);
		$http.get("http://localhost:8080/AppleWeb/Apple/chain/list/"+$scope.chainname)
		.success(function(response) {
//			console.log(response);
			$scope.chainShops = response;
//			$scope.shopname = $scope.chainShops[0].shopname;
			$scope.shopinfo = $scope.chainShops[0];
			$scope.findGeo($scope.chainShops[0].shopaddress);
			console.log($scope.shopinfo);
			$scope.selectedShopName = $scope.shopinfo.shopname;
		});		
	});
	
	$scope.chainDropdownClick = function(index) {
//		alert(index);
//		alert($scope.chainShops[index].shopname);
//		$scope.shopname = $scope.chainShops[index].shopname;
		$scope.shopinfo = $scope.chainShops[index];
		$scope.findGeo($scope.chainShops[index].shopaddress);
		$scope.selectedShopName = $scope.shopinfo.shopname;
		$scope.stabClick(0);
	}
//	console.log($scope.shopinfo);
	//////////////////info page//////////////////
//	alert($scope.chainShops);
	
	
	
	
});
