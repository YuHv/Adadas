<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String iiid;
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
<link rel="icon" href="images/JunkFood.ico" type="image/x-icon"/> 
<title>Junk Food</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/carousel.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/customerservice.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/holder.js"></script>
<script type="text/javascript" src="js/scrolltopcontrol.js"></script>
<script type="text/javascript">
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
	</script>
</head>

<body>
	<jsp:include page="head.jsp" />

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron">
					<h1>
						Hi，<%=session.getAttribute("loginname") %></h1>
					<p>以下是你的购物车详情！</p>
				</div>

				<div>



					<div class="widget-box">

						<div class="widget-content nopadding">
							<table class="table  table-striped with-check">
								<thead style="background-color: #FFF">
									<tr>
										<th align="center">订单商品</th>
										<th>简介</th>
										<th>数量</th>
										<th>订单金额</th>
										<th>操作</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<!--获取个人购物车信息-->
									<s:iterator value="#session.basketshow" id="basket">
										<tr>
											<td> <a href="MenuAction!myDetail?id=<s:url value="%{#basket.menu.id}"/>">
												<img src="<s:property value="#basket.menu.path"/>" width="65" height="65"><span style="color: #000">
												<br><br>
												<s:property value="#basket.menu.dishes" /></span></a></td>
											<td><s:property value="#basket.menu.synopsis" /></td>
											<th><s:property value="#basket.menu.status" /></th>
											<td>￥<s:property value="#basket.menu.price" />元
											</td>
											<td><a data-toggle="modal" data-target="#myModal3" class="btn btn-lg btn-primary">立即购买</a><br>
											<!--<td><a href="BasketAction!myAdd?id=<s:property value="{#basket.menu.id}"/>" class="btn btn-lg btn-primary">立即购买</a><br>-->
											<td><a class="btn btn-danger" href="javascript:if(confirm('确实要删除该购物车信息吗?'))location='BasketAction!myDel?id=<s:url value="%{#basket.id}"/>'" >删除</a><br>
										</tr>
									</s:iterator>
								</tbody>					
							</table>
						</div>
						
					</div>




				</div>

			</div>
			<!--/span-->
			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<div class="list-group">
				<s:iterator value="#session.clientList" id="c">
					<a href="ClientAction!myData?id=<%=session.getAttribute("loginid") %>" class="list-group-item "><img src="<s:url value="%{#request.c.level}" />" width="100%px"></a>
					<%-- <s:iterator value="#session.clientList" id="c">
            <a href="#" class="list-group-item  active">用户金额：<s:label value="%{#request.c.money}"></s:label></a>
             </s:iterator> --%>
						<a class="list-group-item  active"><s:label
								value="%{#request.c.username}"></s:label>，的个人中心</a>
					</s:iterator>
					<a
						href="OrdersAction!myOrders?id=<%=session.getAttribute("loginid")%>"
						class="list-group-item">我的订单</a> <a
						href="BasketAction!myShow?id=<%=session.getAttribute("loginid")%>"
						class="list-group-item">购物车</a> <a href="#"
						class="list-group-item">人工申述</a>

				</div>
			</div>
			<!--/span-->
		</div>
		<!--/row-->
		<hr>
		<center>
			<footer>
			<p class="center">&copy; Adadas 网上购物系统，愿您度过好时光！</p>
			</footer>
		</center>
	</div>
	<!-- /.container -->

<!-- 确认订单信息 -->
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
       <p>单价</p><input type="text" name="orders.price"   readonly= "true "  value="${basket.menu.price}元"  name="orders.price"class="form-control" placeholder="username" required autofocus><br>
       <p>尺码</p><input type="text" name="orders.size" value="40" class="form-control" placeholder="username" required autofocus><br>
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

	<nav style="text-align: center">
	<ul class="pagination">
		<li><a href="#">«</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">»</a></li>
	</ul>
	</nav>
</body>
</html>

