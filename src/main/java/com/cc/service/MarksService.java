package com.cc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cc.dao.MarksDAO;
import com.cc.model.Marks;

@Component
public class MarksService {
	
	@Autowired
	MarksDAO marksDAO;
	
	public void saveMarks(Marks m)
	{
		marksDAO.saveMarks(m);
	}

}
