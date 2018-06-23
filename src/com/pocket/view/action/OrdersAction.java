package com.pocket.view.action;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pocket.service.iface.BasketService;
import com.pocket.service.iface.OrdersService;
import com.pocket.sql.bean.Orders;

public class OrdersAction extends ActionSupport {
	OrdersService ordersService;
	Integer id;
	Orders orders;
	
	
	public Orders getOrders() {
		return orders;
	}



	public void setOrders(Orders orders) {
		this.orders = orders;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public OrdersService getOrdersService() {
		return ordersService;
	}



	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}


	//用户订单获取
	public String myOrders(){

		ActionContext.getContext().getSession().put("ordersList",ordersService.show(id) );
		return "input";
	}
	//订单添加
	public String myAdd(){
		
		ordersService.addOrders(orders);
		return "jump";
	}
	//订单添加后删除购物车
	public String myAdd_basket(){
		BasketService.myDel_basket(id);
		System.out.println("sdsfsg"+id);
		ordersService.addOrders(orders);
		return "jump";
	}
	//取消订单
	public String myDel(){
		ordersService.myDel(id);
		return "jump";
	}
	//后台删除
	public String Del(){
		ordersService.myDel(id);
		return "del";
	}
	//订单列表显示
	public String ordersShow(){
		ActionContext.getContext().getSession().put("showOrders", ordersService.ordersShow());
		return "show";
	}
	//订单发货状态
	public String processShow(){
		ActionContext.getContext().getSession().put("processOrders", ordersService.processShow());
		return "process";
	}
	//改变订单发货状态
	public String Ship(){
		ordersService.ship(id);
		return "jump2";
	}
	//下单时间
	public String ordersDate(){
		ActionContext.getContext().put("today", ordersService.today());
		
		return "date";
	}
}
