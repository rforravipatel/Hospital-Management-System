package com.HMS.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.HMS.Util.HibernateUtil;
import com.HMS.model.Admin;
import com.HMS.model.Patient;


public class RegisterService {

	 
	 Session session = HibernateUtil.getSessionFactory().openSession();
	 Transaction transaction = session.getTransaction();
	 

	public void registerAdmin(Admin admin) {
		Transaction tx = session.beginTransaction();	 
	       session.save(admin);
	       System.out.println("Object saved successfully.....!!");
	     tx.commit();	
		
	}
	
	public boolean registerPatient(Patient patient) {
		Transaction tx = session.beginTransaction();	 
	       session.save(patient);
	       System.out.println("Patient saved successfully.....!!");
	     tx.commit();
		return true;
	}

}
