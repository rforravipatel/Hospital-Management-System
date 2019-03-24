package com.HMS.controller;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.HMS.model.Admin;
import com.HMS.model.Patient;
import com.HMS.service.RegisterService;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterController extends ActionSupport implements SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Admin admin;
	Patient patient;
	RegisterService registerService = new RegisterService();
	private SessionMap<String, Object> sessionMap;
	
	public Admin getAdmin() {
		return admin;
	}


	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	
	
	public Patient getPatient() {
		return patient;
	}


	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	
	@Override
	public void setSession(Map<String, Object> session) {
		sessionMap = (SessionMap<String, Object>) session;
		
	}

	public String registerAdmin() {
		if(admin.getName().length() == 0){
			addFieldError("admin.name", "Name is required.");
		}else if(admin.getUserName().length() == 0) {
			addFieldError("admin.userName", "User name is required.");
		}else if(admin.getPassWord().length() == 0){
			addFieldError("admin.passWord", "Password is required.");
		}else{
			registerService.registerAdmin(admin);
			return SUCCESS;
		}
		
		return ERROR;
		
	}
	
	public String patientRegister() {
		
		if(registerService.registerPatient(patient)) {
			return SUCCESS;
		}else {
			System.out.println("clear");
			return ERROR;
		}
		
	}


	
	
	
}
