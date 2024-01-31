<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-member-bg">
	<h2><span>E</span>mployee <span>M</span>odify</h2>
</div>

<section>
	<form role="form" action="/employee/modify" method="post" autocomplete="off">
		<ul class="member-wrap">
			<li>
				<label for="empid">아이디</label>
				<input id="empid" type="text" name="empid" value="${modify.empid}" class="valueform" readonly>
			</li>
			<li>
				<label for="empname">이름</label>
				<input id="empname" type="text" name="empname" value="${modify.empname}" class="valueform" readonly>
			</li>
			<li>
				<label for="department">부서</label>
				<input id="department" type="text" name="department" value="${modify.department}" class="valueform" readonly>
			</li>
			<li>
				<label for="emptel">전화번호</label>
				<input id="emptel" type="tel" name="emptel" oninput="hypenTel(this)"  maxlength="13"  value="${modify.emptel}" class="valueform" >
			</li>
			<li>
				<label for="empemail">이메일</label>
				<input id="empemail" type="text" name="empemail" value="${modify.empemail}" class="valueform"  readonly>
			</li>
			
			<li>
				<button type="" id="employee_modify" class="abtn abtn-danger">수정</button>
				<button type="reset" class="abtn abtn-success">다시쓰기</button>
				<a href="/employee/view?empid=${modify.empid}" class="abtn abtn-info">마이페이지</a>
			</li>
		</ul>
	</form>
</section>

<script>
		$('#employee_modify').on('click', function(e) {
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
	

<%@ include file="../includes/footer.jsp" %>
