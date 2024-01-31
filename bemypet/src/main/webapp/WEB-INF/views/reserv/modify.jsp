<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>

<div class="bn bn-board-bg">
	<h2><span>M</span>y <span>R</span>eservation <span>M</span>ODIFY</h2>
</div>

<section>
	<form role="form" action="/reserv/modify"method="post" autocomplete="off">
		
		<ul id="post-form" class="fill-in-wrap u-fill-in-wrap">
			<input type="hidden" name="num" value="${modify.num }">
			<li><input type="text" name="userId" value="${modify.userId}" readonly class="fill-in" id="member-input" ></li>
			<li>
				<label for="category">카테고리</label>
				<select name="category" id="category">
					<option value="상담" <c:if test="${modify.category == '상담'}">selected</c:if>>상담</option>
					<option value="방문" <c:if test="${modify.category == '방문'}">selected</c:if>>방문</option>
					<option value="교육" <c:if test="${modify.category == '교육'}">selected</c:if>>교육</option>
					<option value="계약" <c:if test="${modify.category == '계약'}">selected</c:if>>계약</option>
				</select>
			<input type="text" name="subject" value="${modify.subject}" required class="fill-in" id="member-input" >	
			</li>
			<li><input type="date" name="resdate" class="fill-in fill-in-flex" id="member-input" required></li>
			<li>	<label for="restime">예약시간</label>
					<select name="restime" id="restime">
						<option value="09시">09시</option>
						<option value="10시">10시</option>
						<option value="11시">11시</option>
						<option value="12시">12시</option>
						<option value="14시">14시</option>
						<option value="15시">15시</option>
						<option value="16시">16시</option>
						<option value="17시">17시</option>				
					</select>
			</li>
			<li><textarea name="content" >${modify.subject}</textarea></li>
			<li><span>전화번호</span><input type="tel" name="userTel" value="${member.userTel}" class="fill-in" id="member-input" ></li>
			 <li><span>비밀번호</span><input type="password" name="pwd"  value="${modify.pwd}"  oninput="hypenTel(this)" maxlength="13"  required class="fill-in" id="member-input" ></li>	
			<li><button></button></li>
		 	<li>
		 		<button type="" id="reserv_modify" class="abtn abtn-danger">수정</button>
		 		
		 		<button type="reset" class="abtn abtn-default">다시쓰기</button>
		 		<a href="/reserv/list" class="abtn abtn-info">예약목록</a>
	 		</li>	
		</ul>
	</form>
</section>
	
	<script>
		$('#reserv_modify').on('click', function(e) {
			if(confirm('정말 예약수정 하시겠습니까?') == true) {
				$(this).attr('type', 'submit');
			}else {
				return;
			}
		});
	</script>

<%@ include file="../includes/footer.jsp" %>