package com.niit.shoppingcart1.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.niit.shoppingcart1.model.Product;

@Component
public interface ProductDAO 
{
	public boolean addPro(Product product);
	public boolean updatePro(Product product);
	public List getAllPro();
	public Product getSinglePro(int id);
	public void deletePro(int id);

}
