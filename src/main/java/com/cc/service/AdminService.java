package com.cc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cc.dao.AdminDAO;
import com.cc.model.Admin;

@Component
public class AdminService {
	
	@Autowired
	AdminDAO adminDAO;
	
	public Admin findAdminByUsername(String username)
	{
		 return adminDAO.findAdminByUsername(username);
	}
	
	public String saveAdmin(String username,String password)
	{
		Admin admin = new Admin(username,password);
		
		return adminDAO.saveAdmin(admin);
	}

}
