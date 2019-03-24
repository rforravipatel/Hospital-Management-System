package com.HMS.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Patient")
public class Patient {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Patient_id", unique = true, nullable = false)
	private int id;
	
	@Column(nullable = false)
	private String firstName;
	
	@Column(nullable = false)
	private String lastName;
	
	@Column(nullable = false)
	private short phoneNumber;
	
	@Column(nullable = false)
	private Date birthDate;
	
	@Column(nullable = false)
	private String gender;
	
	@Column(nullable = false)
	private String address;
	
	@Column(nullable = false)
	private short roomNo;
	
	@Column(nullable = false)
	private Date admitDate;
	
	@Column(nullable = false)
	private Date dischargeDate;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public short getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(short phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public short getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(short roomNo) {
		this.roomNo = roomNo;
	}
	public Date getAdmitDate() {
		return admitDate;
	}
	public void setAdmitDate(Date admitDate) {
		this.admitDate = admitDate;
	}
	public Date getDischargeDate() {
		return dischargeDate;
	}
	public void setDischargeDate(Date dischargeDate) {
		this.dischargeDate = dischargeDate;
	}
	
	
	@Override
	public String toString() {
		return "Patient [firstName=" + firstName + ", lastName=" + lastName + ", phoneNumber=" + phoneNumber
				+ ", birthDate=" + birthDate + ", gender=" + gender + ", address=" + address + ", roomNo=" + roomNo
				+ ", admitDate=" + admitDate + ", dischargeDate=" + dischargeDate + "]";
	}
	
	
}
