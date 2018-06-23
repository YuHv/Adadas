package com.pocket.service.impl;

import java.util.List;

import com.pocket.service.iface.BasketService;
import com.pocket.sql.bean.Basket;
import com.pocket.sql.dao.BasketDAO;

public class BasketServiceImpl implements BasketService {

		BasketDAO basketDAO;

		public BasketDAO getBasketDAO() {
			return basketDAO;
		}

		public void setBasketDAO(BasketDAO basketDAO) {
			this.basketDAO = basketDAO;
		}
		//添加购物车到数据库
		public void myAdd(Basket basket) {
			basketDAO.save(basket);
		}
		//删除数据库中指定购物车信息
		public void myDel(Integer id) {
			basketDAO.delete(basketDAO.findById(id));
		}
	
		public void myDel_basket(Integer id) {
			basketDAO.delete(basketDAO.findById(id));
		}
		//从数据库中找出当前用户的订单
		public List myshow(Integer id) {
			
			return basketDAO.findByCId(id);
		}
		
}
