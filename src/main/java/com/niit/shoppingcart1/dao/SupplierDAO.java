package com.niit.shoppingcart1.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.niit.shoppingcart1.model.Supplier;
@Component
public interface SupplierDAO 
{
		
		public List getAllSuppliers();
		
		public Supplier getSingleSupplier(int id);
		
		public boolean update(Supplier supplier);
		
		public boolean save(Supplier supplier);
		
		public boolean delete(int id);
	}


