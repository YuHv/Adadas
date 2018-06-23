<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div id="header">
			
		<h2><a style="color:#FFFFFF;margin-left: 40px;margin-top: 5px">Adadas</a></h2>
		</div>
		
		<div id="search">
			
		</div>
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse"><a title="" style="color:#FFFFFF;" href="AdministratorAction!myEdit?id=<%=session.getAttribute("adminid") %>"><i class="icon icon-user"></i> <span class="text"><%=session.getAttribute("adminuser") %></span></a></li>
               
              
                <li class="btn btn-inverse"><a title="" href="outlogin.jsp"><i class="icon icon-share-alt"></i> <span class="text" style="color:#FFFFFF;">退出登陆</span></a></li>
            </ul>
        </div>
            
		<div id="sidebar" >
			
			<ul>
				<li class="active"><a href="AdministratorAction!myLogin"  style="color:#FFFFFF;"><i class="icon icon-home"></i> <span>主页</span></a></li>
			 	<% if(Integer.parseInt(session.getAttribute("adminlevel").toString())==0){ %>
			 	<li class="submenu">
					<a href="#"  style="color:#FFFFFF;"><i class="icon icon-th-list"></i> <span >管理员模块</span> </a>
					<ul>
						<li><a href="AdministratorAction!myShow"  style="color:#FFFFFF;">管理员列表</a></li>
						<li><a href="adminAdd.jsp"  style="color:#FFFFFF;">添加管理员</a></li>
					</ul>
				</li>
				<%} %>
				<li><a href="ClientAction!clientShow"  style="color:#FFFFFF;"><i class="icon-user"></i> <span>用户列表</span></a></li>
				<li class="submenu">
				<a href="#"  style="color:#FFFFFF;"><i class="icon-star-empty"  style="color:#FFFFFF;"></i> <span>订单列表</span> </a>
					<ul>
						<li><a href="OrdersAction!ordersShow"  style="color:#FFFFFF;">历史订单</a></li>
						<li><a href="OrdersAction!processShow"  style="color:#FFFFFF;">待处理订单</a></li>
						<li><a href="OrdersAction!ordersDate"  style="color:#FFFFFF;">今日订单</a></li>
					</ul>
			</li>
				<li class="submenu">
					<a href="#"  style="color:#FFFFFF;"><i class="icon-star-empty"></i> <span>鞋单管理</span> </a>
					<ul>
						<li><a href="MenuAction!menuShow"  style="color:#FFFFFF;">鞋单列表</a></li>
						<li><a href="menuAdd.jsp"  style="color:#FFFFFF;">添加鞋单</a></li>
					</ul>
				</li>
				<li class="submenu">
					<a href="#"  style="color:#FFFFFF;"><i class="icon-file"></i> <span>公告管理</span> </a>
					<ul>
						<li><a href="AnnouncementAction!myShow"  style="color:#FFFFFF;">公告列表</a></li>
						<li><a href="announcementAdd.jsp"  style="color:#FFFFFF;">更新公告</a></li>
					</ul>
				</li>			
			</ul>
		</div>