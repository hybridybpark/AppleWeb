
// angularjs
// 게시판내 목록 출력


mainApp.controller('qnaWriteCtrl',function($scope,$http,$location,$route){	
	$scope.rewrite = false;
	if(window.sessionStorage.getItem('QNAREWRITE.NAME')){
		$scope.write = {
				name:"",
				phone:"",
				title:"",
				content:"",
				password:"",
				sid:""
		}
		$scope.write.name = window.sessionStorage.getItem('QNAREWRITE.NAME');
		$scope.write.phone = window.sessionStorage.getItem('QNAREWRITE.PHONE');
		$scope.write.title = window.sessionStorage.getItem('QNAREWRITE.TITLE');
		$scope.write.content = window.sessionStorage.getItem('QNAREWRITE.CONTENT');
		$scope.write.sid = window.sessionStorage.getItem('QNAREWRITE.SID');
		console.log($scope.write);
		window.sessionStorage.setItem('QNAREWRITE.NAME',"");
		window.sessionStorage.setItem('QNAREWRITE.PHONE',"");
		window.sessionStorage.setItem('QNAREWRITE.TITLE',"");
		window.sessionStorage.setItem('QNAREWRITE.CONTENT',"");
		window.sessionStorage.setItem('QNAREWRITE.SID',"");
		
		$scope.rewrite = true;
	}
	
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
		if(boardFrm.privacy_agreement_radio.value == "N") {
			alert("약관에 동의해 주세요");
			return;
		}
		
		$scope.qnadata = {
				name: boardFrm.pname.value,
				phone: boardFrm.phone.value,
				title:boardFrm.title.value,
				content:boardFrm.content.value,
				password:boardFrm.password.value
					};
		if($scope.rewrite){
			var result = $http.post("/AppleWeb/Apple/QnA.update",$scope.write);
			result.success(function(result,status,headers,config) {
				if(result.status){
//					
					$location.path("/qna")
				}else{
					alert(result.statusText);
				}
			});
			result.error(function(error) {
				console.log(error);
			});
		}else{
			var result = $http.post("/AppleWeb/Apple/QnA.do",$scope.qnadata);
			result.success(function(result,status,headers,config) {
//				
				if(result.status){
//					
					$location.path("/qna")
				}else{
					alert(result.statusText);
				}
//				
			});
		}		
	};
	
	
	
});

