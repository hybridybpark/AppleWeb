
// angularjs
// 게시판내 목록 출력


mainApp.controller('qnaCtrl',function($scope,$http,$location,$route){	
	
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

});


