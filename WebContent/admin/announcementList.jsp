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
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
		<div style="background-color:#2220; width:100%; height:100%;">
		
		<jsp:include page="optionsBar.jsp"/>
		<div id="content" style="background-color:#FFFFFF; height:87%;">
			<div id="content-header">
				<div style="width:100%; height:100%;  background-color:#FFFFFF;">
					<h1>公告管理</h1>
				</div>
				<%-- <div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div> --%>
			</div>
			<div id="breadcrumb" style="width:100%; background-color:#FFFFFF;">
				<a href="AdministratorAction!myLogin" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 主页</a>
				<a href="#">公告模块</a>
				<a href="#" class="current">公告列表</a>
			</div>
			<div class="widget-box" style="width:100%; background-color:#FFFFFF;">
							<div class="widget-title" >
								<div style="width:100%;  background-color:#FFFFFF;">
									<span class="icon">
									<i class="icon-th"></i>
									</span>
									<h5>公告列表</h5>
								</div>
								
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>内容</th>
											<th>更新时间</th>
											<th>更新作者</th>
											<th>操作</th>
											
										</tr>
									</thead>
									<tbody>
								<s:iterator value="#session.announcementList" id="a">
										<tr>
											<td><s:property value="#a.content"/>...</td>
											<td><s:property value="#a.time"/></td>
											<td><s:property value="#a.username"/></td>
											<td>
									<a class="btn btn-danger" href="javascript:if(confirm('确实要删除该公告信息吗?'))location='AnnouncementAction!myDel?id=<s:property value="#a.id"/>'"><i class="icon-remove icon-white"></i> 删除</a></td>
										</tr>
									</s:iterator>
									</tbody>
								</table>							
							</div>
						</div>
		</div>
		</div>
		
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/jquery.validate.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_validation.js"></script>
	</body>
</html>
