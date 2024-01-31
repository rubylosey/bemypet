<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-member-bg">
	<h2><span>E</span>mployee <span>R</span>EGISTER</h2>
</div>

<section>
	<form role="form" method="post" autocomplete="off">
		<ul class="register-wrap">
			<li>
				<input type="text" id="empid" name="empid" placeholder="아이디 입력" class="fill-in member-input"  required>
				<button type="button" id="idCheck" class="abtn abtn-default bbtn">아이디 중복 확인</button>
				<p id="idCheckMsg">아이디 중복 확인을 하세요.</p>
			</li>
			<li><input type="password" name="emppass" placeholder="비밀번호 입력" class="fill-in" id="member-input"  required></li>
			<li><input type="text" name="empname" placeholder="이름 입력" class="fill-in" id="member-input"  required></li>
			<li>
				<label for="department">부서</label>
				<select name="department" id="department">
					<option value="상담">상담</option>
					<option value="방문">방문</option>
					<option value="교육">교육</option>
					<option value="계약">계약</option>
				</select>
			</li>
			<li><input type="tel" name="emptel" class="fill-in"  oninput="hypenTel(this)"  maxlength="13" id="member-input"  placeholder="전화번호" required></li>
			<li><p>010-0000-0000 형식으로 입력하세요.</p></li>
			
			<li><input type="email" name="empemail" placeholder="이 메 일" class="fill-in"  id="member-input" required></li>
			
			<li>
				<button type="submit" id="submit" disabled="disabled" class="abtn abtn-primary">회원가입</button>
				<button type="reset" class="abtn abtn-info">다시쓰기</button>
				<a href="/" class="abtn abtn-success">로그인</a>
			</li>
		</ul>
	</form>
</section>
	
	<script>
		$('#idCheck').click(function(){
			var query = {empid : $('#empid').val()};
			
			$.ajax({
				url : '/employee/idCheck',
				type : 'post',
				data : query,
				success : function(data) { // Controller의 결과값이 data로 전달된다.
					if (data === "success") {
						$('#idCheckMsg').text('아이디가 중복 되어 사용할 수 없습니다.');
						$('#empid').focus();
						$('#submit').attr('disabled', 'disabled');
					} else {
						$('#idCheckMsg').text('사용 가능한 아이디입니다.');
						$('#submit').removeAttr('disabled');
					}
				}
			});			
		});
		 const hypenTel = (target) => {
			  target.value = target.value
			    .replace(/[^0-9]/g, '')
			    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
			}
			
		
		
	</script>

<%@ include file="../includes/footer.jsp" %>
