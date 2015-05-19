<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<style>
.portfolio-item {
    margin-bottom: 25px;
    
}
</style>
<h3 class="text-primary"> {{categoryName}} <small>{{categorySmallName}}</small></h3>
<hr style="border: 1px solid red;">

<div class="row">
	<div data-ng-repeat="x in shops | orderBy :'-shopmark'">
            <div class="col-sm-4 portfolio-item" data-ng-show="($index < currentPage*maxSize) &&($index+1 > (currentPage-1)*maxSize)">
                <a>
<!--                     <img class="img-responsive" src="http://placehold.it/700x400" alt=""> -->
                    <img class="img-responsive" src="{{x.shopimage}}" alt="{{x.shopname}}" data-ng-click="imageClick($index)" style="height: 200px;">
                </a>
                <h3>
                    <a data-ng-click="imageClick($index)">{{x.shopname}}</a> <small>{{x.shopmark}}</small>
                </h3>
                <p style="height: 80px;">{{x.shopinfo}}</p>
            </div>
            </div>
 </div>
<div class="text-center" data-ng-show="totalItems==0">
	<h2 class="text-danger">No Results</h2>
</div>

<div class="row">
	
	<div class="col-sm-offset-4">
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