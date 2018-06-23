<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/JunkFood.png" type="image/x-icon">
    <title>Adadas</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/customerservice.css" rel="stylesheet" type="text/css" />
	<link href="css/My.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.js"></script>
	<script type="text/javascript" src="js/scrolltopcontrol.js"></script>
	<script type="text/javascript" >
		$(document).ready(function(){
	
	$("#aFloatTools_Show").click(function(){
		$('#divFloatToolsView').animate({width: 'show', opacity: 'show'}, 'normal',function(){
			$('#divFloatToolsView').show();
		});
		$('#aFloatTools_Show').attr('style','display:none');
		$('#aFloatTools_Hide').attr('style','display:block');
	});
	
	$("#aFloatTools_Hide").click(function(){
		$('#divFloatToolsView').animate({width: 'hide', opacity: 'hide'}, 'normal',function(){
			$('#divFloatToolsView').hide();
		});
		$('#aFloatTools_Show').attr('style','display:block');
		$('#aFloatTools_Hide').attr('style','display:none');
	});
	
});
	if(window.name != "bencalie"){
     location.reload();
     window.name = "bencalie";
}
else{
     window.name = "";
}
	</script>
  </head>

  <body>
  <jsp:include page="page/head.jsp"/>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1">f</li>
      
      </ol>
      <div class="carousel-inner">
   		
        <div class="item active">
          <img src="images/shoes1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
            	<a style="font-size:350%; color:#FFFFFF; text-decoration:none;">Welcome to choose shoes</a>
            	<br /><br /><br />
       			<a style="font-size:200%; color:#FFFFFF; text-decoration:none;">欢迎选购本店鞋子</a>
       			<br /><br /><br /><br /><br /><br /><br /><br />
            </div>
          </div>
        </div>
        
      
        
        <div class="item">
          <img src="images/shoes2.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
				<a style="font-size:350%; color:#FFFFFF; text-decoration:none;">Welcome to choose shoes</a>
            	<br /><br /><br />
       			<a style="font-size:200%; color:#FFFFFF; text-decoration:none;">欢迎选购本店鞋子</a>
       			<br /><br /><br /><br /><br /><br /><br /><br />
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->

<!-- <div style="width:100%;height:50px;margin-top:50px; color:#222222；position:absolute">
<div style="font-size:20px;width:950px; height:50px; margin:0 auto;  text-align:center">欢迎来到 "<b>小弟的私人飞机</b>" 在线订餐网站<br><br>这里提供最新鲜，最美味，最便捷，最安全的食物。让你重温旧梦找回家的感觉！Thx</div>
</div> -->

	<div class="tuijian_area">
		<div class="tuijian">精品选购</div>
	</div>
<br><br><br><br>
    <div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row" style="width:100%;">
        <div style="width:90%; margin:0 auto; float:none;">
        <!-- 获取所有商品 -->
        <s:iterator value="#session.menuload" id="m">
        <div class="col-lg-4" style="width: 33.3333333%;
    float:left;
    margin-top:20px;">
          <img class="img-circle" src="<s:url value="%{#request.m.path}"/>" style="width:140px;height:140px" alt="Generic placeholder image">
          <h2><s:property value="#request.m.dishes"/></h2>
          <p><s:property value="#request.m.synopsis" /></p>
		  <p ><span style="color:red">￥<s:property value="%{#request.m.price}"/>元</span></p>
          <p><a class="btn btn-default" href="MenuAction!myDetail?id=<s:url value="%{#request.m.id}"/>" role="button">查看详情&raquo;</a></p>
        </div><!-- /.col-lg-4 -->
       </s:iterator>
       
       
		
		<%-- <nav style="text-align: center">
		<ul class="pagination">
			<s:bean name="org.apache.struts2.util.Counter" id="counter">
			<s:param name="first" value="1" />
			<s:param name="last" value="6" />
			<s:iterator>
				<s:property value="<li><a href="#">«</a></li>"/>
			</s:iterator>
			</s:bean> 
		<li><a href="#">«</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">»</a></li>
		</ul>
		</nav>--%>
      
		</div>
		
		
      </div><!-- /.row -->

    <br><br>
	<nav style="text-align: center">
		<ul class="pagination">
		<li><a href="#">«</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">»</a></li>
		</ul>
		</nav>
		<center>
		<footer>
        <p class="center">&copy; Adadas 网上购物系统，愿您度过好时光！</p>
      </footer>
      </center>
    </div><!-- /.container -->
    
    


<!-- 登录Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">登陆</h4>
      </div>
      <div class="modal-body">
	  <form action="ClientAction!myLogin" method="post" style="font-size:20px">
       <p>用户名：</p><input type="text" name="client.username"class="form-control" placeholder="username" required autofocus><br>
	   <p>密  码：</p><input type="password"  name="client.password" class="form-control" placeholder="password" required autofocus><br>
	   <div class="modal-footer">
		
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">登陆</button>
      </div>
	  </form>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--注册 Modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">注册</h4>
      </div>
      <div class="modal-body">
        <form style="font-size:20px" action="ClientAction!myRegister" method="post">
		<p>用户名：</p><input type="text" name="client.username" class="form-control" placeholder="username" required autofocus><br>
		<p>密  码：</p><input type="text"  name="client.password" class="form-control" placeholder="password" required autofocus><br>
		<p>联系电话：</p><input type="text" name="client.telephone" class="form-control" placeholder="telephone" required autofocus><br>
		<p>地址：</p><input type="text" name="client.address" class="form-control" placeholder="address" required autofocus><br>
		<p>邮箱地址</p><input type="text" name="client.email" class="form-control" placeholder="email" required autofocus><br>
		 <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">注册</button>
      </div>
		</form>
      </div>
     
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--客服 -->
<div class="rides-cs">

	<div class="floatL">
		<a style="display:block" id="aFloatTools_Show" class="btnOpen" title="查看在线客服" href="javascript:void(0);">展开</a>
		<a style="display:none" id="aFloatTools_Hide" class="btnCtn" title="关闭在线客服" href="javascript:void(0);">收缩</a>
	</div>
	
	<div id="divFloatToolsView" class="floatR" style="display:none">
		<div class="cn">
			<h3 class="titZx">购物客服</h3>
			<ul>
				<li><span>小辉</span><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=KkZSGxsSHBMTEhIYEmpbWwRJRUc" style="text-decoration:none;">
				<img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_01.png"/></a></li>
				<li><span>小吉</span><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=KkZSGxsSHBMTEhIYEmpbWwRJRUc" style="text-decoration:none;">
				<img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_01.png"/></a></li>
			</ul>
			
			<h3>建议提议</h3>
			<ul>
				<li><span>小洁</span><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=KkZSGxsSHBMTEhIYEmpbWwRJRUc" style="text-decoration:none;">
				<img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_01.png"/></a></li>
			</ul>
			
			<h3>售后服务</h3>
			<ul>
				<li><span>小飞</span><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=KkZSGxsSHBMTEhIYEmpbWwRJRUc" style="text-decoration:none;">
				<img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_01.png"/></a></li>
			</ul>
		</div>
	</div>
	
</div>

  </body>
</html>

