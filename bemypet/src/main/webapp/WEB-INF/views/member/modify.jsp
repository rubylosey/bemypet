<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-member-bg">
	<h2><span>M</span>ember <span>M</span>ODIFY</h2>
</div>

<section>
	<form role="form" action="/member/modify" method="post" autocomplete="off">
		<ul class="member-wrap">
			<li>
				<label for="userId">아이디</label>
				<input type="text" id="userId" name="userId" value="${modify.userId}" class="valueform" readonly>
			</li>
			<li>
				<label for="userPass">비밀번호</label>
				<input type="password" id="userPass" name="userPass" value="${modify.userPass}" class="valueform" >
			</li>
			<li>
				<label for="userName">이 름</label>
				<input type="text" id="userName" name="userName" value="${modify.userName}" class="valueform" >
			</li>
			<li>
				<label for="nickName">닉네임</label>
				<input type="text" id="nickName" name="nickName" value="${modify.nickName}" class="valueform" readonly>
			</li>
			<li>
				<label for="userTel">전화번호</label>
				<input type="tel" id="userTel" name="userTel" oninput="hypenTel(this)" maxlength="13"  value="${modify.userTel}" class="valueform" >
			</li>
			<li>
				<label for="userEmail">이메일</label>
				<input type="text" id="userEmail" name="userEmail" value="${modify.userEmail}" class="valueform" >
			</li>
			<li>
				<button type="" id="member_modify" class="abtn abtn-danger">수정</button>
				<button type="reset" class="abtn abtn-success">다시쓰기</button>
				<a href="/member/view?userId=${modify.userId}" class="abtn abtn-info">마이페이지</a>
			</li>
		</ul>
	</form>
</section>
	
	<script>
		$('#member_modify').on('click', function(e) {
			if(confirm('정말 회원수정 하시겠습니까?') == true) {
				$(this).attr('type', 'submit');
			}else {
				return;
			}
		});
		
		 const hypenTel = (target) => {
			  target.value = target.value
			    .replace(/[^0-9]/g, '')
			    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
			}
	</script>
