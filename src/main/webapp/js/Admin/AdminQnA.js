/**
 * 
 */

adminApp.controller('qnaCtrl',function($scope,$http,$location){	
	
	// 삭제 password name 선언
	//$scope.inputpassword="w";
	
	$http.get("/AppleWeb/Apple/qna/list.json").success(function(data) {
		$scope.list = data;
	});
	
	// 내용확인 및 덧글
    $scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
    
    // 삭제 버튼 
	$scope.deleteAction = function(index) {
		$scope.title = $scope.list[index].title;
		//$scope.password = $scope.list[index].password;
		//if($scope.password==$scope.inputpassword){
			$http.post("/AppleWeb/Apple/QnA.delete2/"+$scope.title+"."+$scope.inputpassword).success(function() {
				location.replace("/AppleWeb/Apple/qna");
			});
		//}else{
			//alert("worng password");
			//alert($scope.inputpassword+"");
		//}
	};
	
	$scope.doSubmit = function() {
		 alert("저장하시겠습니까?");
		if(boardFrm.pname.value == "") {
			alert("이름을 입력하세요");
			return;
		}
		if(boardFrm.phone.value == "") {
			alert("전화번호를 입력하세요");
			return;
		}
		if(boardFrm.title.value == "") {
			alert("제목을 입력해주세요");
			return;
		}
		if(boardFrm.content.value == "") {
			alert("내용을 입력하세요");
			return;
		}
		if(boardFrm.password.value == "") {
			alert("비밀번호를 입력하세요");
			return;
		}
		if(boardFrm.captcha.value == "") {
			alert("보안문자를 입력하세요");
			return;
		}
		if(boardFrm.privacy_agreement_radio.value == "Y") {
			alert("약관에 동의해 주세요");
			return;
		}
		
		boardFrm.submit();
	};
	
	$scope.goWrite = function() {
		$location.path("/qna/write");
	};
	
});
//var myApp = angular.module('myApp',[]);
//
//myApp.controller('myController',function($scope,$http){	
//	
//	$http.get("http://localhost:8080/AppleWeb/Apple/admin/list.json").success(function (data) {
//		$scope.names2 = data.records;
//		});
//	
//	
//	
//	$scope.itemClick = function(index) {
//		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
//										      + " Country : "+$scope.names[index].Country;
//		alert($scope.names[index].Name+" clicked");
//		alert($scope.message);
//	};
//    $scope.myVar = -1;
//    $scope.toggle = function(index) {
//    	if($scope.myVar != index){
//        	$scope.myVar = index;
//    	}else{
//    		$scope.myVar = -1;		
//    	}
//    };
//
//});
//	
$(document).ready(function(){
		$("#p1").mousedown(function(){
	        $("#p1").attr("class","active");
	        $("#p1").siblings().attr("class","");
	    });
		$("#p2").mousedown(function(){
	        $("#p2").attr("class","active");
	        $("#p2").siblings().attr("class","");
	    });
		$("#p3").mousedown(function(){
	        $("#p3").attr("class","active");
	        $("#p3").siblings().attr("class","");
	    });
		$("#p4").mousedown(function(){
	        $("#p4").attr("class","active");
	        $("#p4").siblings().attr("class","");
	    });
		$("#p5").mousedown(function(){
	        $("#p5").attr("class","active");
	        $("#p5").siblings().attr("class","");
	    });
});