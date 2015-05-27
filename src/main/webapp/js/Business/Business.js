/**
 * 
 */


var bsCtrl = mainApp.controller('businessCtrl',function($scope,$http,$location){
	alert("businessCtrl");
});
	

mainApp.controller('businessCtrl',function($scope,$http,$location){
// alert("businessCtrl");
	$scope.Binfo = {Bname:"", Baddress:"", Mname:"", Mprice:"", Mdesc:""};
	
	
	$scope.btabs = [
	                {name:'예약목록',type:'active',url:'/AppleWeb/Apple/business/reservation'},
	                {name:'상점목록',type:'',url:'/AppleWeb/Apple/business/businessshop'},
	                {name:'상점등록',type:'',url:'/AppleWeb/Apple/business/registration'},
	                {name:'문의',type:'',url:'/AppleWeb/Apple/business/inquiry'}
	                ];
	
	$scope.url = $scope.btabs[0].url;
	
	$scope.btabClick = function(index) {
		// alert(index);
		for(var i=0;i<4;i++){
			if(i==index){
				$scope.btabs[i].type="active";
				$scope.url = $scope.btabs[i].url;
// $location.path($scope.btabs[i].url);
				
				
				// 비지니스 예약목록 부분
				if(i==0){
//					$scope.reservation = [1,2,3,4,5,6,7,8];
					
					$scope.myVar = -1;
				    $scope.toggle = function(index) {
				    	if($scope.myVar != index){
				        	$scope.myVar = index;
				    	}else{
				    		$scope.myVar = -1;		
				    	}
				    	
				    };

				    $http.get("/AppleWeb/Apple/reservation/list.json"+"1925618800").success(function(data) {

			    		$scope.reservation = data;
				    });
				    $scope.years = [];
				    for(var i=2000;i<2100;i++){
				    	$scope.years.push(i);
				    }
				    var date = new Date();
				    $scope.year = date.getFullYear();
					$scope.months = [1,2,3,4,5,6,7,8,9,10,11,12];
					$scope.month = (date.getMonth()+1);
					$scope.day = date.getDate();
					$scope.days = [];
					$scope.yearChange = function(y) {
						$scope.year = y;
						console.log($scope.year);
					}
					$scope.dayChange = function(d) {
						$scope.day = d;
						console.log($scope.day);
					}
					$scope.monthChange = function(m) {
//						alert("click");
//						$scope.month = $scope.months[index];
						$scope.month = m;						
						console.log($scope.month);
						
						$scope.days = [];
						if($scope.month==2){
							
							var date1 = new Date($scope.year,1,1);
							var date2 = new Date($scope.year,2,1);
							var interval = date2.getTime() - date1.getTime();
							interval = Math.floor(interval/(1000*60*60*24));
							for(var i=1;i<interval+1;i++){
								$scope.days.push(i);
							}
						}else if($scope.month<=7){
							if($scope.month%2 == 0){
								for(var i=1;i<30+1;i++){
									$scope.days.push(i);
								}
							}else{
								for(var i=1;i<31+1;i++){
									$scope.days.push(i);
								}
							}
						}else{
							if($scope.month%2 == 0){
								for(var i=1;i<31+1;i++){
									$scope.days.push(i);
								}
							}else{
								for(var i=1;i<30+1;i++){
									$scope.days.push(i);
								}
							}
						}
					};
					

					$scope.monthChange($scope.month);

				}else if(i==1){
					$http.get("http://localhost:8080/AppleWeb/Apple/business/numlist.json"+window.sessionStorage.getItem('MEMBERID')).success(function(data) {
						$scope.list = data;
					})
					//상점등록 부분
				}else if(i==2){
					var writeButton = document.createElement('button');
					writeButton.textContent = "Write";
					var wrapDiv = document.createElement('div');
					wrapDiv.style.textAlign = 'center';
					wrapDiv.appendChild(writeButton);
					document.body.appendChild(wrapDiv);

					function onFitSizeOfTextArea()
					{
					    var textArea = event.srcElement;
					    while( textArea.clientHeight < textArea.scrollHeight )
					    {
					        textArea.rows = textArea.rows + 1;
					    }
					    textArea.className = "NoScroll";
					}
					$scope.shopCategorys=["CAFE / 까페","KOREAN FOOD / 한식","CHINA FOOD / 중식","WESTERN FOOD / 양식","JAPAN FOOD / 일식","SNACK FOOD / 분식"];
					$scope.shopCategory = $scope.shopCategorys[0];
					$scope.shopCategoryChange = function(sc) {						
						$scope.shopCategory = sc;
						console.log($scope.shopCategory);
					}
					
					$scope.menuCategorys=["1개","2개","3개","4개","5개"];					
					$scope.menuCategoryChange = function(mc) {
						console.log(mc);
						$scope.menuCategory = mc;
						for(var i=0;i<5;i++){
							if($scope.menuCategorys[i]==$scope.menuCategory){
								$scope.menuCategoryCount = i+1;
								console.log($scope.menuCategoryCount);
							}
						}
					}
					$scope.menuCategoryChange($scope.menuCategorys[0]);
					
					$scope.optionCategorys=["없음","1개","2개","3개","4개","5개"];					
					$scope.optionCategoryChange = function(oc) {
						console.log(oc);
						$scope.optionCategory = oc;
						for(var i=0;i<6;i++){
							if($scope.optionCategorys[i]==$scope.optionCategory){
								$scope.optionCategoryCount = i;
								console.log($scope.optionCategoryCount);
							}
						}
					}
					$scope.optionCategoryChange($scope.optionCategorys[0]);
					
				}else{
					$scope.inquiry = [1,2,3,4,5,6,7,8];
					
					$scope.myVar = -1;
				    $scope.toggle = function(index) {
				    	if($scope.myVar != index){
				        	$scope.myVar = index;
				    	}else{
				    		$scope.myVar = -1;		
				    	}
				    };
				}
			}else{
				$scope.btabs[i].type="";
			}
		}
		
	};
	$scope.btabClick(0);
	
	$scope.loginClick = function() {
		alert("등록하시겠습니까?");
		boardFrm.submit();
	};

	
	$http.get("/AppleWeb/Apple/business/shopinfolist.json").success(function(data) {
		$scope.list = data;
	});

// alert("inquiryCtrl");
	
    
// alert('registrationCtrl');
	
// alert('reservationCtrl');
	
// alert('businessShopCtrl');
});
