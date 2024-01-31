<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>

	<div class="bn bn-stp-bg char-hop">        
       <h2><span>b</span>e my <span>f</span>amily</h2>
    </div>


<section>
	<ul class="member-wrap">
		<li>제목 : ${view.subject }</li>
		<li>예약일 :${view.resdate }</li>
		<li>예약시간 : ${view.restime }</li>
		<li> 내용 : ${view.content }</li>
		<li>전화번호 : ${view.userTel }</li>
		<li>예약상태 : 
				<c:if test = "${view.confirm == '-1' }">예약취소</c:if>
				<c:if test = "${view.confirm == '0' }">예약대기</c:if>
				<c:if test = "${view.confirm == '1' }">예약승인</c:if>
		</li>				
		<li>
			<c:if test="${member.userId == 'admin'}"><a href="/reserv/list" class="abtn abtn-primary">예약목록</a></c:if>
			<c:if test="${member != null}">
			<a href="/reserv/list" class="abtn abtn-info">예약목록</a>
			<a href="/reserv/modify?num=${view.num}" class="abtn abtn-success">예약수정</a>
			<a href="/reserv/cancel?num=${view2.num}" class="abtn abtn-danger">예약취소</a>
			</c:if>
		</li>		
	</ul>
</section>

<%@ include file="../includes/footer.jsp" %>