package com.cc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cc.model.Admin;
import com.cc.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("/alogin")
	public String login()
	{
		return "adminlogin";
	}
	
	@GetMapping("/aloginsucess")
	public String login(HttpServletRequest request)
	{
		String username = request.getParameter("adminusername");
		String password = request.getParameter("adminpassword");
		
		Admin admin = adminService.findAdminByUsername(username);
		
		if(admin!=null && admin.getAdminPassword().equals(password))
		{
			return "admindashboard";
		}
		else
		{
			return "Invalid Credentials";
		}
	}
	
	@GetMapping("/addAdmin")
	public String addAdmin()
	{
		return "add-admin";
	}
	
	@PostMapping("/saveadmin")
	public String saveAdmin(HttpServletRequest request)
	{
		String username = request.getParameter("adminusername");
		String password = request.getParameter("adminpassword");
		
		adminService.saveAdmin(username, password);
		
		return "admindashboard";
	
	}
	

}
