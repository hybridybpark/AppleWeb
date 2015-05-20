/**
 * 
 */

mainApp.controller('businessCtrl',function($scope,$http,$location){
//	alert("businessCtrl");
	
	$scope.Binfo = {Bname:"", Baddress:"", Mname:"", Mprice:"", Mdesc:""};
	
	$scope.loginClick = function() {
		
	};
	
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
//				$location.path($scope.btabs[i].url);
				
				
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
				    $http.get("http://localhost:8080/AppleWeb/Apple/reservation/list.json"+"1925618800").success(function(data) {
			    		$scope.reservation = data;
				    });
					
				}else if(i==1){
					
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
		
	}
	$scope.btabClick(0);
//	alert("inquiryCtrl");
	
    
//    alert('registrationCtrl');
	
//	alert('reservationCtrl');
	
//	alert('businessShopCtrl');
});
