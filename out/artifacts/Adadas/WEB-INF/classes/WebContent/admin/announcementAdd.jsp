<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
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
		<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
		<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
		<script charset="utf-8" src="kindeditor-4.1.7/kindeditor.js"></script>
		<script charset="utf-8" src="kindeditor-4.1.7/lang/zh_CN.js"></script>
		<script charset="utf-8" src="kindeditor-4.1.7/plugins/code/prettify.js"></script>	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content1"]', {
				cssPath : '../plugins/code/prettify.css',
				uploadJson : 'upload_json.jsp',
				fileManagerJson : '../jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	</head>
	<body>
		<div style="background-color:#2220; width:100%; height:100%;">
		
		<jsp:include page="optionsBar.jsp"/>
		
		<div id="content" style="background-color:#FFFFFF; height:87%;">
			<div id="content-header">
				<div style="width:100%; height:100%; background-color:#FFFFFF;">
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
				<a href="AnnouncementAction!myShow">公告列表</a>
				<a href="#" class="current">添加公告</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<div style="width:100%;height:100%; background-color:#FFFFFF;">
									<span class="icon">
									<i class="icon-pencil"></i>
									</span>
									<h5>添加公告</h5>
								</div>
								
							</div>
							<div class="widget-content nopadding">
								<form id="form-wizard" class="form-horizontal" action="AnnouncementAction!myAdd" method="post" />
									<% session.setAttribute("conetext",htmlData);%>
									<div class="control-group">
										<label class="control-label">公告内容</label>
										<div class="controls">
											
										<s:textarea name="announcement.content"></s:textarea> 	
										<textarea name="content1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea>
											<br />
											
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
				
				<!-- <div class="row-fluid">
					<div id="footer" class="span12">
						2014 &copy; 小弟的私人飞机. 	 <a href="https://wrapbootstrap.com/user/diablo9983">裤兜里有杀气丶</a>
					</div>
				</div> -->
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
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>