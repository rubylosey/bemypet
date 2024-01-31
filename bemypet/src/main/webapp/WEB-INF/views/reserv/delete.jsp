<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<div class="bn bn-board-bg">
	<h2><span>M</span>y <span>R</span>eservation <span>D</span>ELETE</h2>
</div>

<section>
	<form role="form" action="/reserv/delete"method="post" autocomplete="off">
		<ul class="fill-in-wrap u-fill-in-wrap">
			<input type="hidden" name="num" value="${delete.num }">
			<li><input type="text" name="userId" value="${delete.userId}" readonly class="fill-in"></li>
			<li>카테고리 : ${delete.category }</li>
				
			<li><input type="text" name="subject" value="${modify.subject}" required class="fill-in"></li>
			<li><input type="date" name="resdate" class="fill-in fill-in-flex" required></li>
			<li>	예약시간 : ${delete.restime }</li>
			<li><textarea name="content" >${delete.subject}</textarea></li>
			<li><span>전화번호</span><input type="tel" name="userTel" value="${delete.userTel}" class="fill-in"></li>
			 <li><span>비밀번호</span><input type="password" name="pwd"  value="${delete.pwd}" required class="fill-in"></li>	
			
		 	<li>
		 		<button type="" id="reserv_delete" class="abtn abtn-danger">예약 삭제</button>
		 		<a href="/reserv/view2?num=${delete.num }">나의예약정보</a>
		 		
	 		</li>	
		</ul>
	</form>
</section>	
	
	<script>
		$('#reserv_delete').on('click', function(e) {
			if(confirm('정말 예약삭제 하시겠습니까?') == true) {
				$(this).attr('type', 'submit');
			}else {
				return;
			}
		});
	</script>

<%@ include file="../includes/footer.jsp" %>