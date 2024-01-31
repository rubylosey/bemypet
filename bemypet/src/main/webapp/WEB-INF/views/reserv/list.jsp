<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
	<div class="bn bn-stp-bg char-hop">        
       <h2><span>b</span>e my <span>f</span>amily</h2>
    </div>

    <div class="subtitle">
        <h3>reserve list</h3>
        <div class="subtitle-bar"></div>
        <h4>예약 목록</h4>
    </div>
    <p class="subtitle-txt">예약 현황을 확인해보세요.</p>


<section>
	<c:if test="${member!=null }">
	
	<div class="board-wrap">
		<a href="/reserv/register" class="abtn abtn-primary">예약하기</a>
	</div>
	</c:if>
	
	<c:if test="${member!=null && member.userId!='admin'}">
	<table class="boardList">
	
	<thead>
		<tr>
			<th>제목</th>
			<th>아이디</th>
			<th>예약종류</th>
			<th>예약일</th>
			<th>예약시간</th>
			<th>내용</th>
			<th>전화번호</th>			
			<th>예약상태</th>
			<th>수정/취소</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list}" var="list">
		<c:if test="${member.userId==list.userId && list.confirm != -1}">
		<tr>
			<th><a href="/reserv/view2?num=${list.num}">${list.subject}</th>			
			<td>${list.userId}</a></td>
			<td>${list.category}</td>	
			<td>${list.resdate}</td>
			<td>${list.restime }</td>
			<td>${list.content}</td>
			<td>${list.userTel}</td>			
			<td>
				<c:if test = "${list.confirm == '-1' }">예약취소</c:if>
				<c:if test = "${list.confirm == '0' }">예약대기</c:if>
				<c:if test = "${list.confirm == '1' }">예약승인</c:if>					
			</td>
			<td>
				<c:if test="${member != null }">
				<a href="/reserv/modify?num=${list.num}" class="abtn abtn-success">예약수정</a>
				<a href="/reserv/cancel?num=${list.num}" class="abtn abtn-danger">예약취소</a>
				</c:if>
			</td>
			</tr>
			</c:if>
			</c:forEach>			
		</tbody>		
	</table>
	</c:if>	
  	
  	<c:if test="${member != null || employee != null}">  	
	<table class="boardList">
		<c:if test="${member.userId=='admin' || employee!=null }">
		<thead>
			<tr>
				<th>제목</th>
				<th>아이디</th>
				<th>예약종류</th>
				<th>예약일</th>
				<th>예약시간</th>
				<th>내용</th>
				<th>전화번호</th>
				<th>예약승인여부</th>
				<th>예약상태</th>
			</tr>
		</thead>
		</c:if>
		
		<tbody>
			<c:forEach items="${list}" var="list">
			<c:if test="${member.userId=='admin'}">
			<tr>
				<th><a href="/reserv/view2?num=${list.num}">${list.subject}</th>			
				<td>${list.userId}</a></td>
				<th>${list.category}</th>	
				<td>${list.resdate}</td>
				<td>${list.restime }</td>
				<td>${list.content}</td>
				<td>${list.userTel}</td>
				<td>
					<a href="/reserv/approve?num=${list.num}" class="abtn abtn-default">승인</a>
					<a href="/reserv/cancel?num=${list.num}" class="abtn abtn-danger">취소</a>
				</td>
				<td>
					<c:if test = "${list.confirm == '-1' }">예약취소</c:if>
					<c:if test = "${list.confirm == '0' }">예약대기</c:if>
					<c:if test = "${list.confirm == '1' }">예약승인</c:if>					
				</td>
			</tr>
			</c:if>
			
			<c:if test="${employee.department==list.category}">
			<tr>
				<td><a href="/reserv/view2?num=${list.num}">${list.subject}</a></td>
				<th>${list.userId}</th>
				<th>${list.category}</th>								
				<td>${list.resdate}</td>
				<td>${list.restime }</td>
				<td>${list.content}</td>
				<td>${list.userTel}</td>
				<td>
					
					<a href="/reserv/approve?num=${list.num}" class="abtn abtn-default">승인</a>
					<a href="/reserv/cancel?num=${list.num}" class="abtn abtn-danger">취소</a>
					
				</td>
				<td>
					<c:if test = "${list.confirm == '-1' }">예약취소</c:if>
					<c:if test = "${list.confirm == '0' }">예약대기</c:if>
					<c:if test = "${list.confirm == '1' }">예약승인</c:if>					
				</td>
			</tr>
			</c:if>			
			</c:forEach>			
		</tbody>		
	</table>
	</c:if>
</section>



<%@ include file="../includes/footer.jsp" %>