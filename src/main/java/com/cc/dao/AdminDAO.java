package com.cc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.SelectionQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cc.model.Admin;

import jakarta.transaction.Transactional;

@Component
public class AdminDAO {
	
	@Autowired
	SessionFactory sf;
	
	@Transactional
	public Admin findAdminByUsername(String username)
	{
		Session s = sf.getCurrentSession();
		
		SelectionQuery<Admin> query = s.createSelectionQuery("from Admin where adminUsername = ?1",Admin.class);
		query.setParameter(1, username);
		
		Admin admin = query.uniqueResult();
		
		return admin;
		
	}
	
	@Transactional
	public String saveAdmin(Admin admin)
	{
		Session session = sf.getCurrentSession();
		
		session.persist(admin);
		
		return admin.getAdminUsername();
	}

}
