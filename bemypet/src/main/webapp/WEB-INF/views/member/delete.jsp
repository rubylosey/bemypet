<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-member-bg">
	<h2><span>M</span>ember <span>D</span>ELETE</h2>
</div>

<section>
	<form action="/member/delete" method="post" autocomplete="off"> <%-- autocomplete 속성은 입력폼의 자동완성 활성화 여부 설정 --%>
		<ul class="member-wrap">
			<li>
				<label for="userId">아이디</label>
				<input type="text" id="userId" name="userId" value="${delete.userId}" readonly class="valueform">
			</li>
			<li>
				<label for="userPass">비밀번호</label>
				<input type="password" id="userPass" name="userPass" class="valueform">
			</li>
			<li>
				<button type="" id="member_delete" class="btn btn-danger">회원탈퇴</button>
				<a href="/member/view?userId=${delete.userId}" class="btn btn-info">마이페이지</a>
			</li>
		</ul>
	</form>
	
	<c:if test="${msg == false}">
	<p class="d-passResult mt30">입력한 비밀번호가 틀립니다.</p>
	</c:if>
	
	<script>
		$('#member_delete').on('click', function(e) {
			if(confirm('정말 회원탈퇴 하시겠습니까?') == true) {
				$(this).attr('type', 'submit');
			}else {
				return;
			}
		});
	</script>

<%@ include file="../includes/footer.jsp" %>
