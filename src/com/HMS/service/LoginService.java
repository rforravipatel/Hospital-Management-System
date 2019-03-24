package com.HMS.service;

import java.util.List;

import javax.persistence.TypedQuery;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HMS.Util.HibernateUtil;

import com.HMS.model.Admin;

public class LoginService {
	
	Session session = HibernateUtil.getSessionFactory().openSession();
	 Transaction transaction = session.getTransaction();
	 
	 public boolean checkUser(Admin admin) {
		 String sql = " from Admin u where u.userName=:name and u.passWord=:pass";
		 	@SuppressWarnings("unchecked")
			TypedQuery<Admin> query = session.createQuery(sql);
	        query.setParameter("name", admin.getUserName());
	        query.setParameter("pass", admin.getPassWord());
	        List<Admin> list = query.getResultList();
	        if (list.size() > 0) {
	            session.close();
	            return true;
	        }
	        session.close();
	        return false;
	 }
}
