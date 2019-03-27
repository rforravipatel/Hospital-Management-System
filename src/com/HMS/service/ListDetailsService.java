package com.HMS.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HMS.Util.HibernateUtil;
import com.HMS.model.Patient;


public class ListDetailsService {

	Session session = HibernateUtil.getSessionFactory().openSession();
	 Transaction transaction = session.getTransaction();
	 
	 
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Patient> getAllPatient() {
		List<Patient> listOfPatient;
		listOfPatient = (List<Patient>) session.createQuery("from Patient").list();		
			
		return listOfPatient;
	}

}
