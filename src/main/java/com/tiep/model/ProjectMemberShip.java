package com.tiep.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ProjectMemberShip")
public class ProjectMemberShip implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3465813074586302847L;
	@Id
	@Column
	private String pro_id; // Mã dự án

	@Column
	private String emp_id; // Mã nhân viên

	public String getPro_id() {
		return pro_id;
	}

	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

}