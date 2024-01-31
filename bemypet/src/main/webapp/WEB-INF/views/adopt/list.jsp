<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>

<script>
	$(function(){
		$('#search').keyup(function(){
			var value = $(this).val().toLowerCase();
			console.log("value");
			
			$('#a-row > li').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		$('#a-row img').removeAttr('style');
	  
	    $('#size-l').click(function(e){
	    	e.preventDefault();
			var value = $(this).val().toLowerCase();
			$('#a-row > li').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value = '대형견') > -1);
			});
		});
		$('#size-m').click(function(e){
			e.preventDefault();
			var value = $(this).val().toLowerCase();
			$('#a-row > li').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value = '중형견') > -1);
			});
		});
		$('#size-s').click(function(e){
			e.preventDefault();
			var value = $(this).val().toLowerCase();
			$('#a-row > li').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value = '소형견') > -1);
			});
		});
	});
</script>

<div class="bn bn-adopt-bg">
	<h2><span>G</span>IVE A <span>S</span>HELTER</h2>
</div>

	
<div class="subtitle">
	<h3>Dog Adoption</h3>
	<div class="subtitle-bar"></div>
	<h4>입양하기<h4>
</div>
<p class="subtitle-txt">입양을 기다리는 많은 아이들이 있습니다. 아이를 클릭하여 입양을 진행해보세요.</p>

	<ul id="adt-type">
		<li><a href="#" id="size-s" class="adt-type-btn">소<span>형견</span></a></li>
		<li><a href="#" id="size-m" class="adt-type-btn">중<span>형견</span></a></li>
		<li><a href="#" id="size-l" class="adt-type-btn">대<span>형견</span></a></li>
	</ul>  

<section>
	<div class="search-wrap">
		<input type="search" id="search" placeholder="검색어 입력" class="valueform">
		<c:if test="${member.userId == 'admin'}">
			<a href="/adopt/register" class="btn btn-primary">강아지등록</a>
		</c:if>
	</div>
	
	<ul id="a-row" class="adt-pp">
		<c:forEach items="${alist}" var="alist">
			<li>
				<div class="adt-pp-bg"><a href="/adopt/view?dno=${alist.dno}">${alist.dogimg}</a></div>
				<div class="adt-pp-info">
					<h4><a href="/adopt/view?dno=${alist.dno}">${alist.dogname}</a></h4>
					<p>${alist.breed}</p>
					<p>${alist.size}</p>
					<p>${alist.gender} / ${alist.age} 살</p>
					<p>입소일: <fmt:formatDate value="${alist.indate}" pattern="yyyy-MM-dd" /></p>
				</div>
			</li>
		</c:forEach>
	</ul>
</section>


<%@ include file="../includes/footer.jsp" %>