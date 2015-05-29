/**
 * 
 */
mainApp.controller('shopinfoCtrl',function($scope,$http,$location,GeoCoder,$window,$route){	
//	$scope.shopname = window.sessionStorage.getItem('SHOPNAME');
	$scope.businessnumber = window.sessionStorage.getItem('SHOPBUSINESSNUMBER');
	$scope.chainname = window.sessionStorage.getItem('CHAINNAME');
	$scope.stabs = [
	                {name:'정보',type:'active',url:'/AppleWeb/Apple/shopinfo/info'},
	                {name:'메뉴',type:'',url:'/AppleWeb/Apple/shopinfo/menu'},
	                {name:'리뷰',type:'',url:'/AppleWeb/Apple/shopinfo/review'}	                
	                ];
	
	$scope.shopinfo={businessnumber:"",shopname:"",shopaddress:"",shopphone:"",shopcategory:"",shopinfo:"",shopchainname:"",shopmark:"",shopimage:""};
	
	$scope.url = $scope.stabs[0].url;
	
	$scope.stabClick = function(index) {
		//alert(index);
		for(var i=0;i<3;i++){
			if(i==index){
				$scope.stabs[i].type="active";
				$scope.url = $scope.stabs[i].url;
				if(i==0){
					
				}else if(i==1){
					$scope.shopname = window.sessionStorage.getItem('SHOPNAME');
					$scope.businessnumber = window.sessionStorage.getItem('SHOPBUSINESSNUMBER');
					
					$scope.test = {};
					
										
					
					$http.get("/AppleWeb/Apple/Menucategory/list.json").success(function(data) {
						$scope.category = data;
					});
					
					$http.get("/AppleWeb/Apple/Menu/list.json").success(function(data) {
						$scope.menulist = data;
					});
					
					////////////////////accordion///////////////////////////
					
					$scope.accordionHeadingClick = function(index) {
						console.log(index);
						$scope.openValue = index;
					}
					
					$scope.accordionHeadingClick(0);
					////////////////////inventory////////////////////////////
					$scope.selectedMenuItem = [];					
					
					$scope.inventoryText="메뉴목록";
					
					$scope.menuItemClick = function(sid) {
						console.log("sid = "+sid);
						
						for(var i=0;i<$scope.menulist.length;i++){
							
							if(sid==$scope.menulist[i].SID){								
								console.log($scope.menulist[i]);
																
								$scope.selectedMenuItem.push($scope.menulist[i]);
								
							}
						}
						console.log($scope.selectedMenuItem);
					};
					$scope.deleteInventoryItem = function(index) {
						
						$scope.selectedMenuItem.splice(index,1);
												
					};
					$scope.goReservation = function() {
						window.sessionStorage.setItem('RESV_TEMP_ITEMS',angular.toJson($scope.selectedMenuItem));
						window.sessionStorage.setItem('RESV_TEMP_SHOP',angular.toJson($scope.shopinfo));
						$location.path("/reservation");
						
					};
					$scope.clearInventory = function() {
						$scope.selectedMenuItem=[];
						console.log($scope.selectedMenuItem);
					};
					$scope.allPriceInventory = function() {
						var result=0;
						for(var i = 0; i < $scope.selectedMenuItem.length; i++){
							result += $scope.selectedMenuItem[i].Mprice;
						}
						return result;
					}
				}else{
					$http.get("/AppleWeb/Apple/shopinfo/review_list/"+$scope.shopinfo.businessnumber+","+ $scope.shopinfo.shopname)
					.success(function(response) {
						$scope.reviewList = response;
						console.log($scope.reviewList);
					});
				}
			}else{
				$scope.stabs[i].type="";
			}
		}
		
	};	
	
	///////////////reservation page//////////////////////
	
	
	
	
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
	
		
	$scope.selectedShopName;
	var result = $http.post("/AppleWeb/Apple/shopinfo",$scope.chainname);
	result.success(function(result,status,headers,config) {
//		alert(result);
		$scope.titleimage = result.chain.titleimage;
		$scope.chainDesc = result.chain.desc;
//		alert(result.chain.titleimage);
		$http.get("/AppleWeb/Apple/chain/list/"+$scope.chainname)
		.success(function(response) {
//			console.log(response);
			$scope.chainShops = response;
//			$scope.shopname = $scope.chainShops[0].shopname;
			$scope.shopinfo = $scope.chainShops[0];
			$scope.findGeo($scope.chainShops[0].shopaddress);
			console.log($scope.shopinfo);
			$scope.selectedShopName = $scope.shopinfo.shopname;
		}).error(function(error) {
			console.log(error);
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
	
	///////////////////review page//////////////////
	
	
	//////////////////input review////////////////////
	$scope.inputReviewValues = {
			writername:"",
			writerphone:"",
			postcontent:"",
			mark:"",
			shopname:"",
			businessnumber:""			
	}	    
	
      
	$scope.inputReview = function() {
		if($scope.inputReviewValues.writername==""){
			alert("이름을 입력해 주세요");
		}else if($scope.inputReviewValues.writerphone==""){
			alert("전화번호를 입력해 주세요");
		}else if($scope.inputReviewValues.postcontent==""){
			alert("내용을 써주세요");
		}else if($scope.inputReviewValues.mark==""){
			alert("평점을 선택해 주세요");
		}else{
			$scope.inputReviewValues.shopname = $scope.shopinfo.shopname;
			$scope.inputReviewValues.businessnumber = $scope.shopinfo.businessnumber;
			console.log(angular.toJson($scope.inputReviewValues));
			
			$http.post("/AppleWeb/Apple/shopinfo/review",angular.toJson($scope.inputReviewValues))
			.success(function(result,status,headers,config) {
				console.log(result);
				$location.path("/shopinfo");
				$window.location.reload();
				$scope.stabClick(2);
				
			}).error(function(error) {
				console.log(error);
				alert(error);
			});
			
		}		
	};
	
	
	
});
