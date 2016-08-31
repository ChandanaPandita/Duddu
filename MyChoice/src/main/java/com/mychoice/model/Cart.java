package com.mychoice.model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Cart {
	@Id@GeneratedValue
	private int cartId;
	private int TotalBill;
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getTotalBill() {
		return TotalBill;
	}
	public void setTotalBill(int totalBill) {
		TotalBill = totalBill;
	}
}
