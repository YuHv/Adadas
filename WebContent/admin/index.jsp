<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html lang="en">
	<head>
		<link rel="shortcut icon" href="img/adadaslogo.png" type="image/x-icon">
        <title>Adadas 后台管理</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/fullcalendar.css" />	
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
	
		<div style="background-color:#2220; width:100%; height:100%;">
		
		
		<jsp:include page="optionsBar.jsp" />
		
		<!-- <div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#black" style="background-color: #000000;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div> -->
		
		<div id="content" style="background-color:#FFFFFF; height:87%;">
			<div id="content-header">
				<div style="width:100%; height:100%; background-color:#FFFFFF;">
					<h1>主页</h1>
				</div>
		
			</div>
			<div id="breadcrumb" style="width:100%;background-color:#FFFFFF;">
				
				<a href="AdministratorAction!myLogin" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 主页</a>
				
				
			</div>
			<div class="container-fluid">
				
				<div class="row-fluid">
					<div class="span12">
						<div class="alert alert-info">
							欢迎来到Adadas 后台管理系统！
							<a href="#" data-dismiss="alert" class="close">×</a>
						</div>
						<div class="widget-box">
						<div style="width:100%; background-color:#FFFFFF;">
							<div class="widget-title"><span class="icon"><i class="icon-signal"></i></span><h5>选择</h5><div class="buttons"></div></div>
							<div class="widget-content">
								<div class="row-fluid">
								<div class="span12">
									<ul class="site-stats">
										
										<li><i class="icon-arrow-right"></i> <strong><a href="OrdersAction!ordersDate" style="color:#000000;">今日订单</a></strong></li>
										<li class="divider"></li>
										<li><i class="icon-shopping-cart"></i> <strong><a href="menuAdd.jsp" style="color:#000000;">添加鞋</a></strong></li>
										
									</ul>
								</div>
								</div>							
							</div>
							</div>
						</div>					
					</div>
				</div>
			
			</div>
		</div>
		
		</div>

            <script src="js/excanvas.min.js"></script>
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.flot.min.js"></script>
            <script src="js/jquery.flot.resize.min.js"></script>
            <script src="js/jquery.peity.min.js"></script>
            <script src="js/fullcalendar.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.dashboard.js"></script>
	</body>
</html>
