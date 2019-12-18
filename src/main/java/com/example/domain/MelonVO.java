package com.example.domain;

public class MelonVO {
	private int id;
	private String name;
	private String address;
	private String company;
	private int year;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	
	
	@Override
	public String toString() {
		return "MelonVO [id=" + id + ", name=" + name + ", address=" + address + ", company=" + company + ", year="
				+ year + "]";
	}
	
	
}
