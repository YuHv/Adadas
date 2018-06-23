package com.pocket.sql.bean;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer id;
	private Client client;
	private Menu menu;
	private String name;
	private String sum;
	private String downtime;
	private String telephone;
	private String address;
	private String price;
	private Integer ischeckout;
	private Integer size;
	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** full constructor */
	public Orders(Client client, Menu menu, String name, String sum,
			String downtime, String telephone, String address, String price,
			Integer ischeckout) {
		this.client = client;
		this.menu = menu;
		this.name = name;
		this.sum = sum;
		this.downtime = downtime;
		this.telephone = telephone;
		this.address = address;
		this.price = price;
		this.ischeckout = ischeckout;
		this.size = size;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Client getClient() {
		return this.client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Menu getMenu() {
		return this.menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSum() {
		return this.sum;
	}

	public void setSum(String sum) {
		this.sum = sum;
	}

	public String getDowntime() {
		return this.downtime;
	}

	public void setDowntime(String downtime) {
		this.downtime = downtime;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Integer getIscheckout() {
		return this.ischeckout;
	}

	public void setIscheckout(Integer ischeckout) {
		this.ischeckout = ischeckout;
	}
	public Integer getSize() {
		return this.size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

}