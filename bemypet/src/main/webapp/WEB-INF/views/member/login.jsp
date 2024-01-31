<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>

	<div class="bn bn-member-bg">
		<h2><span>M</span>ember<span> L</span>OGIN</h2>
	</div>
	
	<section>	
		<c:if test="${member == null }">
		<div class="subtitle">
		<h3>Member LOGIN</h3>
		<div class="subtitle-bar"></div>
		<h4>로그인</h4>
	</div>
	
		<p class="page-txt">로그인을 하시면 더욱 편리하게 이용하실 수 있습니다.</p>
		
			<form role="form"  action="/member/login" method="post" autocomplete ="off">
				<ul id="loginForm" class="fill-in-wrap">
					<li><input type="text" name="userId" placeholder="아 이 디" autofocus class="fill-in" id="member-input"></li>
					<li><input type="password" name="userPass" placeholder="비밀번호" class="fill-in" id="member-input"></li>
					<!-- <li><button type="submit" class="push">로 그 인</button></li> -->
					<button type="submit" class="push bon-btn" onclick="openModal()">
		            <span class="bon-btn-content">로그인</span>
		            </button>
					<li><a href="/member/register" class="push">회원가입</a></li>
				</ul>
			</form>
		</c:if>
		
		<c:if test="${member !=null}">
			<p class="page-txt">${member.userId}님 반갑습니다.</p>
		</c:if>
			<div class="push-grp">
				<c:if test="${member !=null}">
				<c:if test="${member.userId=='admin' }">
					<a href="/admin/list">관리자모드</a>
					<a href="/employee/list">직원목록</a>
					<a href="/reserv/list">예약목록</a>
					<a href="/member/logout">로그아웃</a>
				</c:if>
				</c:if>
			
				<c:if test="${member !=null}">
				<c:if test="${member.userId!='admin' }">
				<a href="/member/view?userId=${member.userId }">나의정보</a>
				<a href="/reserv/list">나의예약정보</a>				
				<a href="/member/logout">로그아웃</a>
				</c:if>
				</c:if>
			</div>
		</section>

<%@ include file="../includes/footer.jsp" %>