package com.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//getall 
	public List<Product> getaProducts(){
	   List<Product> list =	this.hibernateTemplate.loadAll(Product.class);
	   return list;
	}
	
	//delete single product
	@Transactional
	public void deleteProduct(int pid) {
	 Product product=	this.hibernateTemplate.load(Product.class, pid);
	 this.hibernateTemplate.delete(product);
	}
	
	//get single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
		
	}
}
