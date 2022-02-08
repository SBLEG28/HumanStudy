package com.human.edu;

public class Department {
	private String de_id;
	private String par_name;
	private String department;
	private String EMP_NAME;
	public Department(String de_id, String par_name, String department, String eMP_NAME) {
		super();
		this.de_id = de_id;
		this.par_name = par_name;
		this.department = department;
		EMP_NAME = eMP_NAME;
	}
	public Department() {
		super();
	}
	public String getDe_id() {
		return de_id;
	}
	public void setDe_id(String de_id) {
		this.de_id = de_id;
	}
	public String getPar_name() {
		return par_name;
	}
	public void setPar_name(String par_name) {
		this.par_name = par_name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getEMP_NAME() {
		return EMP_NAME;
	}
	public void setEMP_NAME(String eMP_NAME) {
		EMP_NAME = eMP_NAME;
	}
	
	
}
