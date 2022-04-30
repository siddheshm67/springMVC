package com.Dao;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entity.ToDo;

import antlr.collections.List;

@Component
public class ToDODaw {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int save(ToDo t) {
		Integer integer = (Integer) this.hibernateTemplate.save(t);
		return integer;
	}
	
	public java.util.List<ToDo> geToDos(){
		java.util.List<ToDo> toDos =   this.hibernateTemplate.loadAll(ToDo.class);
		
		return toDos;
	}
}
