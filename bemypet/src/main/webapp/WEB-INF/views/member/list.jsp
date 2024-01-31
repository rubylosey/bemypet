<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<script>
	$(function(){
		$('#search').keyup(function(){
			var value = $(this).val().toLowerCase(); // 검색폼에 입력한 값을 얻는다.
			
			$('#row > li').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});

	});
</script>
	
<div class="bn bn-member-bg">
	<h2><span>M</span>ember <span>L</span>IST</h2>
</div>

<section>
	<div class="search-wrap">
		<input type="search" id="search" placeholder="검색어 입력" class="valueform">
		<a href="/member/register" class="btn btn-primary">회원등록</a>
	</div>
	
	<ul id="row" class="mt50">
		<c:forEach items="${list}" var="list">
		<li>
			<h3><a href="/member/view?userId=${list.userId}">${list.nickName}</a></h3>
			<p class="userName">이름 : ${list.userName}</p>
			<p>닉네임 : ${list.nickName}</p>
			<p>전화번호 : ${list.userTel}</p>
			<p>이메일 : ${list.userEmail}</p>
			<p>등록일 : <fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></p>
			<p>수정일 : <fmt:formatDate value="${list.updateDate}" pattern="yyyy-MM-dd" /></p>
		</li>
		</c:forEach>
	</ul>


</section>

<%@ include file="../includes/footer.jsp" %>
