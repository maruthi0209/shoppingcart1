package com.niit.shoppingcart1.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.niit.shoppingcart1.model.Category;

@Component
public interface CategoryDAO 
{
	public boolean saveOrUpdate(Category category);
	public List<Category> list();
	public boolean updateCategory(Category category);
	public Category get(int id);
	public boolean deleteCategory(String id);
	public List getAllCategories();
}
