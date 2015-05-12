
// angularjs


var myApp = angular.module('myApp',[]);

myApp.controller('businessCtrl',function($scope,$http,$location){	
	
	$scope.reservation = [1,2,3,4,5,6,7,8];
	
	$scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
	
});

function changeListener() {
	//alert(this.value);
	var d = new Date(year.value,month.value ,1);
	d.setDate(d.getDate()-1);		
	var options="";
	for(var i=0; i<d.getDate();i++){
		options += "<option>"+(i+1)+" 일</option> \n";
	}
	//alert(d);
	dateS.innerHTML = options;
};
window.onload = function() {
	var year = document.querySelector("select[name=year]");
	var month = document.querySelector("select[name=month]");
	var date = document.querySelector("select[name=date]");
	
	year.onchange = changeListener;
	month.onchange = changeListener;
};
