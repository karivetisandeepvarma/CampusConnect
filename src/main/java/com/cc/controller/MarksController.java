package com.cc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cc.model.Marks;
import com.cc.model.Student;
import com.cc.service.MarksService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MarksController {
	
	@Autowired
	MarksService marksService;
	
	@GetMapping("/uploadMarks")
	public String uploadMarks()
	{
		return "upload-marks";
	}
	
	@PostMapping("/saveMarks")
	public String saveMarks(HttpServletRequest request)
	{
		String subname = request.getParameter("subjectName");
		double marksobtained = Double.parseDouble(request.getParameter("marksObtained"));
		double maxmarks = Double.parseDouble(request.getParameter("maxMarks"));
		double semester = Double.parseDouble(request.getParameter("semester"));
		int studentid = Integer.parseInt(request.getParameter("studentId"));
		
		Student st = new Student(studentid,"","","",0,"","","","");
		
		Marks marks = new Marks(subname,marksobtained,maxmarks,semester,st);
		
		marksService.saveMarks(marks);
		
		return "redirect:/cc/admindashboard";
		
	}

}
