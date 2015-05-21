<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	<div class="panel panel-info">
		<div class="panel-header" style="padding:35px 50px;">          
          <h4><span class="glyphicon glyphicon-lock"></span> 관리자 로그인</h4>
        </div>
        <div class="panel-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> ADMIN ID: </label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter ADMIN ID" data-ng-model="adminlogin.adminid">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password: </label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password" data-ng-model="adminlogin.adminpassword">
            </div>            
              <button type="button" class="btn btn-success" data-ng-click="doSubmit()"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>        
	</div>	



