package com.HMS.controller;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.HMS.model.Patient;
import com.HMS.service.ListDetailsService;
import com.opensymphony.xwork2.ActionSupport;

public class ListDetails extends ActionSupport implements SessionAware {

	private Patient patient;
	private List<Patient> listPatient;
	private ListDetailsService listDetailsService;

	public ListDetails() {
		listDetailsService = new ListDetailsService();
	}

	public String execute() {

		this.listPatient = listDetailsService.getAllPatient();

		return SUCCESS;

	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public List<Patient> getListPatient() {
		return listPatient;
	}

	public void setListPatient(List<Patient> listPatient) {
		this.listPatient = listPatient;
	}

	@Override
	public void setSession(Map<String, Object> session) {

	}

}
