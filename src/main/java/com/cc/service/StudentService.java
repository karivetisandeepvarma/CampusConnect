package com.cc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cc.dao.StudentDAO;
import com.cc.model.Student;

@Component
public class StudentService {
	
	@Autowired
	StudentDAO studentDAO;
	
	public void saveStudent(Student st)
	{
		studentDAO.saveStudent(st);
	}
	
	public List<Student> getAllStudents()
	{
		return studentDAO.getAllStudents();
	}
	
	public void deleteStudent(int id)
	{
		Student st = new Student(id,"","","",0,"","","","");
		
		studentDAO.deleteStudent(st);
	}
	
	public Student findStudentById(int id)
	{
		Student st = studentDAO.findStudentById(id);
		
		return st;
	}
	
	public void updateStudent(Student st)
	{
		studentDAO.updateStudent(st);
	}
}
