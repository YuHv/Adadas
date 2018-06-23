<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="MenuAction!myIndex">主页</a></li>
            <!-- <li><a href="page/about.html" target="blank">实体店</a></li> -->  <!--记得删除about.html   -->
			<li><a href="AnnouncementAction!init">公告</a></li>
          </ul>
		   <ul class="nav navbar-nav navbar-right">
          <li><div
						style="width: 100%; margin: 0 auto; padding-top: 10px;">
						<form action="MenuAction!search" method="post">
							<div style="float: right; margin-right: 50px">
								<button type="submit" class="btn btn btn-primary">搜索</button>
							</div>
							<div style="float: right; margin-right: 10px">
								<input type="text" name="menu.dishes" class="form-control"
									placeholder="Search" required autofocus>
							</div>
						</form>
					</div></li>
				<li>
			 <li> <% if(session.getAttribute("loginname")==null){
			 	
			%><a data-toggle="modal" data-target="#myModal1">
				登陆
			</a></li><%}else{  %>  <a href="#" data-toggle="dropdown"><%=session.getAttribute("loginname") %> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="ClientAction!myData?id=<%=session.getAttribute("loginid")%>">个人中心</a></li>
                
                 <li><a href="OrdersAction!myOrders?id=<%=session.getAttribute("loginid")%>">我的订单</a></li>
                <li><a href="BasketAction!myShow?id=<%=session.getAttribute("loginid")%>">购物车</a></li>
                <li class="divider"></li>
                <li><a href="page/loginout.jsp">退出</a></li>
              </ul>
              <%} %>
			 <li> <% if(session.getAttribute("loginname")==null){ %>
			 <a data-toggle="modal" data-target="#myModal2">
				注册
			</a></li><%} %>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </div><!-- /.navbar -->
