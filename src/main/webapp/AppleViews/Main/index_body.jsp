<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>


        
        
        
        <div class="container">
        <div class="row" style="vertical-align: middle; text-align: center; height: 100px;">					
					<div class="col-sm-offset-3 col-sm-6">
						<h1><a href="/AppleWeb/Apple/"><img src="/AppleWeb/Images/Main/templogo.png" alt="Apple" style="width: 180px;" /></a></h1>
						<div class="input-group">							
						    <input type="text" class="form-control" placeholder="가게 이름을 입력해 주세요" data-ng-model="searchText">
						      <span class="input-group-btn">
						        <button class="btn btn-default" type="button" data-ng-click="goSearch()">Go!</button>
						      </span>
					    </div><!-- /input-group -->	
					</div>
		</div>
       	</div>
        <!-- Page Content -->
        <div id="page-wrapper" style="margin-left: 0px;">
            <div class="container-fluid">            	
            	 
        		
        	
        
        <hr style="border: 1px solid red;">     
        
                <!-- /input-group -->     
            	
            	
            	<div class="media">
            		<div class="media-left">
            			 <nav class="container" style="width: 180px;">
		            <div class="navbar-default sidebar" role="navigation"  style="width: 150px;">
		                <div class="sidebar-nav navbar-collapse" style="width: 150px;">
		                    <ul class="nav" id="side-menu" style="width: 150px;">		                       
		                        <li>
		                        	<a ng-mouseenter="show1 = true" ng-mouseleave="show1 = false" style="padding: 0px;" ng-click="tabClick(0)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_all.jpg" data-ng-show="!show1"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_all1.jpg" data-ng-show="show1"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show2 = true" ng-mouseleave="show2 = false" style="padding: 0px;" ng-click="tabClick(1)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_cafe.jpg" data-ng-show="!show2"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_cafe1.jpg" data-ng-show="show2"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show3 = true" ng-mouseleave="show3 = false" style="padding: 0px;" ng-click="tabClick(2)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_korean.jpg" data-ng-show="!show3"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_korean1.jpg" data-ng-show="show3"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show4 = true" ng-mouseleave="show4 = false" style="padding: 0px;" ng-click="tabClick(3)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_china.jpg" data-ng-show="!show4"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_china1.jpg" data-ng-show="show4"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show5 = true" ng-mouseleave="show5 = false" style="padding: 0px;" ng-click="tabClick(4)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_american.jpg" data-ng-show="!show5"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_american1.jpg" data-ng-show="show5"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show6 = true" ng-mouseleave="show6 = false" style="padding: 0px;" ng-click="tabClick(5)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_japan.jpg" data-ng-show="!show6"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_japan1.jpg" data-ng-show="show6"   style="width: 150px;">
		                        	</a>
		                        </li>
		                        <li>
		                        	<a ng-mouseenter="show7 = true" ng-mouseleave="show7 = false" style="padding: 0px;" ng-click="tabClick(6)">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_sanck.jpg" data-ng-show="!show7"   style="width: 150px;">
		                        		<img alt="" src="/AppleWeb/Images/Main/category/category_sanck1.jpg" data-ng-show="show7"   style="width: 150px;">
		                        	</a>
		                        </li>		                            
		                    </ul>
		                </div>
		                <!-- /.sidebar-collapse -->
		            </div>
		            <!-- /.navbar-static-side -->
		        </nav>
            		</div>
            		<div class="media-body" align="center">
            			<div id="myCarousel" class="carousel slide" data-ride="carousel">
					    <!-- Indicators -->
					    <ol class="carousel-indicators" style="bottom: -10px;">
					      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					      <li data-target="#myCarousel" data-slide-to="1"></li>
					      <li data-target="#myCarousel" data-slide-to="2"></li>      
					    </ol>
					
					    <!-- Wrapper for slides -->
					    <div class="carousel-inner" role="listbox">
					      <div class="item active">
					        <img src="/AppleWeb/Images/Main/h119200_620.jpg" alt="Chania" width="460" height="345">
					      </div>
					
					      <div class="item">
					        <img src="/AppleWeb/Images/Main/drive_620.jpg" alt="Chania" width="460" height="345">
					      </div>
					    
					      <div class="item">
					        <img src="/AppleWeb/Images/Main/garosugil_620.jpg" alt="Flower" width="460" height="345">
					      </div>     
					    </div>   
					  </div>
            		</div>
            		<div class="media-right">
            			<img alt="" src="/AppleWeb/Images/Main/h119037a_z.jpg" width="180" data-ng-show="true">
            			
            		</div>
            	</div>
            	
            	
       	<hr style="border: 1px solid red;">
                <div class="row">
                    <div class="col-sm-12">
                        <div data-ng-include="url2"></div>						
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->   
            
        </div>
        <!-- /#page-wrapper -->		
		
		
		
