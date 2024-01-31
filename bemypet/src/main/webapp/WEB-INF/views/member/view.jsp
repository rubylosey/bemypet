<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>
	
<div class="bn bn-member-bg">
	<h2><span>M</span>ember <span>V</span>IEW</h2>
</div>

<section>
	<ul class="member-wrap">
		<li><h3>${view.userId}</h3></li>
		<li>이름 : ${view.userName}</li>
		<li>닉네임 : ${view.nickName}</li>
		<li>전화번호 : ${view.userTel}</li>
		<li>이메일 : ${view.userEmail}</li>
 		<li>가입일 : <fmt:formatDate value="${view.regDate}" pattern="yyyy-MM-dd" /></li>
		<li>수정일 : <fmt:formatDate value="${view.updateDate}" pattern="yyyy-MM-dd" /></li>
		<li>
			<c:if test="${member.userId!=null || employee.empid!=null }">
			<c:if test="${member.userId == 'admin'}">
			<a href="/member/list" class="abtn abtn-primary">회원목록</a>
			<a href="/employee/list"class="abtn abtn-info">직원목록</a>
			</c:if>
			<a href="/reserv/list" class="abtn abtn-info">예약목록</a>
			</c:if>
			<c:if test="${member != null}">			
			<a href="/member/modify?userId=${view.userId}" class="abtn abtn-success">정보수정</a>
			<a href="/member/delete?userId=${view.userId}" class="abtn abtn-danger">회원탈퇴</a>
			</c:if>
		</li>
	</ul>
</section>

<%@ include file="../includes/footer.jsp" %>