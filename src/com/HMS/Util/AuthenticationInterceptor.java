package com.HMS.Util;

import java.util.Map;

import com.HMS.model.Admin;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AuthenticationInterceptor implements Interceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		
		
	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("In Intercept");
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		Admin admin = (Admin) session.get("Admin");
		if(admin == null) {
			return ActionSupport.LOGIN;
		}
		return invocation.invoke();
	}

}
