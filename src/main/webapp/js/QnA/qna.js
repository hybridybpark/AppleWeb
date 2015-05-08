
// angularjs
// 게시판내 목록 출력
var myApp2 = angular.module('myApp2',[]);

myApp2.controller('myController2',function($scope,$http){	
	
	// 삭제 password name 선언
	//$scope.inputpassword="w";
	
	$http.get("http://localhost:8080/AppleWeb/Apple/qna/list.json").success(function(data) {
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
	
});

// JQuery 
window.onload = function() {
	
	// 취소버튼 초기화
	function reload() { 
		document.location.reload();     
	}
};

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