package com.niit.shoppingcart1.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "cartItemId")	
	public int cartItemId;
	public int proId;
	@Column(name = "proName")
	public String proName;
	@Column(name = "proPrice")
	int proPrice;
	@Column(name="proDesc")
	String proDesc;
	@Column(name="chairStyle")
	String proStyle;
	@Column(name="quantity")
	int quantity;
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public String getProDesc() {
		return proDesc;
	}
	public void setProDesc(String proDesc) {
		this.proDesc = proDesc;
	}
	public String getProStyle() {
		return proStyle;
	}
	public void setProStyle(String proStyle) {
		this.proStyle = proStyle;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
		
}