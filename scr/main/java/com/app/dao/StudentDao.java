package com.app.dao;

import com.app.model.Student;

import antlr.collections.List;

public interface StudentDao {
	
	public void add(Student student);
	public void edit(Student student);
	public void delete(int studentId);
	public Student getStudent(int studentId);
	public List getAllStudent();

}
