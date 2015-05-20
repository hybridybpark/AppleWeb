<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<style>
.portfolio-item {
    margin-bottom: 25px;
    
}
</style>

<div class="row">
	<div data-ng-repeat="x in shops | orderBy :'sid'">
            <div class="col-sm-3 portfolio-item" data-ng-show="($index+1 < currentPage*maxSize) &&($index+1 > (currentPage-1)*maxSize)" style="height: 300px;">
                <a>
<!--                     <img class="img-responsive" src="http://placehold.it/700x400" alt=""> -->
                    <img class="img-responsive" src="{{x.image}}" alt="{{x.name}}" data-ng-click="imageClick($index)" style="height: 200px;">
                </a>
                <h3>
                    <a data-ng-click="imageClick($index)">{{x.name}}</a> 
                </h3>
                
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