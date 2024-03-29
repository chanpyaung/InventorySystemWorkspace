<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>AutoMobile Inventory System</title> <!-- Bootstrap -->

			<link href="/InventoryWebSA40Team6/bootstrap/css/bootstrap.min.css"
				type="text/css" rel="stylesheet" />
			<link href="/InventoryWebSA40Team6/bootstrap/css/bootstrap2.min.css"
				type="text/css" rel="stylesheet" />
			<link
				href="/InventoryWebSA40Team6/bootstrap/css/bootstrap-data-table.css"
				type="text/css" rel="stylesheet" />
			<link
				href="/InventoryWebSA40Team6/bootstrap/css/bootstrap-theme.min.css"
				type="text/css" rel="stylesheet" />
			<link href="/InventoryWebSA40Team6/bootstrap/css/style.css"
				type="text/css" rel="stylesheet" />

			<script type="text/javascript"
				src="/InventoryWebSA40Team6/bootstrap/js/jquery-1.11.3.min.js"></script>
			<script type="text/javascript"
				src="/InventoryWebSA40Team6/bootstrap/js/jquery-1.11.1.min.js"></script>
			<script type="text/javascript"
				src="/InventoryWebSA40Team6/bootstrap/js/jquery.dataTables.min.js"></script>
			<script type="text/javascript"
				src="/InventoryWebSA40Team6/bootstrap/js/dataTables.bootstrap.js"></script>
			<script type="text/javascript"
				src="/InventoryWebSA40Team6/bootstrap/js/bootstrap.min.js"></script>				
			<script type="text/javascript"
				src="/InventoryWebSA40Team6/bootstrap/js/modal.js"></script>
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="row ">
				<div class="col-md-7">
					<img src='./images/3.png' class="col-xs-12">
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->
	<c:if test="${sessionScope.userT.userType==\"Admin\"}">
		<div class="menu">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Automobile Inventory System</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false">Product
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Maintain Product</a></li>
										<li class="divider"></li>
										<li><a href="/AddNewProduct.jsp">Add Product</a></li>
										
									</ul></li>

								<li class="dropdown"><a href="order.jsp"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-expanded="false">Order <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="order.jsp">Make Order</a></li>
										<li class="divider"></li>
										<li><a href="#">Comfirm Order</a></li>
										<li class="divider"></li>
										<li><a href="#">Transaction History</a></li>
									</ul></li>

								<li class="dropdown"><a href="order.jsp"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-expanded="false">Inventory<span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="DamageForm.jsp">Maintain Inventory</a></li>
									</ul></li>
							</ul>

						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid --> </nav>
				</div>
			</div>
		</div>

	</div>
	</c:if>
	<c:if test="${sessionScope.userT.userType==\"Mechanic\"}">
		<div class="menu">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Mechanic</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false">Product
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Maintain Product</a></li>
										<li class="divider"></li>
										<li><a href="/AddNewProduct.jsp">Add Product</a></li>
										
									</ul></li>

								<li class="dropdown"><a href="order.jsp"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-expanded="false">Order <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="order.jsp">Make Order</a></li>
										<li class="divider"></li>
										<li><a href="#">Comfirm Order</a></li>
										<li class="divider"></li>
										<li><a href="#">Transaction History</a></li>
									</ul></li>

								<li class="dropdown"><a href="order.jsp"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-expanded="false">Inventory<span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="DamageForm.jsp">Maintain Inventory</a></li>
									</ul></li>
									
								<li><a href="EnterUsage.jsp">Enter Usge Detail</a></li>
								<input type="text" class="pull-right" data-toggle="modal" data-target="#myModal">Advanced Search
								
					
							</ul>

						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid --> </nav>
				</div>
			</div>
		</div>

	</div>
	</c:if>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="gridsystemModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="gridsystemModalLabel">Advanced Search</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<div class="row">
									<div class="col-md-12">
									<div class="col-md-4"><input type="text" class="form-control" placeholder="Name" name="name"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="Manufacturer" name="manu"/></div>
									<div class="col-md-4"><input type="number" class="form-control" placeholder="333$" name="price"/></div>
									</div>
									</div>
									<hr />
									<div class="row">
									<div class="col-md-12">
									<div class="col-md-4"><input type="text" class="form-control" placeholder="Re-Order Level" name="rorder"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="Shelf Location" name="shelf"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="color" name="color"/></div>
									</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Search</button>
							</div>
						</div>
					</div>
				</div>						

	<decorator:body />


	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<center>
						<p>Copyright @ 2015-2016.All Right Reserved by SA 40 Team 6</p>
					</center>
				</div>
			</div>
		</div>

	</div>


</body>


</html>