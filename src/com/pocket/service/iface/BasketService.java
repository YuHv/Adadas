package com.pocket.service.iface;

import java.util.List;

import com.pocket.sql.bean.Basket;

public interface  BasketService {

	public void myAdd(Basket basket);
	public void myDel(Integer id);
	public List myshow(Integer id);
	public static void myDel_basket(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
