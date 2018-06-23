package com.pocket.sql.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Client entity. @author MyEclipse Persistence Tools
 */

public class Client implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private Integer password;
	private Integer telephone;
	private String address;
	private String email;
	private Integer money;
	private String level;
	private Set reviews = new HashSet(0);

	// Constructors

	/** default constructor */
	public Client() {
	}

	/** minimal constructor */
	public Client(String username) {
		this.username = username;
	}

	/** full constructor */
	public Client(String username, Integer password, Integer telephone,
			String address, String email, Integer money, String level,
			Set reviews) {
		this.username = username;
		this.password = password;
		this.telephone = telephone;
		this.address = address;
		this.email = email;
		this.money = money;
		this.level = level;
		this.reviews = reviews;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getPassword() {
		return this.password;
	}

	public void setPassword(Integer password) {
		this.password = password;
	}

	public Integer getTelephone() {
		return this.telephone;
	}

	public void setTelephone(Integer telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getMoney() {
		return this.money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public String getLevel() {
		return this.level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public Set getReviews() {
		return this.reviews;
	}

	public void setReviews(Set reviews) {
		this.reviews = reviews;
	}

}