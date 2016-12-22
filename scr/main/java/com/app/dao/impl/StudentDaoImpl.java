package com.app.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.app.dao.StudentDao;
import com.app.model.Student;

import antlr.collections.List;

@Repository
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add(Student student) {
		
		sessionFactory.getCurrentSession().save(student);
	}

	@Override
	public void edit(Student student) {
		sessionFactory.getCurrentSession().update(student);
	}

	@Override
	public void delete(int studentId) {
		sessionFactory.getCurrentSession().delete(studentId);
	}

	@Override
	public Student getStudent(int studentId) {
		return (Student)sessionFactory.getCurrentSession().get(Student.class, studentId);
		
	}

	@Override
	public List getAllStudent() {
		return (List) sessionFactory.getCurrentSession().createQuery("from Student").list();
		
	}

}
