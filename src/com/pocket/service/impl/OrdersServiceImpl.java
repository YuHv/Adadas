package com.pocket.service.impl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.pocket.service.iface.OrdersService;
import com.pocket.sql.bean.Client;
import com.pocket.sql.bean.Orders;
import com.pocket.sql.dao.ClientDAO;
import com.pocket.sql.dao.MenuDAO;
import com.pocket.sql.dao.OrdersDAO;

public class OrdersServiceImpl implements OrdersService{
	OrdersDAO ordersDAO;
	ClientDAO clientDAO;
	Client client;
	MenuDAO menuDAO;
	
	public MenuDAO getMenuDAO() {
		return menuDAO;
	}

	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public ClientDAO getClientDAO() {
		return clientDAO;
	}

	public void setClientDAO(ClientDAO clientDAO) {
		this.clientDAO = clientDAO;
	}

	public OrdersDAO getOrdersDAO() {
		return ordersDAO;
	}

	public void setOrdersDAO(OrdersDAO ordersDAO) {
		this.ordersDAO = ordersDAO;
	}

	public List show(Integer id) {
		return ordersDAO.findByClient(id);
	}
	//添加订单
	public Orders addOrders(Orders orders) {
		
	
		Integer id =Integer.parseInt(ActionContext.getContext().getSession().get("loginid").toString());
	
		int clientMoney=clientDAO.findById(id).getMoney();
		
		int menuPrice=Integer.parseInt(menuDAO.findById(Integer.parseInt(ActionContext.getContext().getSession().get("detailId").toString())).getPrice());
		System.out.println("menuPrice"+menuPrice);
		
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		orders.setDowntime(dateFormat.format(now));
		int price = menuPrice*Integer.parseInt(orders.getSum());
		orders.setPrice(price+"");
		orders.setIscheckout(1);
		ordersDAO.save(orders);
		return null;
	}
	//取消订单
	public void myDel(Integer id) {
		ordersDAO.delete(ordersDAO.findById(id));
		
	}
	//后台删除订单
	public void Del(Integer id) {
		ordersDAO.delete(ordersDAO.findById(id));
		
	}
	//获取所有订单
	public List ordersShow() {
		return ordersDAO.findAll();
	}
	//获取订单状态
	public List processShow() {
		// TODO Auto-generated method stub
		return ordersDAO.findByIscheckout(1);
	}
	//修改订单状态
	public void ship(Integer id) {
		Orders orders=ordersDAO.findById(id);
		if(orders.getIscheckout()==1){
			orders.setIscheckout(0);
		}
		else{
			orders.setIscheckout(1);
		}
		
		ordersDAO.merge(orders);
		
		
	}
	//获取今日订单
	public List today() {
		Date dt=new Date();
		SimpleDateFormat matter1=new SimpleDateFormat("yyyy/MM/dd");
	   
		return  ordersDAO.findByMyDate(matter1.format(dt));
	}
	
}
