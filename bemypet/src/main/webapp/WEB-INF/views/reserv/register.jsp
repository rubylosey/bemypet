<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
<script src="/resources/ckeditor/ckeditor.js"></script>
	
	<div class="bn bn-stp-bg char-hop">        
       <h2><span>b</span>e my <span>f</span>amily</h2>
    </div>

    <div class="subtitle">
        <h3>reservation</h3>
        <div class="subtitle-bar"></div>
        <h4>상담 예약</h4>
    </div>
    <p class="subtitle-txt">양식을 작성하시면 상담예약이 가능합니다.</p>

<section>
	<form role="form" method="post">
		
		<ul id="post-form" class="fill-in-wrap u-fill-in-wrap">
			<li><input type="text" name="userId" value="${member.userId}" readonly class="fill-in" id="member-input" ></li>
			<li>
				<label for="category">상담 종류를 선택해주세요.</label>
				<select name="category" id="category">
					<option value="상담">상담</option>
					<option value="방문">방문</option>
					<option value="교육">교육</option>
					<option value="계약">계약</option>
				</select>
			</li>
			<li><input type="text" name="subject" placeholder="제목입력" class="fill-in" id="member-input"></li>
			<li><input type="date" name="resdate" class="fill-in fill-in-flex"  id="member-input" required></li>
			<li>	<label for="restime" >예약시간</label>
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
			<li><span class="dogres-text">전화번호</span><input type="tel" name="userTel" value="${member.userTel}"  oninput="hypenTel(this)" maxlength="13" class="fill-in" id="member-input" ></li>
			 <li><input type="password" name="pwd" placeholder="비밀번호입력" required class="fill-in" id="member-input" ></li>	
			<li><button></button></li>
		 	<li>
		 		<button type="submit" class="abtn abtn-primary">등   록</button>
		 		<button type="reset" class="abtn abtn-default">다시쓰기</button>
		 		<a href="/reserv/list" class="abtn abtn-info">목   록</a>
	 		</li>	
	 		
	 			
		</ul>
	</form>	
</section>

<script>
const hypenTel = (target) => {
	  target.value = target.value
	    .replace(/[^0-9]/g, '')
	    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
	}

</script>


<%@ include file="../includes/footer.jsp" %>


	
	<%-- 
	<form role="form" method="post">
		<ul class="b-list">
			<li><input type="text" name="title" placeholder="제목 입력" autofocus required class="valueform"></li>
			<li><label>작성자 : </label><input type="text" name="writer" value="${member.nickName}" readonly></li>
			<li>
				<textarea name="content" id="contents"></textarea>
				<script>
					var ckeditor_config = {
						width : '100%',
						height : '400px',
						resize_enaleb : false,
						enterMode : CKEDITOR.ENTER_BR,
						shiftEnterMode : CKEDITOR.ENTER_P,
						filebrowserUploadUrl : "/board/ckUpload"
						//Cotroller에서 filebrowserUploadUrl에 작성한 요청 URL을 매핑하여 이미지 파일 업로드를 구현한다.
					};
					   
					CKEDITOR.replace("contents", ckeditor_config);
				</script>
			</li>
			<li>
				<c:if test="${member != null}"><button type="submit" class="btn btn-primary">글 등록</button></c:if>
				<a href="/board/listPageSearch?num=1" class="btn btn-info">목 록</a>
			</li>
		</ul>
	</form>
	--%>
