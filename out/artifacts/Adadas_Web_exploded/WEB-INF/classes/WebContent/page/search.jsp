<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
    <title>Junk Food</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/customerservice.css" rel="stylesheet" type="text/css" />
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
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

  <body onload=" ">
     <jsp:include page="head.jsp"/>
  

    <div style="width:100%;padding-top:50px;">
       		<s:iterator value="#session.searchList" id="m">
    	<div style="width:85%;min-width:980px;height:310px;margin :0 auto;margin-top:20px;border:1px #ccc solid">
    	  <div class="col-sm-4" style="margin-top:30px;text-align:center">
    				<a href="MenuAction!myDetail?id=<s:url value="%{#request.m.id}"/>"><img src="<s:url value="%{#request.m.path}" />" class="img-responsive"></a>
    			</div>
          <div class="col-sm-8" style="margin :0 auto">
    				<h3><s:label value="%{#request.m.dishes}"/></h3>

          			<hr style="border:1px dotted #D9D9D9">
          			<p><span style="margin-right:30px">用料</span><s:property value="#m.synopsis"/></p>
            		<p><span style="margin-right:30px;">价格</span><span style="font-size:20px;color:red"">￥<s:property value="#m.price"/>.00</span>/份</p>
            		<p><span style="margin-right:30px">单位</span>件</p>
            		<p><span style="margin-right:20px">销售量</span><s:property value="#m.sum"/></p>
            
            		<hr><% if(session.getAttribute("loginid")==null){ %>
          			<a data-toggle="modal" data-target="#myModal1" class="btn btn-lg btn-primary">立即购买</a><%}else{ %>
              		<a data-toggle="modal" data-target="#myModal3" class="btn btn-lg btn-primary">立即购买</a>
          			<%} %>
          			<% if(session.getAttribute("loginid")==null){ %>
          			<a data-toggle="modal" data-target="#myModal1" class="btn btn-lg btn-primary">加入购物车</a><%}else{ %>
                	<a  href="BasketAction!myAdd?id=<s:property value="#m.id"/>" class="btn btn-lg btn-primary">加入购物车</a>
          			<%} %>
    			</div>
   	 	</div>
          </s:iterator>
    </div>
      <hr>
      <!-- FOOTER -->
      <center>
		<footer>
        <p class="center">&copy; Junk Food 网上订餐系统，愿您度过好时光！</p>
      </footer>
      </center>




<!--登录 Modal -->
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

<!-- 注册 Modal -->
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
		<p>联系地址：</p><input type="text" name="client.address" class="form-control" placeholder="address" required autofocus><br>
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

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">请填写好你的订单信息</h4>
      
      </div>
      <div class="modal-body">
	  <form action="OrdersAction!myAdd" method="post" style="font-size:20px">
	  <s:iterator value="#session.loginClient" id="client">
	  <s:hidden value="%{#request.client.id}" name="orders.client.id"></s:hidden>
	  <input type="hidden" value="<%=session.getAttribute("detailId") %>" name="orders.menu.id"class="form-control" placeholder="username" required autofocus><br>     
       <p>收件人</p><input type="text" value="${client.username}" name="orders.name" class="form-control" placeholder="username" required autofocus><br>
       <p>数量</p><input type="text" name="orders.sum" value="1" class="form-control" placeholder="username" required autofocus><br>
       <p>单价</p><input type="text" name="orders.price"   value="<%=session.getAttribute("menuPrice") %>"  name="orders.price"class="form-control" placeholder="username" required autofocus><br>
       <p>联系电话</p><input type="text"  value="${client.telephone} "  name="orders.telephone"class="form-control" placeholder="username" required autofocus><br>
	   <p>联系地址</p><input type="text"  value="${client.address}" name="orders.address" class="form-control" placeholder="password" required autofocus><br>
	   </s:iterator>
	   <div class="modal-footer">
		
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary"  onclick='return confirm("是否确定下单并支付（支付后无法退回）？")' >下单</button>
      </div>
	  </form>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!-- Modal -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">评论</h4>
      </div>
      <div class="modal-body">
	  <form action="ReviewAction!myAdd?id=<%=session.getAttribute("detailId") %>" method="post" style="font-size:20px">
      
		<textarea name="review.content" rows="10" cols="60"></textarea>
		<input type="hidden" value="<%=session.getAttribute("detailId") %>" name="menu.id"/>
		<input type="hidden" value="<%=session.getAttribute("loginid") %>" name="client.id"/>
	   <div class="modal-footer">
		
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">提交</button>
      </div>
	  </form>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
  </body>
</html>

