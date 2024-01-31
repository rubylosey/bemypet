<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>

<div class="bn bn-board-bg">
	<h2>My Reservation VIEW</h2>
</div>


<section>
	<ul class="member-wrap">
		<li>제목 : ${myres.subject }</li>
		<li>예약일 :${myres.resdate }</li>
		<li>예약시간 : ${myres.restime }</li>
		<li>전화번호 : ${myres.userTel }</li>
		<li>작성일 : ${myres.regdate }</li>
		<li>
			
			<a href="/reserv/modify?userId=${myres.userId}" class="abtn abtn-success">예약수정</a>
			<a href="/reserv/delete?userId=${myres.userId}" class="abtn abtn-danger">예약삭제</a>
			
		</li>		
	</ul>
</section>



<%@ include file="../includes/footer.jsp" %>