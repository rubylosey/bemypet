<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	
<script>
	$(function(){
		$('#search').keyup(function(){
			var value = $(this).val().toLowerCase(); // 검색폼에 입력한 값을 얻는다.
			
			$('#row > li').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		/*
		$('#search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		*/
	});
</script>
	
<div class="bn bn-member-bg">
	<h2><span>E</span>mployee <span>L</span>IST</h2>
</div>

<section>
	<div class="search-wrap">
		<input type="search" id="search" placeholder="검색어 입력" class="valueform">
		<a href="/employee/register" class="btn btn-primary">직원등록</a>
	</div>
	
	<ul id="row" class="mt50">
		<c:forEach items="${list}" var="list">
		<li>
			<h3><a href="/employee/view?empid=${list.empid}">${list.empname}</a></h3>
			<p class="userName">부서 : ${list.department}</p>
			<p>전화번호: ${list.emptel}</p>
			<p>이메일 : ${list.empemail}</p> 
			<p>입사일 : <fmt:formatDate value="${list.joindate}" pattern="yyyy-MM-dd" /></p>
			
		</li>
		</c:forEach>
	</ul>


</section>

<%@ include file="../includes/footer.jsp" %>
