<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>


<html>

<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>
<html>

<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<!-- Join JavaScript -->

<script src="/AppleWeb/js/Login/join.js"></script>


<title>회원 가입</title>



<!-- Join css -->

<link href="/AppleWeb/css/Login/join.css" rel="stylesheet">
<body data-ng-controller="joinCtrl" class="container">


	<h1>신규 회원 가입</h1>

	<div class="fixed-bottom-left" style="border-width:0">
		<!-- 좌측 회원정보 삽입 -->
		
				<ul class="list-group" style="width: 200px;border-width: 0px;">
					<li class="list-group-item" style="border-width:0px;"><a href="">
						<img src="/AppleWeb/Images/Login/join/join.jpg" />
					</a> <a href=""> <img src="/AppleWeb/Images/Login/join/join2.jpg" />
					</a> <a href=""> <img src="/AppleWeb/Images/Login/join/join3.jpg"
							onmouseover="this.src='/AppleWeb/Images/Login/join/join3_1.jpg'"
							onmouseout="this.src='/AppleWeb/Images/Login/join/join3.jpg'" />
					</a> <a href=""> <img src="/AppleWeb/Images/Login/join/join4.jpg"
							onmouseover="this.src='/AppleWeb/Images/Login/join/join4_1.jpg'"
							onmouseout="this.src='/AppleWeb/Images/Login/join/join4.jpg'" />
					</a> <a href=""> <img src="/AppleWeb/Images/Login/join/join5.jpg"
							onmouseover="this.src='/AppleWeb/Images/Login/join/join5_1.jpg'"
							onmouseout="this.src='/AppleWeb/Images/Login/join/join5.jpg'" />
					</a></li>
				</ul>
			
	</div>


	<div class="container">
		<div>
			<!-- 	<form class="form-horizontal" role="form" method="post" -->
			<!-- 		action="javascript:alert( 'success!' );"> -->
			<form class="form-horizontal" name="boardFrm" role="form"
				action="http://localhost:8080/AppleWeb/Apple/Join.do">

				<div class="form-group">
					<label for="provision" class="col-lg-2 control-label">회원가입약관</label>
					<div class="col-lg-8" id="provision">
						<textarea class="form-control" rows="8" style="resize: none"
							readonly>


제 1 조 (목적)

본 약관은 프로젝트에서 운영하는 음식점 요리전문 사이트(이하 "프로젝트"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.


제 2 조 (정의)

① "메뉴판"이란 프로젝트 음식점과 요리에 관련된 정보와 용역을 컴퓨터 기타의 정보통신설비를 통하여 서비스 이용자에게 제공하기 위하여 만든 가상공간상의 영업장소을 말합니다.
② "회원"이란 프로젝트 회원으로 적합하다고 인정하는 개인으로서 본 약관에 동의하고 회원가입양식을 작성하고 아이디와 비밀번호를 발급받은 자를 말합니다.
③"이용자"란 프로젝트에 로그인하여 본 약관에 따라 당사가 제공하는 서비스를 받는 자를 말합니다.


제 3 조 (약관의 공지 및 준용)

① 회사는 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
② 회사는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
③ 회원은 변경된 약관이 공지된 후 15일 이내에 거부의사를 표명할 수 있습니다. 회원이 거부하는 경우 회사는 당해 회원과의 계약을 해지(회원탈퇴)할 수 있습니다. 만약 회원이 변경된 약관이 공지된 후 15일 이내에 회원탈퇴를 하지 않는 경우에는 개정약관에 동의하는 것으로 간주합니다.


제 4 조 (서비스의 변경)

① 프로젝트는 불가피한 여건이나 사정이 있는 경우 서비스의 내용을 변경하거나 중단할 수 있습니다.
② 프로젝트는 1항의 사유로 서비스 내용이 변경 또는 중단되는 경우, 이로 인하여 이용자 또는 제3자가 입은 손해에 대하여는 배상하지 아니합니다.


제 5 조 (약관 외 준칙)

본 약관에 명시되지 않은 사항은 전자거래기본법, 전자서명법, 통신판매법 및 기타 관련법령의 규정에 의합니다.

제 6 조 (회원가입)

① 프로젝트 회원가입은 모두 무료이며, 가입과 동시에 모든 메뉴에 접속이 가능합니다. 단 프리미엄서비스는 유료입니다.
② 프로젝트에 신규가입을 희망하는 이용자는 소정의 회원가입신청서를 반드시 작성하여야 하며, 가입을 희망하시는 분이
당사의 회원으로 적합하지 않다고 인정될 경우, 당사는 입회신청을 거절할 수 있고 이 경우 부적격 사유를 개별적으로 통보해 드립니다.
③ 회원가입계약의 성립시기는 메뉴판이 승낙한 시점(가입축하메일발송)으로 합니다.
④ 회원은 등록사항에 변경이 있는 경우, 즉시 본인 회원정보 수정 방법으로 메뉴판에 대하여 그 변경사항을 알려야 합니다.


제 7 조 (회원의 권리)

① 회원으로 등록하시면 메뉴판의 모든 메뉴를 제약없이 사용하실 수 있습니다.(단 유료메뉴는 제외한다.)
② 당사가 운영하는 프로젝트에서 공동으로 제공하는 다양한 생활정보 서비스와 각종 이벤트에 참가할 자격이 주어집니다.
③ 원하실 경우 프로젝트의 최신소식을 메일로 받아 보실 수 있습니다.
④ 회원의 탈퇴는 임의사항이며, 탈퇴를 원하실 경우에는 메뉴판 웹에서 본인 인증과정을 거쳐 탈퇴신청을 하실 수 있습니다.


제 8 조 (회원의 의무)

① 회원의 ID와 비밀번호에 관한 모든 관리의 책임은 회원본인에게 있습니다.
② 타인에게 피해를 주거나 미풍양속을 해치는 일체의 행위를 금합니다.
③ 회원 가입시 올바른 개인정보와 E-mail 주소를 기재해 주셔야 합니다. 가입신청서에 기재된 메일주소가 잘못되어 반송되는 경우에는 회원가입이 보류될 수 있습니다.
④ 회원은 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
⑤ 회원은 ID 및 비밀번호를 도난당하거나 제3자에게 사용되고 있음을 인지한 경우에는 바로 메뉴판에 통보하고 별도의 지시가 있는 경우에는 그에 따라야 합니다.
⑥ 회원은 개인정보(전화번호, 이메일 주소 등)의 변동시 즉시 회사에 통보하여야 하며, 이와 관련된 책임은 본인에게 있습니다.
⑦ 이용자는 이 약관 및 관계법령에서 규정한 사항을 준수할 의무가 있으며 위 사항이 지켜지지 않을 경우 회원가입이 해지 될 수 있습니다.
⑧ 회사는 이용자에게 회사의 상품에 대한 비용을 휴대폰결재시스템을 통해 청구 할 수 있다.


제 9 조 (회원자격의 정지 및 상실)

① 당사는 회원이 다음 각호에 해당되는 경우 별도의 통보절차 없이 회원의 자격을 정지할 수 있습니다.
1. 회원가입 신청이나, 회원정보의 변경시 허위내용을 작성한 경우
2. 타인의 명의를 임의로 사용하는 경우
3. 프로젝트의 정상적인 운영을 방해하는 행위를 한 경우
4. 프로젝트를 이용하여 구입한 상품 등의 대금, 기타 메뉴몰 이용에 관련하여 회원이 부담하는 채무를 기일내에 지급하지 않는 경우
5. 프로젝트에 귀속하는 저작권 등 지적재산권을 침해한 경우
6. 프로젝트의 명예를 대외적으로 훼손시켰다고 인정되는 경우
7. 기타 프로젝트에서 정한 회원가입요건이 미비되었을 때

② 당사는 회원의 다음 각호에 해당되는 경우 별도의 통보절차 없이 회원의 자격을 상실시킬 수 있습니다.
1. 회원이 사망한 경우
2. 프로젝트에 제공되는 정보를 변경 및 수정하는 등 메뉴판의 운영을 고의로 방해한 경우
3. 타인에게 피해를 주거나 기타 공서양속을 현저히 저해하는 행위를 한 경우
4. 회원자격정지 이후 1개월 이내에 아무런 조치를 취하지 않는 경우
5. 본 약관에 위반한 행위를 한 경우
6. 기타 회원으로서의 자격을 지속시키는 것이 부적절하다고 판단되는 경우


제 10 조 (회원 휴면계정 정책)

① 회사는 이용자의 계정이 부당한 목적으로 사용되는 것을 방지하고 보다 원활한 서비스 제공을 위하여 6개월(180일)이상 접속기록이 없는 이용자의 계정을 휴면 조치 할 수 있습니다.
② 휴면계정으로 전환된 회원의 포인트(과일상자)는 향후 모두 소멸되며, 이렇게 소멸된 부분에 대해서는 복구 조치를 받으실 수 없습니다. 메뉴판닷컴 서비스를 다시 이용하시고자 할 경우에는, 로그인을 하여 간단하게 해제하실 수 있습니다.
③ 휴면 계정으로 전환 조치가 예정될 경우, 회사는 최소 30일 전에 안내 메일을 통해 진행 일정을 안내해 드리며, 휴면 계정 전환 전까지 메뉴판닷컴 홈페이지에서 로그인을 한 회원은 휴면 계정 대상에서 제외될 수 있습니다.


제 11 조 (회원에 대한 통지)

① 회원에 대한 통지를 하는 경우에는 회원 가입신청서에 기재된 E-Mail이나 기타의 방법으로 할 수 있습니다.
② 불특정 다수의 회원에 대한 통지는 공지사항에 공지함으로써 이를 갈음할 수 있으며, 이로 인한 불이익에 대해 당사는 책임을 지지 않습니다.


제 12 조 (회원에 대한 의무)

① 프로젝트는 본 약관이 정하는 바에 따라 특별한 사정이 없는 한 회원 여러분에게 안정적이고 지속적인 서비스를 제공할 수 있도록 최선의 노력을 다하겠습니다.
② 이용자의 개인의 신용정보를 포함한 개인 신상정보를 본인의 승낙 없이 영리의 목적으로 타인에게 누설, 배포하지 않을 책임이 있다.
③ 이용자로부터 제기되는 의견이나 불편사항 등이 정당하다고 인정할 경우에는 즉시 처리하도록 하겠습니다. 단, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보하겠습니다.
④ 프로젝트는 항상 이용자의 신용정보를 포함한 개인신상정보 보안에 대하여 관리적, 기술적 안전 조치를 강구하여 이용자의 정보 보안에 최선을 다해야 할 의무가 있습니다.


제 13 조 (만 14세 미만 아동의 회원가입시 법정 대리인 동의여부)
①만14세 미만의 어린이들은 온라인으로 타인에게 개인정보를 보내기 전에 반드시 개인정보의 수집 및 이용목적에 대하여 충분히 숙지하고 법정대리인의 동의를 받아야 합니다. 이에 회사는 가입약관이나 서비스 이용규칙 등을 통하여 위 사항을 설명하고 있으며 가입시에는 반드시 법정대리인 동의를 받았는지의 여부를 확인합니다. 회사는 법정대리인의 이름, 전화정보를 수집합니다. 수집된 아동의 법정대리인의 개인정보는 동의여부를 확인하는 용도로만 사용할 것입니다.
② 만14세 미만 어린이의 법정대리인은 어린이의 개인정보 열람, 정정, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 경우 회사는 지체없이 필요한 조치를 취합니다.

제 14 조 (저작권의 귀속 및 이용제한)

서비스에 게재된 자료에 대한 권리는 다음 각 항과 같습니다.
① 프로젝트 작성한 사이트에 관한 저작권 기타 지적재산권은 프로젝트에 귀속합니다.
② 게시물에 대한 권리와 책임은 게시자에게 있으며, 회사는 게시물에 대한 사용권한을 갖습니다.
회사는 서비스내 게재 이외의 다른 목적으로 사용할 경우 게시물에 대한 게시자를 반드시 명시해야 됩니다.
단, 비영리적인 경우에는 그러하지 아니하며 또한 회사는 서비스내의 게재권을 갖습니다.
③ 이용자는 프로젝트를 이용함으로써 얻은 정보나 서비스내에 게재된 게시물을 메뉴판의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다
④ 프로젝트는 이용자의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.


제 15 조 (회원의 게시물)

① 게시물이라 함은 서비스 게시판에 회원이 올린 글, 서비스의 질문과 대답 등을 포함합니다.
② 회원이 게시하는 정보 ( 및 질문과 답변 ) 등으로 인해 발생하는 손실이나 문제는 전적으로 회원 개인의 판단에 따른 책임이며, 회사의 고의가 아닌 한, 회사는 이에 대하여 책임지지 않습니다.
③ 회원은 공공질서나 미풍양속에 위배되는 내용과 타인의 저작권을 포함한 지적재산권 및 기타 권리를 침해하는 내용물에 대하여는 등록할 수 없으며, 만일 이와 같은 내용의 게시물로 인해 발생하는 결과에 대한 모든 책임은 회원 본인에게 있습니다.
④ 회사는 음식점과 요리에 관한 정보공유의 장이라는 메뉴판닷컴의 운영목적에 반한다고 판단되는 다음의 게시물이나 자료를 사전통지 없이 삭제하거나 이동 또는 등록 거부를 할 수 있습니다.
1. 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우
2. 공공질서 및 미풍양속에 위반되는 저속, 음란한 내용의 정보, 문장, 도형, 음향, 동영상을 전송, 게시하거나 링크시키는 경우
3. 사적인 정치적 판단이나, 종교적 견해의 내용으로 회사가 서비스성격에 부합하지 않는다고 판단하는 경우
4. 불법복제 또는 해킹을 조장하는 내용인 경우
5. 영리를 목적으로 하는 광고 등 상업적 이용이라고 판단되는 경우
6. 범죄와 결부된다고 객관적으로 인정되는 내용일 경우
7. 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우
8. 회사에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우
9. 기타 관계법령에 위배된다고 판단되는 경우
10. 사실이 아니거나 잘못된 정보로 확인된 경우


제 16 조 (정보의 제공 및 회원에 대한 통지 등)
(1) 회사는 회원이 서비스 이용 중 제공할 필요가 있다고 인정되는 다양한 정보 또는 광고에 대해서 전자우편, 유무선매체, 서신우편 등의 방법으로 회원에게 제공할 수 있습니다. 회원이 서비스상에 게재되어 있는 광고를 이용하거나 서비스를 통한 광고주의 판촉활동에 참여하는 등의 방법으로 교신 또는 거래를 하는 것은 전적으로 회원과 광고주 간의 문제입니다. 만약 회원과 광고주 간에 문제가 발생할 경우에도 회원과 광고주가 직접 해결하여야 하며, 이와 관련하여 회사는 어떠한 책임도 지지 않습니다.
(2) 회원이 등록가맹점을 이용(예약, 쿠폰서비스 등)할 경우, 가맹점에게 회원정보(이름, 주소, 전화번호등)을 제공합니다.
(3) 특정 항목의 정보에 대해서는 별도의 신청을 한 회원에 대하여 유료로 제공할 수 있습니다.


제 17 조 (관할법원)

본 약관과 관련한 소송은 프로젝트 본사 소재지를 관할하는 법원을 관할법원으로 합니다.


제 18 조 (분쟁해결)

① 프로젝트는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상 처리하기 위하여 프로젝트 관리담당자를 둡니다.
② 프로젝트는 이용자로부터 제출되는 불만사항 및 의견이 정당하다고 판단하는 경우 우선적으로 그 사항을 처리합니다. 단, 신속한 처리가 어렵다고 판단되는 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.


제 19 조 (손해배상)

① 회사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 동 손해가 회사의 고의 또는 중대한 과실에 의한 경우를 제외하고 이에 대하여 책임을 부담하지 아니합니다.
② 회원이 이 약관의 규정을 위반하여 회사 또는 제3자에게 손해가 발생하는 경우, 이 약관을 위반한 회원은 회사 및 제3자에 발생한 손해를 배상할 책임이 있습니다.


제 20 조 (면책조항)

프로젝트는 서비스 이용과 관련하여 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.




[부칙] 본 약관은 2013년 5월31일부터 시행합니다.
2008년 6월 30일부터 시행되던 종전약관은 본 약관으로 대체됩니다.


※ 본 약관에 대한 저작권은 프로젝트에 귀속하며
무단 복제나 배포 등 기타 저작권 침해행위를 일체 금합니다.



                    </textarea>
						<div class="col-md-6"></div>
						<div class="radio">
							<label> <input type="radio" id="provisionYn"
								name="provisionYn" value="Y" autofocus="autofocus" checked>
								동의합니다.
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" id="provisionYn"
								name="provisionYn" value="N"> 동의하지 않습니다.
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
					<div class="col-lg-8" id="memberInfo">
						<textarea class="form-control" rows="8" style="resize: none"
							readonly>
◈ 개인정보의 수집 및 이용 목적 ◈

"프로젝트"에서는 "프로젝트"(www.apple.com)에서 회원을 접수받고 있습니다.
"프로젝트"에 가입하신 회원의 정보는 ID와 비밀번호에 의한 개인 식별과 신원이 불확실하고 불손한 행위를 하는 인터넷 사용자가 아닌 양질의 회원을 선별하여 프로젝트에서 제공하는 양질의 서비스를 드리기 위해 회원가입을 받고 있습니다.
또한 프로젝트에서 회원가입을 통해 받은 정보를 바탕으로 회원 각각의 취향과 특성에 맞춘 컨텐츠를 제공하고 메뉴판 컨텐츠에 대한 사용자의 성별, 연령별 기타 특정 정보를 기준으로 분석자료를 마련하는데 회원정보가 이용됩니다.

고객관리
- 회원제 서비스 이용에 따른 본인확인,개별식별,불량회원의 부정 이용 방지와 비인가 사용방지
- 가입의사확인 연령확인 불만처리등 민원처리 고지사항 전달

마케팅 및 광고에 활용
- 신규 서비스 개발및 이벤트등 광고성 정보전달,및 고객님의 개인 맞춤서비스 제공

이 모든 자료는 다시 회원님들을 위한 우수한 컨텐츠를 마련하는데 사용됩니다.

- 성명, 아이디, 비밀번호, 본인확인기관을 통해 받는 결과값(CI) 및 성별 정보, 닉네임, 비밀번호 확인질문과답 생년월일, 여권번호(외국인에 한함) : 회원제 서비스 이용에 따른 본인 식별 절차에 이용
- 전자우편(e-mail) 주소, (뉴스레터 수신여부), 전화번호 : 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보의 안내, 경품 배송에 대한 정확한 배송지의 확보, 예약 내용 확인을 위한 연락 등
- 직업, 알게된동기, 뉴스레터신청여부,결혼여부 : 개인맞춤 서비스를 제공하기 위한 자료
- 그 외 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료

개인정보 수집방법 : 홈페이지 회원가입의 서면양식
                    </textarea>
						<div class="col-md-6"></div>
						<div class="radio">
							<label> <input type="radio" id="memberInfoYn"
								name="memberInfoYn" value="Y" checked> 동의합니다.
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" id="memberInfoYn"
								name="memberInfoYn" value="N"> 동의하지 않습니다.
							</label>
						</div>
					</div>
				</div>

				<div class="form-group" id="divId">
					<label for="inputId" class="col-lg-2 control-label">사업자명</label>
					<div class="col-lg-4">
						<input type="text" class="form-control onlyAlphabetAndNumber"
							name="BUSINESSNAME" data-rule-required="true"
							placeholder=" 사업자명 " maxlength="30">
					</div>
					<div class="col-lg-6"></div>
				</div>
				<div class="form-group" id="divId">
					<label for="inputId" class="col-lg-2 control-label">사업자번호</label>
					<div class="col-lg-4">
						<input type="text" class="form-control onlyAlphabetAndNumber"
							name="BUSINESSNUMBER" data-rule-required="true"
							placeholder="- 없이 숫자만 입력하세요." maxlength="30">
					</div>
					<div class="col-lg-6"></div>
				</div>
				<div class="form-group" id="divPassword">
					<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
					<div class="col-lg-4">
						<input type="password" class="form-control" id="password"
							name="PASSWORD" data-rule-required="true" placeholder="패스워드"
							maxlength="30">
					</div>
					<div class="col-lg-6"></div>
				</div>
				<div class="form-group" id="divPasswordCheck">
					<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드
						확인</label>
					<div class="col-lg-4">
						<input type="password" class="form-control" id="passwordCheck"
							data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
					</div>
					<div class="col-lg-6"></div>
				</div>

				<div class="form-group" id="divEmail">
					<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
					<div class="col-lg-4">
						<input type="email" class="form-control" name="EMAIL"
							data-rule-required="true" placeholder="이메일" maxlength="40">
					</div>
					<div class="col-lg-6"></div>
				</div>
				<div class="form-group" id="divPhoneNumber">
					<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
						번호</label>
					<div class="col-lg-4">
						<input type="tel" class="form-control onlyNumber" name="PHONE"
							data-rule-required="true" placeholder="- 없이 숫자만 입력하세요."
							maxlength="11">
					</div>
					<div class="col-lg-6"></div>
				</div>
				<div class="form-group">
					<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일
						수신여부</label>
					<div class="col-lg-10">
						<label class="radio-inline"> <input type="radio"
							id="emailReceiveYn" name="emailReceiveYn" value="Y" checked>
							동의합니다.
						</label> <label class="radio-inline"> <input type="radio"
							id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지
							않습니다.
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPhoneNumber" class="col-lg-2 control-label">SMS
						수신여부</label>
					<div class="col-lg-10">
						<label class="radio-inline"> <input type="radio"
							id="smsReceiveYn" name="smsReceiveYn" value="Y" checked>
							동의합니다.
						</label> <label class="radio-inline"> <input type="radio"
							id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지
							않습니다.
						</label>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-md-4"></div>
						<div class="btn-group col-md-4">
							<button type="submit" class="btn btn-default"
								onClick="doSubmit()" data-ng-click="doSubmit()">가입 요청</button>
							<button id="cancelClick" type="submit" class="btn btn-default">취소</button>
						</div>
						<div class="col-md-4"></div>
					</div>
				</div>

			</form>
			<hr />
		</div>
	</div>
	<!-- 푸터 들어가는 부분 -->
	<!-- 	<div> -->
	<!-- 		<p class="text-center"> -->
	<!-- 			<small><strong> Apple</strong></small><br> <small>대표 : -->
	<!-- 				Apple(주) ㆍ 주소 : 이대역 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br> -->
	<!-- 			<small>Copyrightⓒ All rights reserved.</small> -->
	<!-- 		</p> -->
	<!-- 	</div> -->

</body>
</html>
