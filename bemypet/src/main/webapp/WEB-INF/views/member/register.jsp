<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-member-bg">
	<h2><span>M</span>ember<span> R</span>EGISTER</h2>
</div>
    
		<div class="subtitle">
		<h3>Member JOIN</h3>
		<div class="subtitle-bar"></div>
		<h4>회원가입</h4>
	</div>
		<p class="page-txt">회원가입을 하시면 더욱 편리하게 이용하실 수 있습니다.</p>
		
		
<section>
	<form role="form" method="post" autocomplete="off">
		<ul id="join-form" class="fill-in-wrap r-fill-in-wrap">
			<li>
				<input type="text"  id="userId" name="userId" placeholder="아 이 디 (기호($,#,&,^,!,*,~,/ 등)사용불가, 영문과 숫자만 사용가능)" class="fill-in fill-in-flex member-input"  autofocus required>
				<div class="repeat-check">
					<button type="button" id="idCheck" class="abtn-default bbtn">아이디 중복 확인</button>
					<p id="idCheckMsg">아이디 중복 확인을 하세요.</p>
				</div>
			</li>			
			
			<li><input type="password" name="userPass" placeholder="비밀번호 (비밀번호는 기호(#, *)와 영문, 숫자만 사용가능)" class="fill-in"  id="member-input"required></li>
			<li><input type="text" name="userName" placeholder="이   름" class="fill-in" id="member-input" required></li>
			
			<li>
				<input type="text" id="nickName" name="nickName" placeholder="닉네임 입력" class="fill-in member-input"  required>
				<div class="repeat-check">
					<button type="button" id="nickNameCheck" class="bbtn abtn-default">닉네임 중복 확인</button>
					<p class="nickNameCheckMsg">닉네임 중복 확인을 하세요.</p>
				</div>
			</li>
			<div class="li-checkbox">
			<li>
				<span>성별 : </span>
                    <label class="sub-checkbox-container">
                    <input type="checkbox" name="gender" value="m" class="sub-input" >남성
                    <svg id="box-svg" viewBox="0 0 64 64" height="2em" width="2em">
                      <path d="M 0 16 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 16 L 32 48 L 64 16 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 16" pathLength="575.0541381835938" class="path"></path>
                    </svg>
                  </label>
                    <label class="sub-checkbox-container">
                    <input type="checkbox" name="gender" value="f" class="sub-input">여성
                    <svg viewBox="0 0 64 64" height="2em" width="2em">
                      <path d="M 0 16 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 16 L 32 48 L 64 16 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 16" pathLength="575.0541381835938" class="path"></path>
                    </svg>
                  </label>
			</li>
			</div>
		 	<li><input type="tel" name="userTel" class="fill-in"  oninput="hypenTel(this)" maxlength="13"  id="member-input" placeholder="전화번호 (ex. 010-0000-0000)"  required ></li>
			<li><input type="email" name="userEmail" placeholder="이 메 일" class="fill-in" id="member-input"></li>
			
		</ul>	
		<div class="btnWrap">
			<button type="submit" id="submit" disabled="disabled" class="abtn abtn-primary">회원가입</button>
			<button type="reset" class="abtn abtn-info">다시쓰기</button>
		</div>	
	</form>
</section>
	
	<script>
		$('#idCheck').click(function(){
			var query = {userId : $('#userId').val()};
			
			$.ajax({
				url : '/member/idCheck',
				type : 'post',
				data : query,
				success : function(data) {
					if (data === "success") {
						$('#idCheckMsg').text('아이디가 중복 되어 사용할 수 없습니다.');
						$('#userId').focus();
						$('#submit').attr('disabled', 'disabled');
					} else {
						$('#idCheckMsg').text('사용 가능한 아이디입니다.');
						$('#submit').removeAttr('disabled');
					}
				}
			});
			
		});
		
		
		$('#nickNameCheck').click(function(){
			var query = {nickName : $('#nickName').val()};
			
			$.ajax({
				url : '/member/nickNameCheck',
				type : 'post',
				data : query,
				success : function(data) {
					if (data === "success") {
						$('.nickNameCheckMsg').text('닉네임이 중복 되어 사용할 수 없습니다.');
						$('#nickName').focus();
						$('#submit').attr('disabled', 'disabled');
					} else {
						$('.nickNameCheckMsg').text('사용 가능한 닉네임입니다.');
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

