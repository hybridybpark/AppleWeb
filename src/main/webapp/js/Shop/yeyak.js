
// angularjs
// 게시판내 목록 출력


mainApp.controller('reservationCtrl',function($scope,$http,$location,$route){
	var date = new Date();
	
<<<<<<< HEAD
	////////////////////////get session///////////////////////////////////////////////////////
	$scope.selectedMenuItem = angular.fromJson(window.sessionStorage.getItem('RESV_TEMP_ITEMS'));
	$scope.shopinfo = angular.fromJson(window.sessionStorage.getItem('RESV_TEMP_SHOP'));
	
	console.log($scope.selectedMenuItem);
	console.log($scope.shopinfo);
	
	///////////////////get total price//////////
	
	$scope.getTotalPrice = 0;
	for(var i=0;i<$scope.selectedMenuItem.length;i++){
		$scope.getTotalPrice += $scope.selectedMenuItem[i].Mprice; 
	}
	
	///////////////////people//////////////////
	
	$scope.people = [1,2,3,4];
	$scope.human = $scope.people[0];
	
	$scope.humanChange = function(h) {
		$scope.human = h;		
	}
	
	///////////////////time///////////////////
	$scope.times = [];	
	for(var i=0;i<24;i++){
		$scope.times.push(i+":00");
		$scope.times.push(i+":30");
	}
	$scope.time = $scope.times[0];
	
	$scope.timeChange = function(t) {
		$scope.time = t;
	}
	
	
	////////////////////date///////////////////
	
	$scope.years = [];
    for(var i=2000;i<2100;i++){
    	$scope.years.push(i);
    }
    
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
//		alert("click");
//		$scope.month = $scope.months[index];
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
	
	///////////////////////input reservation/////////////////////
	$scope.resvClick = function() {
		$scope.res = {
			name:$scope.order.name,
			phone:$scope.order.phone,
			sname:$scope.shopinfo.shopname,
			bnumber:$scope.shopinfo.businessnumber,
			time:$scope.time,
			date:$scope.year+"-"+$scope.month+"-"+$scope.day,
			sid:"",
			state:"WAIT",
			people:$scope.human,
			additional:$scope.order.additional
		}		
		console.log($scope.res);
	}
	/////////////////////cancel////////////////////////////
	$scope.cancelClick = function() {
		$location.path("/shopinfo");
	};
=======
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
//			alert("click");
//			$scope.month = $scope.months[index];
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

>>>>>>> 082762dc034cecf75ca67ffa44678781e434dab4
});


