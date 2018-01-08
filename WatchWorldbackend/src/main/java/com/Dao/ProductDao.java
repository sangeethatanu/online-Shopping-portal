package com.Dao;

import com.model.Product;

import antlr.collections.List;

public interface ProductDao {

	public void insertProduct(Product product);
public List<Product> retrieve();
	 public Product findByPID();
	
}
