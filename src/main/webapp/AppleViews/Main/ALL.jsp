<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<h4 class="text-primary"> Category - ALL </h4>
<hr style="border: 1px solid red;">

<div class="row">
<div data-ng-repeat="x in shops | orderBy :'-shopmark'">
	<div data-ng-if="($index == (currentPage-1)*maxSize)">		
		<div class="col-xs-6 col-md-6">			
		    <div class="thumbnail" data-ng-show="($index+1 < currentPage*maxSize) &&($index+1 > (currentPage-1)*maxSize)" >
		      <img src="{{x.shopimage}}" alt="{{x.shopname}}" data-ng-click="imageClick($index)" style="width: 480px;height: 360px;">
		      <div class="caption">
		      	<h4>{{$index}} {{x.shopname}}</h4>
		      	<p>{{x.shopmark}}</p>
		      </div>			     
		    </div>    
		  </div>
	</div>
	  <div data-ng-if="$index != (currentPage-1)*maxSize">
			<div class="col-xs-6 col-md-3">
			    <div class="thumbnail" data-ng-show="($index < currentPage*maxSize) &&($index+1 > (currentPage-1)*maxSize) ">
			      <img src="{{x.shopimage}}" alt="{{x.shopname}}" data-ng-click="imageClick($index)" style="width: 240px;height: 180px;">
			      <div class="caption">
			      	<h4>{{$index}} {{x.shopname}}</h4>
			      	<p>{{x.shopmark}}</p>
			      </div>			     
			    </div>    
			  </div>
		</div>
</div>
</div>




<div class="row">
	
	<div class="col-md-offset-4">
	<pagination boundary-links="true" 
	      total-items="totalItems" 
	      ng-model="currentPage" 
	      class="pagination-sm" 
	      previous-text="&lsaquo;" 
	      next-text="&rsaquo;" 
	      first-text="&laquo;" 
	      last-text="&raquo;">
	      </pagination>
	</div>
	
</div>
<hr style="border: 1px solid red;">