package org.bemypet.domain;

public class ReservVO {
/*
	create TABLE tbl_reserv (
		    num     int     unsigned        auto_increment     comment '예약글번호',
		    userId      varchar(30)                 not null                comment '아이디',
		    category        CHAR(4	)     not null        comment '예약종류',
		    subject     varchar(40)     not null        comment '예약제목',
		    content     varchar(200)        not null        comment '예약내용',
		    resdate     date        comment '예약날짜',
		    restime     char(5)     comment '예약시간',
		    pwd     varchar(15)     not null       comment '비밀번호',   
		    regdate     date        comment '작성일',
		    confirm		char(2)	default '0' comment '예약완료여부',
		    ref     int     comment '예약글번호',
		    pos     int     unsigned        comment '예약답글번호',
		    depth       int     unsigned        comment '답글 들여쓰기',
		    count       int     unsigned        comment '조회수',
		    primary key (num),
		    foreign key (userId) references tbl_member(userId)
		) COMMENT '상담예약 테이블';
		*/
	private int num;
	private String userId;
	private String category;
	private String subject;
	private String content;
	private String resdate;
	private String restime;
	private String pwd;
	private String userTel;
	private String regdate;
	private String confirm;
	private int ref;
	private int pos;
	private int depth;
	private int count;
	
	private int dno;
	private String dogname;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public String getRestime() {
		return restime;
	}
	public void setRestime(String restime) {
		this.restime = restime;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
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
	
}
