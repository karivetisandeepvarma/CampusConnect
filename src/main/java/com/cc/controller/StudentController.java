package com.cc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cc.model.Student;
import com.cc.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	@GetMapping("/addStudent")
	public String addStudent()
	{
		return "add-student";
	}
	
	@PostMapping("/savestudent")
	public String saveStudent(HttpServletRequest request)
	{
		String username = request.getParameter("studentusername");
		String password = request.getParameter("studentpassword");
		String name = request.getParameter("studentname");
		int age = Integer.parseInt(request.getParameter("studentage"));
		String mailid = request.getParameter("studentemailid");
		String mobilenum = request.getParameter("studentmobilenum");
		String department = request.getParameter("studentdepartment");
		String city = request.getParameter("studentcity");
		
		Student st = new Student(username,password,name,age,mailid,mobilenum,department,city);
		
		studentService.saveStudent(st);
		
		return "admindashboard";
	}
	
	@GetMapping("/viewStudents")
	public String viewStudents(Model model)
	{
		List<Student> list = studentService.getAllStudents();
		
		model.addAttribute("list",list);
		
		return "get-all-students";
	}
	
	@GetMapping("/students/delete/{id}")
	public String deleteStudent(@PathVariable("id") int id)
	{
		
		studentService.deleteStudent(id);
		
		return "redirect:/cc/viewStudents";
	}
	
	@GetMapping("/students/update/{id}")
	public String updateStudent(@PathVariable("id") int id,Model model)
	{
		Student st = studentService.findStudentById(id);
		
		model.addAttribute("st", st);
		
		return "edit-student";
	}
	
	@PostMapping("/updatestudent")
	public String updateStudent(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("studentid"));
		String username = request.getParameter("studentusername");
		String password = request.getParameter("studentpassword");
		String name = request.getParameter("studentname");
		int age = Integer.parseInt(request.getParameter("studentage"));
		String mailid = request.getParameter("studentemailid");
		String mobilenum = request.getParameter("studentmobilenum");
		String department = request.getParameter("studentdepartment");
		String city = request.getParameter("studentcity");
		
		Student st = new Student(id,username,password,name,age,mailid,mobilenum,department,city);
		
		studentService.updateStudent(st);
		
		return "redirect:/cc/viewStudents";
	}
	
	@GetMapping("/admindashboard")
	public String adminDashboard() {
	    return "admindashboard";
	}

}
