package org.bemypet.domain;

import java.util.Date;

public class AdoptVO {

	private int dno;
	private String dogname;
	private String size;
	private String breed;
	private String gender;
	private int age;
	private String dogarea;
	private Date indate;
	private Date updatedate;
	private String dogimg;
	private String dogcontent;
	
	
	public String getDogcontent() {
		return dogcontent;
	}
	public void setDogcontent(String dogcontent) {
		this.dogcontent = dogcontent;
	}
	public String getDogimg() {
		return dogimg;
	}
	public void setDogimg(String dogimg) {
		this.dogimg = dogimg;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	public String getDogname() {
		return dogname;
	}
	public void setDogname(String dogname) {
		this.dogname = dogname;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getDogarea() {
		return dogarea;
	}
	public void setDogarea(String dogarea) {
		this.dogarea = dogarea;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	
	
	
}


