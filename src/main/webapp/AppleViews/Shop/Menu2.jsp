<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-ng-app="mainApp">
<title>메뉴</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="/AppleWeb/Frameworks/angular-1.3.15/angular.js"></script>

<!-- <!-- js 참조 -->
<!-- <script src="/AppleWeb/js/Menu/Menu.js"></script> -->
<!-- <!-- css참조 --> 
<!-- <script src="/AppleWeb/css/Menu/menu.css"></script> -->
<style type="text/css">
#bottom-fixed-inventory{
	position : fixed;	
  	bottom: 0;  
  	height: 60px;
  	background-color: #B22222;
  	border: 1px solid white;
  	padding-left: 20px;
  	padding-right: 20px;
  	width: 100%;
  	max-width: 1024px;
}
</style>
</head>
<body>

	<div class="container">
		
		<h2>Menu</h2>
		<accordion>
		    <accordion-group heading="{{c.mcategory}}" data-ng-repeat="c in category" data-ng-click="accordionHeadingClick($index)" is-open="$index==openValue">
		      <div class="col-sm-3 col-lg-3 col-md-3" data-ng-repeat="x in menulist" data-ng-show="x.mcategory==c.mcategory && shopinfo.businessnumber== x.bnumber && shopinfo.shopname==x.sname"
							style="height: 480px;">
							<div class="thumbnail">
								<a data-ng-click="menuItemClick(x.SID)"><img src="{{x.mimage}}"></a>
								<div class="caption">
									<h4 class="pull-right">{{x.mprice}} 원</h4>
									<h4>
										<a data-ng-click="menuItemClick(x.SID)">{{x.mname}} </a>
									</h4>
									<p>{{x.mdesc}}</p>
								</div>
								<div class="ratings">
									<p class="pull-right">15 reviews</p>
										<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span>
									</p>
								</div>
							</div>
						</div>
		    </accordion-group>		    
	  	</accordion>
		
		
			<div id="bottom-fixed-inventory">					
				
				<form class="form-inline" style="margin-top: 8px;">					
					<div class="form-group">						
						<h4 class="text-danger" style="color: #FFF8DC;">메뉴를 선택해 주세요.</h4>
					</div>
					<div class="form-group">
						
						<div class="btn-group dropup" dropdown >
					      <button type="button" class="btn btn-danger dropdown-toggle" dropdown-toggle>
					        {{selectedMenuItem.length}}개의 메뉴가 선택되었습니다. <span class="caret"></span>
					      </button>
					      <ul class="dropdown-menu list-group" role="menu">
					        <li data-ng-repeat="i in selectedMenuItem track by $index" class="row list-group-item">	
					        	
					        		<div class="col-sm-9"><a class="inline">{{i.Mname}} {{i.Mprice}}원</a></div>
					        		<div class="col-sm-3">
					        			<button class="btn btn-danger btn-inline" data-ng-click="deleteInventoryItem($index)">
			        				<span class="glyphicon glyphicon-remove"></span></button>	
					        		</div>
					        				        								        						        
					        </li>					        
					      </ul>
					    </div>
					    
					</div>													
					<button class="btn btn-defult" data-ng-click="goReservation()")>예약하기</button>
					<button class="btn btn-defult" data-ng-click="clearInventory()">초기화</button>
					<div class="form-group">
						<h4 class="text-danger" style="color: #FFF8DC;">총 금액은 {{allPriceInventory()}}원 입니다.</h4>
					</div>
					
				</form>
			</div>
					
			
			
			
		</div>
</body>
</html>