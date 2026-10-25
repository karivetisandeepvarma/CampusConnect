package com.cc.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="student")
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	
	@Column(name="username")
	private String studentUsername;
	
	@Column(name="password")
	private String studentPassword;
	
	@Column(name="name")
	private String studentName;
	
	@Column(name="age")
	private int studentAge;
	
	@Column(name="emailid")
	private String studentEmailId;
	
	@Column(name="mobilenumber")
	private String studentMobileNumber;
	
	@Column(name="department")
	private String studentDepartment;
	
	@Column(name="city")
	private String studentCity;

	public Student() {
		
	}

	

	public Student(int studentId, String studentUsername, String studentPassword, String studentName, int studentAge,
			String studentEmailId, String studentMobileNumber, String studentDepartment, String studentCity) {
		super();
		this.studentId = studentId;
		this.studentUsername = studentUsername;
		this.studentPassword = studentPassword;
		this.studentName = studentName;
		this.studentAge = studentAge;
		this.studentEmailId = studentEmailId;
		this.studentMobileNumber = studentMobileNumber;
		this.studentDepartment = studentDepartment;
		this.studentCity = studentCity;
	}


	public Student(String studentUsername, String studentPassword, String studentName, int studentAge,
			String studentEmailId, String studentMobileNumber, String studentDepartment, String studentCity) {
		
		this.studentUsername = studentUsername;
		this.studentPassword = studentPassword;
		this.studentName = studentName;
		this.studentAge = studentAge;
		this.studentEmailId = studentEmailId;
		this.studentMobileNumber = studentMobileNumber;
		this.studentDepartment = studentDepartment;
		this.studentCity = studentCity;
	}



	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentUsername() {
		return studentUsername;
	}

	public void setStudentUsername(String studentUsername) {
		this.studentUsername = studentUsername;
	}

	public String getStudentPassword() {
		return studentPassword;
	}

	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}

	public String getStudentEmailId() {
		return studentEmailId;
	}

	public void setStudentEmailId(String studentEmailId) {
		this.studentEmailId = studentEmailId;
	}

	public String getStudentMobileNumber() {
		return studentMobileNumber;
	}

	public void setStudentMobileNumber(String studentMobileNumber) {
		this.studentMobileNumber = studentMobileNumber;
	}

	public String getStudentDepartment() {
		return studentDepartment;
	}



	public void setStudentDepartment(String studentDepartment) {
		this.studentDepartment = studentDepartment;
	}



	public String getStudentCity() {
		return studentCity;
	}



	public void setStudentCity(String studentCity) {
		this.studentCity = studentCity;
	}



	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentUsername=" + studentUsername + ", studentPassword="
				+ studentPassword + ", studentName=" + studentName + ", studentAge=" + studentAge + ", studentEmailId="
				+ studentEmailId + ", studentMobileNumber=" + studentMobileNumber + "]";
	}
	
	
	
	
	
	
	
	
	

}
