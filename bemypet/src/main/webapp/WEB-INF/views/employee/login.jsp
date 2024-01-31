<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>

	<div class="bn bn-member-bg">
		<h2><span>E</span>mployee <span>L</span>OGIN</h2>
	</div>
	
	<section>	
		<c:if test="${employee == null }">
		<div class="subtitle">
			<h3>Employee LOGIN</h3>
			<div class="subtitle-bar"></div>
			<h4>직원 로그인</h4>
		</div>
		
			<form role="form"  action="/employee/login"  method="post" autocomplete ="off">
				<ul id="loginForm" class="fill-in-wrap">
					<li><input type="text" name="empid" placeholder="아 이 디" autofocus class="fill-in" id="member-input"></li>
					<li><input type="password" name="emppass" placeholder="비밀번호" class="fill-in" id="member-input"></li>
					<button type="submit" class="push bon-btn" onclick="openModal()">
		            <span class="bon-btn-content">로그인</span>
		            </button>
					
				</ul>
			</form>
		</c:if>
		
		<c:if test="${employee !=null}">
			<p class="page-txt">${employee.empid}님 반갑습니다.</p>
		</c:if>
			<div class="push-grp">
				<c:if test="${employee !=null}">
				<c:if test="${employee.empid=='admin' }">
					<a href="/admin/list">관리자모드</a>
					<a href="/employee/register">직원등록</a>
					<a href="/employee/list">직원목록</a>
					<a href="/reserv/list">예약목록</a>
				</c:if>
				</c:if>
			
				<c:if test="${employee !=null}">
				<c:if test="${employee.empid!='admin' }">
				<a href="/employee/view?empid=${employee.empid }">나의정보</a>
				<a href="/reserv/list"">예약정보</a>	
				</c:if>
				</c:if>
			</div>
		</section>

<%@ include file="../includes/footer.jsp" %>