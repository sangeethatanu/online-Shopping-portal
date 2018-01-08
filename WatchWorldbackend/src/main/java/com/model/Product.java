package com.model;

import java.beans.Transient;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Component
@Entity

public class Product implements Serializable;
{

	@Id
	private int pid;
	private String pname;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	private String description;
	private double price;
	private int stock;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="cid")
private Category category;
	
@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="sid")
private Supplier supplier;
	
@Transient
MultipartFile pimage;
private String imgName;
public String getImgName() {
	return imgName;
}
public void setImgName(String imgName) {
	this.imgName = imgName;
}





}
