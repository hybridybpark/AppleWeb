<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>메뉴</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>Menu</h2>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1"> CATEGORY A</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body" data-ng-repeat="x in list">

						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<a href="">{{x.Mimage}}</a>
								<div class="caption">
									<h4 class="pull-right">$24.99</h4>
									<h4>
										<a href="#"> First Product </a>
									</h4>
									<p>This menu is... .</p>
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
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$64.99</h4>
									<h4>
										<a href="#"> Second Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">12 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$74.99</h4>
									<h4>
										<a href="#"> Third Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">31 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$84.99</h4>
									<h4>
										<a href="#"> Fourth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">6 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Fifth Menu </a>
									</h4>
									<p>음식설명</p>
								</div>
								<div class="ratings">
									<p class="pull-right">18 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Sixth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">13 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2"> CATEGORY B </a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">

						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$24.99</h4>
									<h4>
										<a href="#"> First Product </a>
									</h4>
									<p>This menu is...</p>
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
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$64.99</h4>
									<h4>
										<a href="#"> Second Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">12 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$74.99</h4>
									<h4>
										<a href="#"> Third Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">31 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$84.99</h4>
									<h4>
										<a href="#"> Fourth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">6 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/147x147"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Fifth Menu </a>
									</h4>
									<p>음식설명</p>
								</div>
								<div class="ratings">
									<p class="pull-right">18 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Sixth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">13 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3"> CATEGORY C </a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">

						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$24.99</h4>
									<h4>
										<a href="#"> First Product </a>
									</h4>
									<p>This menu is ..</p>
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
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$64.99</h4>
									<h4>
										<a href="#"> Second Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">12 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$74.99</h4>
									<h4>
										<a href="#"> Third Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">31 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$84.99</h4>
									<h4>
										<a href="#"> Fourth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">6 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Fifth Menu </a>
									</h4>
									<p>음식설명</p>
								</div>
								<div class="ratings">
									<p class="pull-right">18 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Sixth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">13 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse4"> CATEGORY D </a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">

						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$24.99</h4>
									<h4>
										<a href="#"> First Product </a>
									</h4>
									<p>This menu is...</p>
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
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$64.99</h4>
									<h4>
										<a href="#"> Second Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">12 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$74.99</h4>
									<h4>
										<a href="#"> Third Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">31 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$84.99</h4>
									<h4>
										<a href="#"> Fourth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">6 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Fifth Menu </a>
									</h4>
									<p>This menu is...</p>
								</div>
								<div class="ratings">
									<p class="pull-right">18 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img alt="" src="http://placehold.it/320x150"></img>
								<div class="caption">
									<h4 class="pull-right">$94.99</h4>
									<h4>
										<a href="#"> Sixth Product </a>
									</h4>
									<p>This is a short description. Lorem ipsum dolor sit…</p>
								</div>
								<div class="ratings">
									<p class="pull-right">13 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star-empty"> </span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
