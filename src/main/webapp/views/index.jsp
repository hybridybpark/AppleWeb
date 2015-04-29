<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;	
%>
<!DOCTYPE html>
<html data-ng-app="myApp">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Start2</title>

    <!-- Bootstrap Core CSS -->
    <link href="/AppleWeb/Frameworks/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
	<!--     <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"> -->
	<link href="/AppleWeb/Frameworks/metisMenu.min.css" rel="stylesheet">
	
    <!-- Custom CSS -->
	<!--     <link href="../dist/css/sb-admin-2.css" rel="stylesheet"> -->
	<link href="/AppleWeb/Frameworks/sb-admin-2.css" rel="stylesheet">
	
    <!-- Custom Fonts -->
	<!--     <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
    <link href="/AppleWeb/Frameworks/font-awesome.min.css" rel="stylesheet">
    
    <!-- jQuery -->
	<!--     <script src="../bower_components/jquery/dist/jquery.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/jquery-2.1.3.js"></script>
	
    <!-- Bootstrap Core JavaScript -->
	<!--     <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
	<!--     <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script> -->
	<script src="/AppleWeb/Frameworks/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
	<!--     <script src="../dist/js/sb-admin-2.js"></script> -->
	<script src="/AppleWeb/Frameworks/sb-admin-2.js"></script>
	
	<!-- Angular JavaScript -->
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
var myApp = angular.module('myApp',[]);

myApp.controller('startController',function($scope,$http,$location){	
	$scope.url1 = 'http://placehold.it/320x180';
	$scope.url2 = "ShopList.jsp";
	$scope.shops = shops=[
	{name:'shop1',image:$scope.url1},
	{name:'shop2',image:$scope.url1},
	{name:'shop3',image:$scope.url1},
	{name:'shop4',image:$scope.url1},
	{name:'shop5',image:$scope.url1},
	{name:'shop6',image:$scope.url1},
	{name:'shop7',image:$scope.url1},
	{name:'shop8',image:$scope.url1}
	];
	
	$scope.imageClick = function(index) {
		alert(index+"");		
		$scope.url2 = "ChainList.jsp";
	};
	
	
	
	$scope.tabs = tabs = [
	{num:0,name:'ALL',type:'',address:'ALL.jsp'},
	{num:1,name:'CAFE',type:'',address:'CAFE.jsp'},
	{num:2,name:'한식',type:'',address:'KOREANFOOD.jsp'},
	{num:3,name:'중식',type:'',address:'CHINESEFOOD.jsp'},
	{num:4,name:'양식',type:'',address:'WESTERNFOOD.jsp'},
	{num:5,name:'일식',type:'',address:'JAPANESEFOOD.jsp'},
	{num:6,name:'분식',type:'',address:'FLOURFOOD.jsp'},
	{num:7,name:'Q&A',type:'',address:'QnA.jsp'}];
	
	$scope.tabClick = function(index) {		
		for(var i=0;i<8;i++){
			if(i==index){
				tabs[i].type = "active";
			}else{
				tabs[i].type = "";
			}
		}
		if(index==7){
			$scope.url2 = "QnA.jsp";
		}else{
			$scope.url2 = tabs[index].address;		
		}
	};
	
	$http.get("http://www.w3schools.com/angular/customers.php")
	 .success(function (response) {$scope.names = response.records;});
	
	$scope.itemClick = function(index) {
		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
										      + " Country : "+$scope.names[index].Country;
//											  + " Date : "+$scope.;
//											  &tc='+new Date().getTime();
		alert($scope.names[index].Name+" clicked");
		alert($scope.message);
	};
   $scope.myVar = -1;
   $scope.toggle = function(index) {
   	if($scope.myVar != index){
       	$scope.myVar = index;
   	}else{
   		$scope.myVar = -1;		
   	}
   };
	
   $scope.cancelClick = function() {
	   alert("cancel");
		$scope.$apply(function() { $location.path("http://localhost:8080/AppleWeb/views/start.jsp"); });		
		location.replace("http://localhost:8080/AppleWeb/views/start.jsp");
	};
});
</script>

</head>

<body data-ng-controller="startController">

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="start2.jsp">start2</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <%
		  		if (login){//로그인
			  	%>
			  	<li><a href=""><span class="glyphicon glyphicon-user"></span> <%=memberId %>님 환영합니다.</a></li>
			  	<li><a href="start.jsp" onclick="<%session.setAttribute("MEMBERID", "");%>"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
			  	<%
			  		}else{//비로그인
			  	%>
		        <li><a href="Join.jsp"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
		        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
		        <%
			  		}
		        %>                
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        
                        <li data-ng-repeat="tab in tabs" class="{{tab.type}}" data-ng-click="tabClick($index)">
                        	<a href="" style="background-color: white;">{{tab.name}} <span class="glyphicon glyphicon-right glyphicon-menu-right "></span></a>                        	
                        </li>	
                        <li>
                        	<a href=""  style="background-color: white;">예약목록</a>
                        	<ul class="nav nav-second-level">
                                <li class="list-group-item">
                                    <p>13:00</p>
                                    <p>예약명</p>
                                    <p>예약이름</p>
                                    <p>3명</p>
                                    <button class="btn">상세보기</button>
                                </li>                                                                
                            </ul>                        	
                        </li>                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div data-ng-include="url2"></div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    

</body>

</html>
