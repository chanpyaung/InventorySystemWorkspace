<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Enquiry Transaction History</title>
	
  
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<center><h4>Enquiry Transaction History</h4></center>
			<div class="col-md-11 col-sm-8 col-xs-8">
				<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#myModal">Advanced Search</button>
			<form name= "searchform" action= "/InventoryWebSA40Team6/transactionSearching" method="Get" >
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
									<div class="col-md-4"><input type="text"  class="form-control" placeholder="Order Transaction ID" name="orTransId"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="Part No" name="partNo"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="ManufacturerName" name="manuName"/></div>
									</div>
									</div>
									<hr />
									<div class="row">
									<div class="col-md-12">
									<div class="col-md-4"><input type="date"  id = "datepicker" class="form-control" placeholder="OrderDate" name="orderDate"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="User ID" name="userId"/></div>
									<div class="col-md-4"><input type="text" class="form-control" placeholder="Order Status" name="orderStatus"/></div>
									</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								
								<button type="submit" class="btn btn-primary" >Search</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
			<div class="col-md-1 col-sm-4 col-xs-4"></div>
		</div>
	</div>
	<div class="row"><br><br></div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
			<div class="table-responsive">
				<table id ="inventory" class="table table-hover">
					<thead>
						<tr>
							<th>No</th>
							<th>Order Transaction ID</th>
							<th>Part No</th>
							<th>Order Quantity</th>
							 <th>ManufacturerName</th>
							<th>Order Date</th>
							<th>User ID</th>
							<th>Order Price</th>
							<th>Order Status</th>
						</tr>
					</thead>
					<tbody>
						
							<c:forEach var="tran" items="${trList}" varStatus="status">
							
							<tr>
							<td>${status.index+1}</td>
							<td>${tran.orTransId}</td>
							<td>${tran.partNo}</td>
							<td>${tran.orderQty}</td>
							<td>${tran.manuName}</td>
							<td><f:formatDate value="${tran.orderDate}" pattern="yyyy/MM/dd"/></td>
							<td>${tran.userId}</td>	
							<td>${tran.orderPrice}</td>
							<td>${tran.orderStatus}</td>
							</tr>
							</c:forEach>
							<%-- <input type="hidden" value="${tran.orTransId}"} /> --%>
					</tbody>
				</table>
				
				<script type="text/javascript">
	$(document).ready(function() {
    $('#inventory').DataTable();
	} );
</script>
				
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-11">
					<nav class="pull-right">
					
				<ul class="pagination pull-right">
				
				
				
				
<%-- 				<c:forEach begin="1" end="${noOfPages}" var="i">
				<c:choose>
					<c:when test="${currentPage eq i}">
						<td>${i}</td>
					</c:when>
					<c:otherwise>
						<td><a href="employee.do?page=${i}">${i}</a></td>
					</c:otherwise>
				</c:choose>
			</c:forEach> --%>
				
				
				
				
				
				
				
				
				
					
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li class="disabled"><a href="#" aria-label="Next"><span aria-hidden="true">&laquo;</span></a></li>
				</ul>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script type="text/javascript">
	$(function() {
		console.log($("#datepicker").val());
	    $( "#datepicker" ).datepicker();
	 });
	</script>
</div>
</body>
</html>