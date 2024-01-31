package org.nextway.domain;

import java.util.Date;

public class MemberVO {
	/*
	create table tbl_member (
    userId    varchar(15)   not null    comment '회원아이디',
    userPass   varchar(15)   not null    comment '회원비밀번호',
    userName    char(10)    not null    comment '회원명',
    nickName    varchar(30) not null    comment '회원별명',
    gender    char(1)    not null    comment '성별',
    userTel   char(13)    comment '전화번호',
    userEmail   varchar(25)   comment '이메일',   
    regdate   date    comment '회원가입일',
    updatedate date    comment '회원정보수정일',
    primary key(userId)
) COMMENT '회원관리테이블';
	);
	*/
	private String userId;
	private String userPass;
	private String userName;
	private String nickName;
	private String gender;
	private String userTel;
	private String userEmail;
	private Date regDate;
	private Date updateDate;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
	
	
}
