<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type='text/javascript' src='/js/jquery-1.4.4.min.euckr.js'></script>
<style type="text/css">
#Header .topmenu {position:absolute; top:0; right:0;}
#Header .topmenu ul {float:left; margin:0 0px 0 0;}
#Header .topmenu ul li {float:left; display:inline; font-size:.95em; letter-spacing:-.09em;}
#Header .topmenu ul li.cen {text-align:center;letter-spacing:0;}
#Header .topmenu ul li a img {margin:-2px 2px 0 0;*margin:-4px 2px 0 0;}
#Header .topmenu ul li a {color:#1b890b; padding:10px 12px 6px;}
#Header .topmenu ul li a:visited {color:#1b890b;}
#Header .topmenu ul li a:hover,
#Header .topmenu ul li a:active {color:#fff; background:#1b890b;}
#Header .topmenu ul li.eng a {font-family:verdana; font-size:.95em; letter-spacing:0em; padding-top:9px; padding-bottom:6px;}
#Header .topmenu form {float:left;}
#Header .topmenu fieldset {float:left;  background:#ececea;}
#Header .topmenu fieldset label {position:absolute;left:0; top:0; overflow:hidden; font-size:0; line-height:0; visibility:hidden; width:0px; height:0px;}
#Header .topmenu fieldset #topsearchBox {width:176px; height:19px; padding:6px 2px 0 7px; *padding-top:9px; _padding-top:8px; background:#ececea; color:#0A0A0A;}

#Header {position:relative; width:960px; padding-left:25px; background:#fff; height:115px; z-index:9999;}
#Header h1 {padding:22px 0 0 0;}
#Header .topMerry {float:left; padding:5px 2px;}

/* 理쒖쥌 硫붿씤硫붾돱 */
#nav {position: absolute; left:121px; _left:112px; top:49px; z-index:99999;visibility: visible; }
#nav h3 {display: none;}
#nav ul {margin: 0; width:877px;}
#nav li {display:inline-block; float: left; margin: 0 0 0 9px;}
#nav .tab {color:#000; display:inline-block !important; padding:2px 13px 0; height:54px; position: relative;}
#nav .tab strong {color:#0A0A0A; font-family:CORBEL; text-rendering:optimizeLegibility; font-size:1.5em; letter-spacing:.03em; display:block; font-weight: normal; position: relative; text-decoration: none; text-transform: uppercase; padding-top:4px;}
#nav .tab span {color:#777777; font-size:.95em; position: relative; text-transform: none; white-space: nowrap;}
#nav .tab:hover, 
#nav .tab:focus {background:none repeat scroll 0 0 #FFF; color:#2A8A15;}
#nav .tab:hover span, 
#nav .tab:focus span {color:#000;}
#nav .tab div {background:none repeat scroll 0 0 #1E1E1E; bottom: 0; left: 0; position: absolute; right: 0; top: 0;}
#nav .tab_on strong {font-family:CORBELB; color:#508327; font-weight:bold;}
#nav .open .tab, 
#nav .open .tab:visited, 
#nav .open .tab:hover, 
#nav .open .tab:focus {background:none repeat scroll 0 0 #1E1E1E; color:#FFF;}
#nav .open .tab span, 
#nav .open .tab:hover span, 
#nav .open .tab:focus span {color:#FFF;}
#nav .open .tab strong, 
#nav .open .tab:hover strong, 
#nav .open .tab:focus strong {color:#74BE36;}
.section_coffee #nav_coffee .tab strong, 
.section_menu #nav_menu .tab strong, 
.section_coffeehouse #nav_coffeehouse .tab strong, 
.section_responsibility #nav_responsibility .tab strong, 
.section_card #nav_card .tab strong, 
.section_shop #nav_shop .tab strong {color:#71B43A; font-weight: bold;}

/* 硫붿씤硫붾돱 2�곸뒪 �댄븯 */
#nav .menu {-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2); color:#FFF; font-size:1em; left:9px; _left:18px; top:56px; position:absolute; visibility:hidden; width:855px; _width:854px; z-index:99999; background:#1E1E1E url('/img/g/pattern01.gif') repeat 0 0;}
#nav .menu a {color:#FFF;}
#nav li:hover .menu {visibility: visible;}
.hasJS #nav .menu {display: none; visibility: visible;z-index:99999;}
#nav .menu_sections {background:none repeat scroll 0 0 #1E1E1E; float: left; height: auto !important; min-height:168px; _height:168px; padding:18px 0 0 10px; width: 650px; position:relative; z-index:9999;}
#nav .menu_sections li {margin: 0 20px 0 0; width: 141px; _width: 143px; _margin: 0 5px 0 0;}
#nav .menu_sections li.endHeight {height:145px; }
#nav .menu_sections li.endHeight02 {height:155px;}
#nav .menu_sections li:nth-of-type(5) {clear: both;}
#nav .menu_sections dl {margin-bottom:20px}
#nav .menu_sections dt {color:#fff; margin: 0 0 11px 0; font-size:1.2em;letter-spacing:-0.085em;}
#nav .menu_sections dt a {color:#fff; padding:2px 2px 1px 2px; *padding:3px 1px 0px 2px;}
#nav .menu_sections dt a:visited {color:#fff;}
#nav .menu_sections dt a:hover,
#nav .menu_sections dt a:active {color:#fff; background:#288F1B;}
#nav .menu_sections dd {margin: 0 0 5px 0; font-size:.95em;}
#nav .menu_sections dd a {color:#B0B0B0; padding:2px 2px 1px 2px; *padding:3px 1px 0px 2px; }
#nav .menu_sections dd a:visited {color:#B0B0B0;}
#nav .menu_sections dd a:hover,
#nav .menu_sections dd a:active {color:#fff; background:#288F1B;}
#nav .menu_sections dd.colorRed a:hover,
#nav .menu_sections dd.colorRed a:active {color:#fff; background:#d0163b;}

/* GBN �� 異붽�硫붾돱 */
#nav .menu_addMenu {background:none repeat scroll 0 0 #1E1E1E; float: left; height: auto !important; min-height:71px; _height:71px; padding:18px 0 0 10px; width: 650px; position:relative; z-index:9999;}
#nav .menu_addMenu li {margin:0 10px 0 0; width:634px; _width:631px;border-top:1px solid #5f5e63;}
#nav .menu_addMenu li:nth-of-type(5) {clear: both;}
#nav .menu_addMenu dt {color:#B0B0B0; margin:16px 0 6px 0; font-size:0.95em; letter-spacing:-0.085em; padding:2px 2px 1px 1px; *padding:3px 1px 0px 1px;}
#nav .menu_addMenu dd {float:left; margin: 0 10px 17px 0; font-size:1.2em; font-weight:bold;}
#nav .menu_addMenu dd a, #nav .menu_addMenu dd .con-txt {color:#75bd37; padding:2px 3px 1px 2px; *padding:3px 1px 0px 2px; font-weight:bold;}
#nav .menu_addMenu dd a:visited {color:#75bd37; font-weight:bold;}
#nav .menu_addMenu dd a:hover,
#nav .menu_addMenu dd a:active {color:#fff; background:#288F1B; font-weight:bold;}
#nav .menu_addMenu dd.marB{margin-bottom:5px;}
.clear{clear:both;}

#nav .menu_promo {float:right; font-size:1em; margin-top:18px; padding:0 0 0 0px; width:175px; position:relative; z-index:999;}
#nav .menu_promo a {display: block; float: left; left: 12px; _left:0px; padding:11px 5px 12px 5px; _padding:11px 10px 12px 10px; }
#nav .menu_promo a:hover,
#nav .menu_promo a:active {background:#288F1B;}
#nav .menu_promo a.no:hover,
#nav .menu_promo a.no:active {background:none;cursor:default}
#nav .menu_promo a .title {display:block; color:#fff; font-size:1.1em; padding-bottom:11px; width:138px; }
#nav .menu_promo a .memo {display:block; color:#ececec; font-size:.95em; line-height:1.5em; width:138px; padding-top:15px;}
</style>
</head>
<body>
<div id="Wrap">
	<!-- header -->
	<div id="Header">
		<!-- logo area -->
		<h1><a href="http://www.istarbucks.co.kr/index.asp"><img src="/img/g/logo.gif" alt="스타벅스 코리아" /></a></h1>
		<!-- // logo area -->

		<!-- topmenu area -->
		<div class="topmenu">
			<div class="luckyBag"><!--img alt="let's Merry" src="/img/g/heart_icon.jpg"--></div>
			<!--  start 20120410 Happy Hour -->
			<!--iframe src="http://www.istarbucks.co.kr/count.down.asp" scrolling="no" frameborder="0" style="width:280px;height:40px;left:0;position:absolute;margin-left:-295px;margin-top:6px;" allowTransparency=""></iframe-->
			<!--  end 20120410 Happy Hour -->

			<ul>
				<li class="eng"><a href="https://www.istarbucks.co.kr/Mem/login.asp">Login</a></li>
				<li><a href="https://www.istarbucks.co.kr/Mem/join.asp">회원가입</a></li>
				
				<li><a href="http://www.istarbucks.co.kr/Customer/faq_list.asp">고객 서비스</a></li>
				<!--li><a href="http://www.istarbucks.co.kr/Store/global_starbucks.asp">세계의 스타벅스</a></li-->
				<li><a href="http://www.istarbucks.co.kr/corp_sales/index.asp"><!--img alt="new" src="/img/corp/top_corp_new.gif" style="margin-top:1px;"
				/-->단체 및 기업 구매</a></li>
                <li><a href="http://www.istarbucks.co.kr/Store/index_store.asp">매장</a></li>
			</ul>

			<!-- search box -->
			<form name="SForm1" id="SForm" method="post" action="/Store/store_search2.asp">
				<fieldset>
					<legend>매장찾기</legend>
					<label for="topsearchBox">매장검색</label><input type="text" name="SearchText" id="topsearchBox" value="매장명을 입력해주세요." onfocus="this.value=''" /><input type="image" src="/img/b/search_btn.gif" alt="검색" />
				</fieldset>
			</form>
			<!-- // search box -->

		</div>

		<!-- 메인메뉴요 -->
		<div id="nav">

			<h3>Navigation</h3>
			<ul>

				<li id="nav_coffee">

					<a href="http://www.istarbucks.co.kr/Coffee/" class="tab"><strong>Coffee</strong>
					<span>스타벅스 커피</span></a>

					<div class="menu">
						<ul class="menu_sections">
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffee/">로스트별 및 기타<br />보기</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/blonde_index.asp">블론드 로스트</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/medium_index.asp">미디엄 로스트</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/dark_index.asp">다크 로스트</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/flavor_index.asp">플레이버 커피</a></dd><!-- 20140331 플레이버 추가-->
									<dd><a href="http://www.istarbucks.co.kr/Coffee/seasonal_index.asp">시즌 한정 커피</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/coffee_all_index.asp">커피 전체보기</a></dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffee/whole_bean_index.asp">포장 형태별 보기</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/whole_bean_index.asp">스타벅스 원두</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/starbucks_via_index.asp">스타벅스 비아</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/starbucks_origami_index.asp">스타벅스 오리가미</a><!--img alt="new" src="/img/corp/top_corp_new.gif" style="margin-top:1px;" / --></dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffee/reserve_info.asp">스타벅스 리저브™</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/reserve_info.asp">스타벅스 리저브™ 란?</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/reserve_index.asp">스타벅스 리저브™ 커피</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/reserve_store.asp">스타벅스 리저브™ 매장</a></dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffee/learn_more_01.asp">커피 이야기</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/learn_more_01.asp">스타벅스 로스트 스팩트럼</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/coffee_authority.asp">최상의 아라비카 원두</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/clover_system.asp">클로버<sup>®</sup> 커피 추출 시스템</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/learn_more_02.asp">추출방식 알아보기</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/learn_more_03.asp">한 잔의 커피가  완성되기까지</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/thisweek_coffee.asp">금주의 커피</a></dd>
								</dl>
							</li>
						</ul>
						<!-- 20140317 리저브 매장 추가로 메뉴명 전체적으로 수정 -->

						<div class="menu_promo">
							
							<a href="http://www.istarbucks.co.kr/Coffee/coffee_product_view.asp?seq=68" >
								<p class="title">2015 서머 시즌 한정 블렌드</p>
								<img src="/upload/main/20150420152728488.jpg?cmd=resize&width=140&height=77" width="140" height="77" alt="" />
								<p class="memo">여름과 잘 어울리는, 매력적인 2015 서머 시즌 한정 블렌드, 스타벅스 아프리카 키타무를 만나보세요.</p>
							</a>
							
						</div>

						<!-- 20140317 커피 리저브제품추가작업 문구추가 -->
						<ul class="menu_addMenu" style="display:block">
							<li>
								<dl>
									<dt>매장에서 지금 바로 만나볼 수 있는 스타벅스 리저브™ 커피 종류를 알려드립니다.</dt>
									<!-- 20140409 리저브 신규 제품수정 -->
									<!-- dd class="marB"><a href="http://www.istarbucks.co.kr/Coffee/coffee_product_view.asp?seq=51">스타벅스 리저브™ 말라위 피베리 세이블 팜</a></dd>
									<dd class="clear"><a href="http://www.istarbucks.co.kr/Coffee/coffee_product_view.asp?seq=52">스타벅스 리저브™ 페루 촌티</a></dd -->
									<!-- 20141105 리저브 신규 수정 -->
									<dd class="clear" style="margin-bottom:5px;"><a href="/Coffee/coffee_product_view.asp?seq=65">스타벅스 리저브™ 콜롬비아 몬테보니토</a></dd>
									<dd class="clear" style="margin-bottom:5px;"><a href="/Coffee/coffee_product_view.asp?seq=67">스타벅스 리저브™ 수마트라 피베리 레이크 토바</a></dd>
									<dd class="clear"><a href="/Coffee/coffee_product_view.asp?seq=66">스타벅스 리저브™ 썬 드라이드 에티오피아 콩가</a></dd>
									<!-- //20140409 리저브 신규 제품수정 -->
								</dl>
							</li>
						</ul>
						<!-- 20140317 커피 리저브제품추가작업 문구추가 -->

						<!-- 20130409 추가 -->
						<ul class="menu_addMenu" style="display:none">
							<li>
								<dl>
									<dt>어떤 커피를 좋아하세요?</dt>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/blonde_index.asp">은은하고 부드러운 맛</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/medium_index.asp">부드럽고 균형 잡힌 맛</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffee/dark_index.asp">진하고 강한 맛</a></dd>
								</dl>
							</li>
						</ul>
						<!-- 20130409 추가 끝 -->

					</div>
				</li>

				<li id="nav_menu">
					<a href="http://www.istarbucks.co.kr/Menu/index_menu.asp" class="tab"><strong>Menu</strong>
					<span>음료 &amp; 푸드</span></a>

					<div class="menu">
						<ul class="menu_sections">
							<li>
								<dl>
									<!-- 20150318 - by edge -->
									<!--dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020200&Srod=P020300&Trod=P020500">음료</a></dt--><!-- 20142015 링크 수정 -->
									<dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020700&Srod=P020300&Trod=P020500&Trod2=P020800">음료</a></dt>

									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020100">브루드 커피</a></dd><!-- [M_20140217_이현정] 띄어쓰기 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020200">에스프레소</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020300">프라푸치노</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020800">블렌디드</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020700">스타벅스 피지오</a></dd>
									<!-- [M_20131209_이현정] 숨김
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020600">스타벅스 리프레셔</a></dd>
									-->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020400">티</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020500">기타음료</a></dd>
								</dl>
							</li>
							<li>
								<dl>
									<!--
									20141103 - by edge
									<dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030100&Srod=P030500&Trod=P030600&Trod2=P030300&Trod3=P030400">푸드</a></dt>
									-->
									<dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030100&Srod=P030500">푸드</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030100">베이커리</a></dd>
									<!-- 1114 <dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030200">브런치 세트</a></dd>-->
									<!-- 20130107 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030500">케익</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030300">샌드위치</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030400">수프 &amp; 라자냐</a></dd><!-- 20130704 라자냐추가 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030600">과일 &amp; 요거트</a></dd>
									<!--
									<dd><a href="http://www.istarbucks.co.kr/Menu/brunch_your_way.asp">Brunch Your Way</a></dd>
									-->
									<!-- //20130107 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030700">쿠키 &amp; 마카롱 &amp; 바</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030800">초콜릿 &amp; 기타</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P030900">아이스크림</a></dd><!-- [M_20140217_이현정] 추가 -->
								</dl>
								<!-- 20130311
								<br />
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Menu/booking_cake_choice.asp">스타벅스 케익예약</a></dt>
									<dt><a href="javascript:msrtest();">스타벅스 케익예약</a></dt>
								</dl>
								<br /> -->
							</li>
							<li>
								<dl>
									<!--
									<dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040100&Srod=P040200&Trod=P040600&Trod2=P040300">상품</a></dt><!-- 20140415 링크수정 -->
									<!-- 20150318 - by edge
									<dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040100&Srod=P040200&Trod=P040600&Trod2=P040300">상품</a></dt><!-- 20141103 링크수정 -->
									<dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040100&Srod=P040200&Trod=P040300&Trod2=P040600">상품</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040100">머그</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040200">텀블러</a></dd>
									<!-- 20131107 수정 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040600">보온병</a></dd>
									<!-- 수정 끝 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040300">기타 용품</a></dd>
									<!--  [M_20140101_이현정] 메뉴 숨김 									 -->
									<dd class="colorRed"><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P040500">2015 스타벅스 플래너</a></dd>

								</dl>
							</li>
							<li>
								<!-- 20130311 수정 -->
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Menu/booking_cake_choice.asp">스타벅스 케익예약</a></dt>
								<!-- dt><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P050100&Srod=P050300">음악 & CD</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P050100">팝</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P050200">재즈</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P050300">클래식</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P050400">기타</a></dd -->
								</dl>
							</li>
						</ul>

						<div class="menu_promo">
							
							<a href="http://www.istarbucks.co.kr/Menu/product_list.asp?Prod=P020200&amp;Srod=P020300&amp;Trod=P020500&amp;Trod2=P020700" >
								<p class="title">다양한 맛과 재미를 더한 음료</p>
								<img src="/upload/main/20150420152809986.jpg?cmd=resize&width=140&height=77" width="140" height="77" alt="" />
								<p class="memo">시원한 프라푸치노와 톡톡 튀는 피지오, 상큼한 과일음료 등 16가지의 여름음료로 특별한 여름을 즐겨보세요. </p>
							</a>
							
						</div>

						<!-- 20130409 추가 -->
						<ul class="menu_addMenu">
							<li>
								<dl>
									<dt>지금까지 강렬하고 진한 커피를 즐기셨다면, 이제는 부드럽고 그윽하게 즐겨보세요.</dt>
									<!-- <dd><a href="http://www.istarbucks.co.kr/Menu/coffee_SOE.asp">싱글 오리진 에스프레소</a></dd> -->
									<!-- 20150408 구명준 CHOOSE YOUR ESPRESSO 추가 시작 -->
									<dd><a href="http://www.istarbucks.co.kr/Menu/coffee_new.asp">CHOOSE YOUR ESPRESSO</a></dd>
									<!-- 20150408 구명준 CHOOSE YOUR ESPRESSO 추가 끝 -->
								</dl>
							</li>
							<li style="border-top:none;">
								<dl>
									<dt>기념하고 싶은 날, 스타벅스 케익이 더 특별한 하루를 만들어드립니다.</dt>
									<dd><a href="http://www.istarbucks.co.kr/Menu/booking_cake_choice.asp">스타벅스 케익예약</a></dd>
								</dl>
							</li>
						</ul>
						<!-- 20130409 추가 끝 -->

					</div>
				</li>

				<li id="nav_coffeehouse">
					<a href="http://www.istarbucks.co.kr/Coffeehouse/index_coffeehouse.asp" class="tab"><strong>Coffee house</strong>
					<span>SNS &amp; 스타벅스 즐기기</span></a>

					<div class="menu">
						<ul class="menu_sections">
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffeehouse/social_list.asp">소셜 스타벅스</a></dt>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffeehouse/starbucks_application.asp">스타벅스 애플리케이션</a></dt>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffeehouse/design_tumbler_list.asp">스타벅스 즐기기</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Coffeehouse/design_tumbler_list.asp">나만의 텀블러 만들기</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Coffeehouse/wallpaper_list.asp">스크린세이버 &amp; 월페이퍼</a></dd>
									<!--dd><a href="http://www.istarbucks.co.kr/Coffeehouse/starbucks_games01.asp">게임</a></dd-->
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Coffeehouse/card_partner.asp">제휴카드</a></dt>
								</dl>
							</li>
						</ul>

						<div class="menu_promo">
							
							<a href="http://www.istarbucks.co.kr/Coffeehouse/starbucks_application.asp" >
								<p class="title">스타벅스 사이렌 오더</p>
								<img src="/upload/main/20141231182431869.jpg?cmd=resize&width=140&height=77" width="140" height="77" alt="" />
								<p class="memo">내 손 안에서 간편하게 만나는 스타벅스. 나만의 음료를 만들고, 저장하여 주문해보세요.</p>
							</a>
							
						</div>

						<!-- 20130409 추가 -->
						<ul class="menu_addMenu">
							<li>
								<dl>
									<dt>다양한채널에서 스타벅스와 함께 이야기해보세요.</dt>
									<dd><a href="http://www.facebook.com/starbuckskorea" target="_blank" >페이스북</a></dd>
									<dd><a href="https://twitter.com/StarbucksKorea" target="_blank" >트위터</a></dd>
									<dd><a href="http://www.istarbucksblog.co.kr/" target="_blank" >블로그</a></dd>
									<dd><a href="http://www.youtube.com/starbuckskorea/" target="_blank" >유튜브</a></dd>
								</dl>
							</li>
						</ul>
						<!-- 20130409 추가 끝 -->


					</div>
				</li>

				<li id="nav_responsibility">
					<a href="http://www.istarbucks.co.kr/Responsibility/" class="tab"><strong>Responsibility</strong>
					<span>사회공헌 활동</span></a>

					<div class="menu">
						<ul class="menu_sections">
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Responsibility/starbucks_shared_planet.asp">스타벅스 사회공헌  <br />캠페인 소개</a></dt>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Responsibility/community_service_type.asp">지역사회 참여 활동</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/community_service_type.asp">캠페인 주요 활동 </a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/community_service_year.asp">연도별 활동 결산</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/csr_today.asp">커뮤니티 뉴스</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/community_store.asp">커뮤니티 스토어</a></dd>
									<!--<dd><a href="http://www.istarbucks.co.kr/Responsibility/sp_list.asp">셰어드 플래닛 게시판</a></dd>-->
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Responsibility/protection_for_origin.asp">윤리적 원두 구매</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/protection_for_origin.asp">커피 원산지 보호</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/farmer_support.asp">커피 농가 지원 활동</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/ethically_sourcing.asp">윤리 구매 방식</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/fair_trade.asp">공정무역 인증</a></dd>
								</dl>
							</li>
							<li class="endHeight">
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Responsibility/environment.asp">환경보호 활동</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/environment.asp">환경 발자국 줄이기</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/no_disposable_cup.asp">일회용 컵 없는 매장 </a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/bean_recycling.asp">커피 원두 재활용 </a></dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Responsibility/sp_ethical_management.asp">GLOBAL RESPONSIBILITY</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/sp_ethical_management.asp">윤리경영 보고서</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/sp_youth_action.asp">유스 액션 그랜트</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/sp_global_month.asp">지구촌 봉사의 달</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/water.asp">맑은 물 지키기 활동</a></dd>
								</dl>
							</li>
						</ul>

						<div class="menu_promo">
							
							<a href="http://www.istarbucks.co.kr/Responsibility/csr_today.asp" >
								<p class="title">스타벅스, 커뮤니티 뉴스</p>
								<img src="/upload/main/20130917184919462.png?cmd=resize&width=140&height=77" width="140" height="77" alt="" />
								<p class="memo">서로에게 그리고 지구 환경에 도움을 주는 방식으로 사업을 전개하겠다는 스타벅스의 약속! 스타벅스와 지역사회의 다양한 활동소식을 소개합니다.</p>
							</a>
							
						</div>

						<!-- 20130409 추가 -->
						<ul class="menu_addMenu">
							<li>
								<dl>
									<dt>이웃과 만들어 가는 더 나은 세상, 스타벅스가 함께 합니다.</dt>
									<dd><a href="http://www.istarbucks.co.kr/Responsibility/csr_today.asp">스타벅스 커뮤니티 뉴스</a></dd>
								</dl>
							</li>
						</ul>
						<!-- 20130409 추가 끝 -->

					</div>
				</li>

				<li id="nav_card">
					<a href="http://www.istarbucks.co.kr/Card/" class="tab"><strong>Card</strong>
					<span>등록 충전 리워드</span></a><!-- 20130415 -->

					<div class="menu">
						<!-- 20130715 : Card 메뉴 수정  -->
						<ul class="menu_sections">
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Card/whats_starbucks_card.asp">스타벅스 카드</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Card/whats_starbucks_card.asp">스타벅스 카드란?</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/card_type_list.asp">스타벅스 카드 종류</a></dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Card/what_egift_card.asp">스타벅스 카드 e-Gift</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Card/what_egift_card.asp">스타벅스 카드 e-Gift란?</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/EGift_info.asp?MENUID=6">이용안내</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/EGift_info.asp?MENUID=7">선물하기</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/My/my_card_info.asp?MENUID=32">결제내역</a></dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Card/starbucks_register_card.asp">스타벅스 카드 관리</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Card/starbucks_register_card.asp">카드 등록/조회</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/starbucks_charge_card.asp">충전/자동충전</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/starbucks_lost_card.asp">분실신고/환불</a></dd>
								</dl>
							</li>
							<li class="endHeight02">
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Card/rewards.asp">마이 스타벅스 리워드</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Card/rewards.asp">마이 스타벅스 리워드란?</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/My/my_card_info.asp?MENUID=11">My 리워드 현황</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/My/my_card_info.asp?MENUID=12">My 별적립 현황</a></dd>
								</dl>
							</li>
							<!--
							<li>
								<dl>
									<!--[M_20140225_이현정] -->
									<!--
									<dt><a href="http://www.istarbucks.co.kr/Card/group_buy_info.asp">단체 및 기업구매<br />(스타벅스 카드/상품권)</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Card/group_buy_info.asp">구매 안내</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/group_buy_write.asp">카드/상품권 신청</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/group_info.asp?MENUID=1">카드 e-Gift 신청</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/group_info.asp?MENUID=2">카드 e-Gift 구매내역</a></dd>
									<!--//[M_20140225_이현정] -->
									<!--
								</dl>
							</li>
							-->
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Card/charge_starbucks_card.asp">더 알아보기</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Card/rules_msr.asp">스타벅스 카드 이용약관</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/charge_starbucks_card.asp">충전/이용 안내</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/refund_starbucks_card.asp">환불/교환/잔액 안내</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/starbucks_card_etc.asp">기타 안내</a></dd>
								</dl>
							</li>
						</ul>
					<!-- //20130715 : Card 메뉴 수정  -->

						<div class="menu_promo">
							
						</div>


						<!-- 20130506 추가 -->
						<ul class="menu_addMenu">
							<li>
								<dl>
									<dt>스타벅스 카드와 선물받은 e-Gift를 등록해 보세요! 특별한 혜택을 누리실 수 있습니다.</dt>
									<dd><a href="http://www.istarbucks.co.kr/My/my_card_info.asp">스타벅스 카드 등록하기</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Card/EGift_info.asp?MENUID=7">스타벅스 카드 e-Gift 선물하기</a></dd>
								</dl>
							</li>
						</ul>
						<!-- 20130506 추가 끝 -->

					</div>
				</li>

				<li id="nav_shop">
					<a href="http://www.istarbucks.co.kr/Whats_new/index_whats_new.asp" class="tab"><strong>WHAT’S NEW</strong>
					<span>프로모션 &amp; 새소식</span></a>

					<div class="menu">
						<ul class="menu_sections">
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Whats_new/campaign_list.asp">프로모션</a></dt><!-- 20140310 -->
								</dl>
							</li>
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Whats_new/store_event_list.asp?MCode=2">이벤트</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Whats_new/store_event_list.asp?MCode=2">매장 이벤트</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Whats_new/store_event_list.asp?MCode=3">매장 오픈 이벤트</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Whats_new/store_event_list.asp?MCode=4">스타벅스와 문화</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Whats_new/card_event_list.asp">스타벅스 카드 이벤트</a></dd>
									<dd style="width:300px; @letter-spacing:-1.5px;"><a href="http://www.istarbucks.co.kr/2015planner/index.asp">Journey with Starbucks Planner</a></dd>
								</dl>
							</li>
						<!-- 20130205 숨김
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Whats_new/webzine.asp">My Starbucks 웹진</a></dt>
								</dl>
							</li> -->
							<!-- 20130409 추가 -->
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Whats_new/Frequency.asp?MCode=5">e-프리퀀시</a></dt>
									<dd><a href="http://www.istarbucks.co.kr/Whats_new/Frequency.asp?MCode=5">이용안내</a></dd>
									<dd><a href="http://www.istarbucks.co.kr/Whats_new/Frequency_info.asp?MCode=6">이용조회</a></dd>
								</dl>
							</li>
							<!-- // 20130409 추가 -->
							<li>
								<dl>
									<dt><a href="http://www.istarbucks.co.kr/Whats_new/notice_list.asp">공지사항</a></dt>
								</dl>
							</li>
						</ul>

						<div class="menu_promo">
							
							<a href="http://www.istarbucks.co.kr/Whats_new/campaign_view.asp?Seq=956" >
								<p class="title">2015 SUMMER</p>
								<img src="/upload/main/20150420153542669.jpg?cmd=resize&width=140&height=77" width="140" height="77" alt="" />
								<p class="memo">가장 먼저 만나는 스타벅스의 여름, 다양한 색깔로 즐겨보세요!</p>
							</a>
							
						</div>

						<!-- 20130610 텍스트 변경  -->
						<ul class="menu_addMenu">
							<li>
								<dl>
									<dt>스타벅스 매장에서 만나실 수 있는 다양한 이벤트를 소개합니다. 오늘은 어떤 즐거움이 있을까요?</dt>
									<dd><span class="con-txt"><a href="http://www.istarbucks.co.kr/Whats_new/index_whats_new.asp">프로모션 &amp; 새소식 전체보기</a></span></dd>
								</dl>
							</li>
							<!-- 20150420 추가메뉴 -->
							<li>
								<dl>
									<dt>JUMP ON IN OUR COLORFUL ADVENTURE</dt>
									<dd class="summer"><span class="con-txt"><a href="http://www.istarbucks.co.kr/eDMurl2.asp?pageId=2015summer" style="color:#df4045">2015 여름음료 이벤트 바로가기</a></span></dd>
									<style type="text/css">
									.summer a:hover{background:#df4045 !important;color:#fff !important;}
									</style>
								</dl>
							</li>
							<!-- 20150420 추가메뉴 -->
						</ul>
						<!-- 20130610  -->

					</div>
				</li>

			</ul>
		</div>
		<!-- //메인메뉴요 -->


		<!-- // global area -->

		<!--  start 20120601 D-Day -->
		<iframe src="/inc/d-day.asp" scrolling="no" frameborder="0" class="topIframe" allowTransparency="" target="_top" title="빈페이지"></iframe>
		<!--  end 20120601 D-Day -->

		<!--  20130429 happy Timer
		<iframe src="/inc/happy_timer.asp" scrolling="no" frameborder="0" class="topIframe" allowTransparency="" target="_top"></iframe>
		 -->


	</div>
	<!-- // header -->
</body>
</html>