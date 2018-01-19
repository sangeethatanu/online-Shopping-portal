package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Orders implements Serializable {

	@Id
	@GeneratedValue
	private int orderId;
	@ManyToOne
	@JoinColumn
	private String payment;
	private User user;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	private Double Total;
	public Double getTotal() {
		return Total;
	}
	public void setTotal(Double total) {
		this.Total = total;
	} 
	
	
}
