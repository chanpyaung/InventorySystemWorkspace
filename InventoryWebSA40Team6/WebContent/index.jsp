<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SitemeshDemo</title> 
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" type="text/css" rel="stylesheet" />
<link href="bootstrap/css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="bootstrap/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="row ">
				<div class="col-lg-12">
					<a href="#"><img src='images/3.png'></a>
				</div>	
			</div>	
		</div>
	</div><!-- End header -->
	
	<div class="container" style="height:490px">
	<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12" >
	<br><br><br><br>
	</div>
	</div>
	  <div class="row">
	  <div class="container">
	  <div class="col-md-4 col-sm-4 col-xs-4"></div>
	  <div class="col-md-4 col-sm-4 col-xs-4 thumbnail" 
	  style="-webkit-box-shadow: 0 8px 6px -6px black;
			 -moz-box-shadow: 0 8px 6px -6px black;
			  box-shadow: 0 8px 6px -6px black;">
	  <div class="col-md-1"></div>
	  <div class="col-md-10">
      <form class="form-signin" action="/InventoryWebSA40Team6/ValidateLogin" method=post>
        <h2 class="form-signin-heading">Please sign in</h2>
        <hr>
        <br>
		<c:if test="${flag==\"false\"}">
			<h4 style="color:red">Invalid Login! Please try again.</h4>
		</c:if>	
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="User Name" name="name" required autofocus >
        <br>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="-webkit-box-shadow: 0 8px 6px -6px black;
			 -moz-box-shadow: 0 8px 6px -6px black;
			  box-shadow: 0 8px 6px -6px black;">Sign in</button>
        <br><br>
      </form>
      </div>
      <div class="col-md-1"></div>
     
      <div class="col-md-4"></div>
      </div>
      </div>
      </div>
    </div> <!-- /container -->

		<div class="footer">
	<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<center><p>Copyright @ 2015-2016.<br>All Right Reserved by SA 40 Team 6</p></center>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>