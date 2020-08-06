




package com.niit.shoppingcart1.dao;

import org.springframework.stereotype.Component;

import com.niit.shoppingcart1.model.User;

@Component
public interface UserDAO 
{
	public boolean saveUser(User user);
}
