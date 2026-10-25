package com.cc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.SelectionQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cc.model.Student;

import jakarta.transaction.Transactional;

@Component
public class StudentDAO {
	
	@Autowired
	SessionFactory sf;
	
	@Transactional
	public void saveStudent(Student st)
	{
		Session s = sf.getCurrentSession();
		
		s.persist(st);
	}
	
	@Transactional
	public List<Student> getAllStudents()
	{
		Session s = sf.getCurrentSession();
		
		SelectionQuery<Student> query = s.createSelectionQuery("from Student",Student.class);
		
		List<Student> list = query.list();
		
		return list;
	}
	
	@Transactional
	public void deleteStudent(Student st)
	{
		Session s = sf.getCurrentSession();
		
		s.remove(st);
	}
	
	@Transactional
	public Student findStudentById(int id)
	{
		Session s = sf.getCurrentSession();
		
		Student student = s.find(Student.class, id);
		
		return student;
	}
	
	@Transactional
	public void updateStudent(Student st)
	{
		Session s = sf.getCurrentSession();
		
		s.merge(st);
	}

}
