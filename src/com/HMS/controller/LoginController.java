package com.HMS.controller;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.HMS.model.Admin;

import com.HMS.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginController extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin;
	LoginService loginService = new LoginService();
	private SessionMap<String, Object> sessionMap;
	
	
	public Admin getAdmin() {
		return admin;
	}



	public void setAdmin(Admin admin) {
		this.admin = admin;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		sessionMap = (SessionMap<String, Object>)session;
	}

	public String loginValidate() {
		
		Admin admincheck = (Admin)sessionMap.get("Admin");
		if(admincheck != null) {
			System.out.println("In null check");
			return SUCCESS;
		}else {
			if(loginService.checkUser(admin)) {
				System.out.println("In checkUser");
				sessionMap.put("Admin", admin);
				return SUCCESS;
			}else {
				addActionError("I don't know you, dont try to hack me!");
			}
			return INPUT;
		}	
	}

	public String logout() {
		sessionMap.remove("Admin");
		sessionMap.invalidate();
		return SUCCESS;
	}

	public String showLogin() {
		return SUCCESS;
	}
	
}
