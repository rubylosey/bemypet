package org.bemypet.domain;

import java.util.Date;

public class EmployeeVO {
	/*
	 CREATE TABLE tbl_employee (
	empid			VARCHAR(30)							COMMENT '아이디',
	emppass		VARCHAR(50)		NOT NULL			COMMENT '비밀번호',
	empname		VARCHAR(30)		NOT NULL			COMMENT '이름',
	department	VARCHAR(30)		NOT NULL			COMMENT '닉네임',
	emptel		VARCHAR(50)		NOT NULL			COMMENT '전화번호',
	empemail		VARCHAR(50)		NOT NULL			COMMENT '이메일',
	joindate		TIMESTAMP		DEFAULT NOW()	COMMENT '등록일',
	resign		TIMESTAMP		DEFAULT NOW()	COMMENT '수정일',
	PRIMARY KEY (empid)
) COMMENT '직원 테이블';
	 */
	
	private String empid;
	private String emppass;
	private String empname;
	private String department;
	private String emptel;
	private String empemail;
	private Date joindate;
	private Date resign;
	
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getEmppass() {
		return emppass;
	}
	public void setEmppass(String emppass) {
		this.emppass = emppass;
	}	
	
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getEmptel() {
		return emptel;
	}
	public void setEmptel(String emptel) {
		this.emptel = emptel;
	}
	public String getEmpemail() {
		return empemail;
	}
	public void setEmpemail(String empemail) {
		this.empemail = empemail;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public Date getResign() {
		return resign;
	}
	public void setResign(Date resign) {
		this.resign = resign;
	}
	
	
}
