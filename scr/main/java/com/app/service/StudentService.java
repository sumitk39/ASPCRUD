package com.app.service;

import com.app.model.Student;

import antlr.collections.List;

public interface StudentService {
	
	public void add(Student student);
	public void edit(Student student);
	public void delete(int studentId);
	public Student getStudent(int studentId);
	public List getAllStudent();

}
