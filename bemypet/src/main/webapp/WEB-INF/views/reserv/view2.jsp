<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>

	<div class="bn bn-stp-bg char-hop">        
       <h2><span>b</span>e my <span>f</span>amily</h2>
    </div>


<section>
	<ul class="member-wrap">
		<h3>${view2.userId}</h3>
		<li>제목 : ${view2.subject }</li>
		<c:if test="${view2.dogname != null}"><li>강아지 이름: ${view2.dogname}</li></c:if>
		<li>예약종류: ${view2.category}</li>
		<li>예약일 :${view2.resdate }</li>
		<li>예약시간 : ${view2.restime }</li>
		<li>내용 : ${view2.content }</li>
		<li>전화번호 : ${view2.userTel }</li>
		<li>예약상태 : 
				<c:if test = "${view2.confirm == '-1' }">예약취소</c:if>
				<c:if test = "${view2.confirm == '0' }">예약대기</c:if>
				<c:if test = "${view2.confirm == '1' }">예약승인</c:if>
		</li>
		
		<li>
			<c:if test="${member != null || employee != null}">
			<a href="/reserv/list" class="abtn abtn-info">예약목록</a>
			<a href="/reserv/modify?num=${view2.num}" class="abtn abtn-success">예약수정</a>
			<a href="/reserv/cancel?num=${view2.num}" class="abtn abtn-danger">예약취소</a>
			</c:if>
		</li>		
	</ul>
</section>

<%@ include file="../includes/footer.jsp" %>