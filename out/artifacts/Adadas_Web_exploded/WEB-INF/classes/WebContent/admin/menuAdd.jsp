<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html lang="en">
	<head>
		<link rel="shortcut icon" href="img/adadaslogo.png" type="image/x-icon">
        <title>Adadas 后台管理</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
		<div style="background-color:#2220; width:100%; height:100%;">
		
		<jsp:include page="optionsBar.jsp"/>
		
		<div id="content" style="background-color:#FFFFFF; height:87%;">
			<div id="content-header">
				<div style="width:100%; height:100%; background-color:#FFFFFF;">
					<h1>鞋单</h1>
				</div>
				
				<%-- <div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div> --%>
			</div>
			<div id="breadcrumb" style="width:100%;background-color:#FFFFFF;">
				<a href="AdministratorAction!myLogin" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 主页</a>
				<a href="MenuAction!menuShow">鞋单列表</a>
				<a href="menuAdd.jsp" class="current">添加鞋单</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<div style="width:100%; height:100%; background-color:#FFFFFF;">
								<span class="icon">
									<i class="icon-pencil"></i>
								</span>
								<h5>添加鞋单列表</h5>
								</div>
							</div>
							<div class="widget-content nopadding">
								<form id="form-wizard" class="form-horizontal" action="MenuAction!myAdd" enctype="multipart/form-data"  method="post" >
									<div id="form-wizard-1" class="step">
										<div class="control-group">
											<label class="control-label">鞋名</label>
											<div class="controls">
												<input name="menu.dishes" type="text" />
											</div>
										</div>
											<div class="control-group">
											<label class="control-label">价格</label>
											<div class="controls">
												<input name="menu.price" type="text"  />
											</div>
										</div>
									<div class="control-group">
											<label class="control-label">简介</label>
											<div class="controls">
												<input name="menu.synopsis" type="text"  />
											</div>
										</div>
									
									</div>
										
									<div id="form-wizard-2" class="step">
											
										<div class="control-group">
											<label class="control-label">图片</label>
											<div class="controls">
												<s:file name="file" label="图片"></s:file>
												<span class="help-block">图片格式为  image/bmp,image/png,image/gif,image/jpeg,image/jpg 大小为102400</span>
											</div>
										</div>
										</div>
									
									<div class="form-actions">
											<input id="back" class="btn btn-primary" type="reset" value="返回" />
											<input id="next" class="btn btn-primary" type="submit" value="提交" />
											<div id="status"></div>
									</div>
									<div id="submitted"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
		</div>
		
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.validate.js"></script>
            <script src="js/jquery.wizard.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.wizard.js"></script>
	</body>
</html>
