
// angularjs
// 게시판내 목록 출력


mainApp.controller('qnaCtrl',function($scope,$http,$location,$route){	
	
	// 삭제 password name 선언
	//$scope.inputpassword="w";
	$scope.currentPage=1;
	$scope.itemPerPage=10;
	
	if(window.sessionStorage.getItem('ADMINID')){
		$scope.isADMIN = true;
	}
	$http.get("/AppleWeb/Apple/qna/list.json").success(function(data) {
		console.log(data);
		$scope.qnalist = data;
		$scope.qnalist2 = data;
		for(var i=0;i<$scope.qnalist.length;i++){
			$scope.qnalist[i].password = "";
		}
		$scope.totalItems = $scope.qnalist.length;
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
		
		$scope.sid = $scope.qnalist[index].sid;
		$scope.pw = $scope.qnalist[index].password;
//		alert($scope.pw);
		$http.post("/AppleWeb/Apple/QnA.delete2/"+$scope.sid+"."+$scope.pw).success(function(result) {
			console.log(result.statusText);
			$location.path("/qna");
			$route.reload();
		});
	};
	$scope.rewriteAction = function(index) {
		$scope.sid = $scope.qnalist[index].sid;
		$scope.pw = $scope.qnalist[index].password;
//		alert($scope.pw);
		$scope.write = {
				name:"",
				phone:"",
				title:"",
				content:""
		}
		if($scope.pw == $scope.qnalist2[index].password){
			
			
			$scope.write.name = $scope.qnalist[index].name;
			$scope.write.phone = $scope.qnalist[index].phone;
			$scope.write.title = $scope.qnalist[index].title;
			$scope.write.content = $scope.qnalist[index].content;
			console.log($scope.write);
			window.sessionStorage.setItem('QNAREWRITE.NAME',$scope.write.name);
			window.sessionStorage.setItem('QNAREWRITE.PHONE',$scope.write.phone);
			window.sessionStorage.setItem('QNAREWRITE.TITLE',$scope.write.title);
			window.sessionStorage.setItem('QNAREWRITE.CONTENT',$scope.write.content);
			window.sessionStorage.setItem('QNAREWRITE.SID',$scope.qnalist[index].sid);
			$location.path("/qna/write");
		}else{
			
		}		
	}
	
	
	$scope.goWrite = function() {
//		window.location = "http://localhost:8080/AppleWeb/Apple/qna/write";
//		location.replace(location);
		$location.path("/qna/write");
	};
	
});

// JQuery 
//window.onload = function() {
//	
//	// 취소버튼 초기화
//	function reload() { 
//		document.location.reload();     
//	}
//};

//	// 보안문자
//	document.domain = '';
//
//	function check(upCd) {
//		if( upCd == "LOGON" ) {	//로그인
//			if ( !parent.chkMainValue() ) return;
//		}
//			
//		var f = document.chkFrm;
//		if( f.answer.value == "" ) {
//			alert("보안문자를 입력하세요.");
//			f.answer.focus();
//	    	return ;
//		}
//		f.upCd.value = upCd;
//		f.target = "iframe1";
//
//		f.action = "captchaSubmit.jsp";
//
//		f.submit();		
//
//	}
//
//
//	function tmpEnter(event){
//		if(event.keyCode == 13) {
//			parent.tmpSubmit();
//		}
//	}		
//
//
//	function audio() {
//
//		var f = document.chkFrm;
//
//		f.target = "iframe1";
//
//		f.action = "audioCaptcha.jsp";
//
//		f.submit();	
//
//	}
//
//	function tmp() {
//
//	}
//
//	// 숫자만 입력받기
//	function onlyNumber(){
//		var code = window.event.keyCode;
//		
//		if ((code > 34 && code < 41) || (code > 47 && code < 58) || (code > 95 && code < 106) || code == 8 || code == 9 || code == 13 || code == 46){
//			window.event.returnValue = true;
//			return;
//		}
//		window.event.returnValue = false;
//	}
//
//	//커서 이동
//	function checkSize(){
//		if(document.chkFrm.answer.value.length >= 5){
//			if(parent.document.getElementById("loginBtn")){
//				parent.document.getElementById("loginBtn").focus();
//			}
//		}
//	}
//};