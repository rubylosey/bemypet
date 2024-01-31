<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-adopt-bg">
	<h2><span>G</span>IVE A <span>S</span>HELTER</h2>
</div>
<div class="subtitle">
	<h3>Dog Adoption</h3>
	<div class="subtitle-bar"></div>
	<h4>입양진행<h4>
</div>
<p class="subtitle-txt">양식을 작성하시면 입양 상담예약이 가능합니다.</p>

<section>
	<form action="/reserv/dogres" role="form" method="post">
		
		<ul id="post-form" class="fill-in-wrap u-fill-in-wrap">
			<li><input type="text" name="userId" value="${member.userId}" readonly class="fill-in" id="member-input" ></li>
			
			<li><span class="dogres-text">강아지번호</span><input type="text" name="dno" value="${aview.dno}" readonly class="fill-in" id="member-input" ></li>
			<li><span class="dogres-text">강아지이름</span><input type="text" name="dogname" value="${aview.dogname}" readonly class="fill-in" id="member-input" ></li>
						
			<li><input type="text" name="subject" placeholder="제목입력" class="fill-in" id="member-input" ></li>
			<input type="hidden" name="category" value="상담">
							
			<li><input type="date" name="resdate" class="fill-in fill-in-flex" id="member-input"  required></li>
			<li>	<label for="restime">예약시간</label>
					<select name="restime" id="restime" required>
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
			<li><textarea name="content" placeholder="메모를 남겨주세요."></textarea></li>
			<li><span class="dogres-text">전화번호</span><input type="tel" name="userTel" value="${member.userTel}"  class="fill-in" id="member-input" ></li>
			 <li><input type="password" name="pwd" placeholder="비밀번호입력" required class="fill-in" id="member-input" ></li>	
			<li><button></button></li>
		 	<li>
		 		<button type="submit" class="abtn abtn-primary">등   록</button>
		 		<button type="reset" class="abtn abtn-default">다시쓰기</button>
		 		<a href="/adopt/list" class="abtn abtn-info">목   록</a>
	 		</li>	
	 		
	 			
		</ul>
	</form>	
</section>



<%@ include file="../includes/footer.jsp" %>