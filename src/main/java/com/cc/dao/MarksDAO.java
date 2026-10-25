package com.cc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cc.model.Marks;

import jakarta.transaction.Transactional;

@Component
public class MarksDAO {
	
	@Autowired
	SessionFactory sf;
	
	@Transactional
	public void saveMarks(Marks m)
	{
		Session s = sf.getCurrentSession();
		
		s.persist(m);
	}

}
