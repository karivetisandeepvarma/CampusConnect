
package com.cc.model;

import jakarta.persistence.*;

@Entity
@Table(name = "marks")
public class Marks {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int subjectId;

    @Column(nullable = false)
    private String subjectName;

    @Column(nullable = false)
    private double marksObtained;
    
    @Column(nullable = false)
    private double maxMarks;
    
    @Column(nullable = false)
    private double semester;

	@ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private Student student;

    public Marks() {
    }
    
    

	public Marks(int subjectId, String subjectName, double marksObtained, double maxMarks, double semester,
			Student student) {
		super();
		this.subjectId = subjectId;
		this.subjectName = subjectName;
		this.marksObtained = marksObtained;
		this.maxMarks = maxMarks;
		this.semester = semester;
		this.student = student;
	}

	public Marks(String subjectName, double marksObtained, double maxMarks, double semester, Student student) {
		super();
		this.subjectName = subjectName;
		this.marksObtained = marksObtained;
		this.maxMarks = maxMarks;
		this.semester = semester;
		this.student = student;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public double getMarksObtained() {
		return marksObtained;
	}

	public void setMarksObtained(double marksObtained) {
		this.marksObtained = marksObtained;
	}

	public double getMaxMarks() {
		return maxMarks;
	}

	public void setMaxMarks(double maxMarks) {
		this.maxMarks = maxMarks;
	}

	public double getSemester() {
		return semester;
	}

	public void setSemester(double semester) {
		this.semester = semester;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "Marks [subjectId=" + subjectId + ", subjectName=" + subjectName + ", marksObtained=" + marksObtained
				+ ", maxMarks=" + maxMarks + ", semester=" + semester + ", student=" + student + "]";
	}
    
    
    
    
    

    

   
}

