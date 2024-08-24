package com.configuration;


import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.entity.Book;

public class HibernateConfiguration {

	private static SessionFactory sessionfactory;
	
	public static SessionFactory getSessionFactory(){
		
		org.hibernate.cfg.Configuration con = new org.hibernate.cfg.Configuration();
		Properties setting = new Properties();
		setting.put(Environment.DRIVER,"com.mysql.cj.jdbc.Driver");
		setting.put(Environment.URL,"jdbc:mysql://localhost:3307/LibraryManagementSystem_Hibernate");
		setting.put(Environment.USER, "root");
		setting.put(Environment.PASS, "Swati@123");
		setting.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");
		setting.put(Environment.HBM2DDL_AUTO, "update");
		setting.put(Environment.SHOW_SQL, "true");
		
		con.setProperties(setting);
		con.addAnnotatedClass(Book.class);
		
		ServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
		
		sessionfactory=con.buildSessionFactory(serviceRegistry);
		
		
		
		return sessionfactory;
	}
}