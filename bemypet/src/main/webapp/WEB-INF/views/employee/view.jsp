<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>
	
<div class="bn bn-member-bg">
	<h2><span>E</span>mployee <span>V</span>IEW</h2>
</div>

<section>
	<ul class="member-wrap">
		<li><h3>${view.empid}</h3></li>
		<li>이름 : ${view.empname}</li>
		<li>부서 : ${view.department}</li>
		<li>전화번호 : ${view.emptel}</li>
		<li>이메일 : ${view.empemail}</li>
 		<li>가입일 : <fmt:formatDate value="${view.joindate}" pattern="yyyy-MM-dd" /></li>
 		
		<li>
			<a href="/reserv/list" class="abtn abtn-primary">예약목록</a>	
			<a href="/employee/modify?empid=${view.empid}" class="abtn abtn-success">정보수정</a>
		</li>
	</ul>
</section>

<%@ include file="../includes/footer.jsp" %>