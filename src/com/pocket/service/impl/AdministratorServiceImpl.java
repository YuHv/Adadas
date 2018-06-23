package com.pocket.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.pocket.service.iface.AdministratorService;

import com.pocket.sql.bean.Administrator;
import com.pocket.sql.dao.AdministratorDAO;

public class AdministratorServiceImpl implements AdministratorService {
	AdministratorDAO administratorDAO;
	Administrator administrator;
	

	public Administrator getAdministrator() {
		return administrator;
	}



	public void setAdministrator(Administrator administrator) {
		this.administrator = administrator;
	}



	public AdministratorDAO getAdministratorDAO() {
		return administratorDAO;
	}



	public void setAdministratorDAO(AdministratorDAO administratorDAO) {
		this.administratorDAO = administratorDAO;
	}


	//从数据库获取所有管理员信息
	public List myShow() {
		
		return administratorDAO.findAll();
	}


	//删除数据库中指定管理员信息
	public void myDel(Integer id) {
		
		administratorDAO.delete(administratorDAO.findById(id));
		
	}


	//向数据库中新建管理员信息
	public Administrator myAdd(Administrator administrator) {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		administrator.setLasttime(dateFormat.format(now));
		administrator.setLevel(1);
		administratorDAO.save(administrator );
		return null;
	}


	//通过数据库进行管理员登录验证
	public Administrator myLogin(Administrator administrator) {
		List list = administratorDAO.findByUsername(administrator.getUsername());
		if(list.isEmpty()){
			return null;
		}else{
			Administrator Administratorsql = (Administrator)list.get(0);
			if(Administratorsql.getPassword().equals(administrator.getPassword())){
				
				return Administratorsql;
			}else{
				return null;
		}
		}
	}


	//修改数据库中指定管理员信息
	public Administrator myMer(Integer id) {
	
		return 	administratorDAO.findById(id);
	}


	//修改数据库中管理员注册时间
	public Administrator mySave(Administrator administrator) {
		
		administrator.setLasttime(administrator.getLasttime());
		
		return administratorDAO.merge(administrator);
	}

}
