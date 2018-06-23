package com.pocket.service.impl;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.pocket.service.iface.ClientService;
import com.pocket.sql.bean.Client;
import com.pocket.sql.dao.ClientDAO;
//实现了ClientService接口

public class ClientServiceImpl implements ClientService{
	
	Client client;
	ClientDAO clientDAO;
	
	public ClientDAO getClientDAO() {
		return clientDAO;
	}

	public void setClientDAO(ClientDAO clientDAO) {
		this.clientDAO = clientDAO;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}
	//用户登录验证
	public Client login(Client client){
		List list = clientDAO.findByUsername(client.getUsername());
		if(list.isEmpty()){
			return null;
		}else{
			Client clientsql = (Client)list.get(0);
			if(clientsql.getPassword().equals(client.getPassword())){
				ActionContext.getContext().getSession().put("loginid", clientsql.getId());
				return clientsql;
			}else{
				return null;
			}
		}
	}
	//用户头像设置
	public Client register(Client client) {
		client.setMoney(0);
		client.setLevel("images/img23.jpg");
		List list = clientDAO.findByUsername(client.getUsername());
		List list2 = clientDAO.findByTelephone(client.getTelephone());
		if(list.isEmpty()){
			clientDAO.save(client);
			return null;
		}else if(list.size() > 0){
			Client client1 = (Client)list.get(0);
			System.out.println("修改："+client1.getUsername());
			client1.setUsername(null);
			return client1;
		}else if(list2.isEmpty()){
			clientDAO.save(client);
			return null;
		}else{
			Client client2 = (Client)list.get(0);
			System.out.println("修改："+client2.getTelephone());
			client2.setTelephone(null);
			return client2;
		}
		
		
	
	}
	//用户信息修改
	public Client merge(Integer id) {
	
		return clientDAO.findById(id);
	}

	public Client mySave(Client client) {
		
		return clientDAO.merge(client);
	}
//显示用户列表
	public List clientShow() {
//调用用户的DAO  findAll获得全部用户信息
//return 返回  ClientAction
		return clientDAO.findAll();
	}
	//用户注销
	public void myDel(Integer id) {
		clientDAO.delete(clientDAO.findById(id));
		
	}
	//用户信息修改
	public void myEdit(Integer id) {
		Client client=clientDAO.findById(id);
		if(client.getLevel()=="images/img23.jpg"){
			client.setLevel("images/img23.jpg");
		}else{
			client.setLevel("images/img23.jpg");
		}
		
		clientDAO.merge(client);
		
	}
}
