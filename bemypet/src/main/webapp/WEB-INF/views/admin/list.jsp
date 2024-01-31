<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script>
	$(function(){
		$('#a-search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		$('#b-search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#ab-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		$('#m-search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#am-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		$('#v-search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#rv-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		$('#ct-search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#ct-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		$('#e-search').keyup(function(){
			var value = $(this).val().toLowerCase();
			
			$('#em-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			});
		});
		
		
		
		
		$('#size-l').click(function(){
			var value = $(this).val().toLowerCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value = '대형견') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		$('#size-m').click(function(){
			var value = $(this).val().toLowerCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value = '중형견') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		$('#size-s').click(function(){
			var value = $(this).val().toLowerCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value = '소형견') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		$('#adm-all').click(function(){
			var value = $(this).val().toLowerCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		
		
		
		$('#area-a').click(function(){
			var value = $(this).val().toUpperCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toUpperCase().indexOf(value = 'A') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		$('#area-b').click(function(){
			var value = $(this).val().toUpperCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toUpperCase().indexOf(value = 'B') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		$('#area-c').click(function(){
			var value = $(this).val().toUpperCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toUpperCase().indexOf(value = 'C') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		$('#area-d').click(function(){
			var value = $(this).val().toUpperCase();
			$('#ag-row > tr').filter(function(){
				$(this).toggle($(this).text().toUpperCase().indexOf(value = 'D') > -1);
				var adtcnt =  $('#ag-row > tr:visible').length;
				$('#adt-sum').text(adtcnt);
			});
		});
		
		/*
		var adtcnt =  $('#ag-row > tr:visible').length;
		$('#adt-sum').text(adtcnt);
		*/
		
		var total = $('#dogtotal').val();
		var smCnt = $('#smCnt').val();
		var mdCnt = $('#mdCnt').val();
		var lgCnt = $('#lgCnt').val();
		
		$('.sm-result-text').text(Math.round(smCnt / total * 100));
		$('.md-result-text').text(Math.round(mdCnt / total * 100));
		$('.lg-result-text').text(Math.round(lgCnt / total * 100));
		
		
		var aareaCnt = $('#aareaCnt').val();
		var bareaCnt = $('#bareaCnt').val();
		var careaCnt = $('#careaCnt').val();
		var dareaCnt = $('#dareaCnt').val();
		
		$('.a-result-text').text(Math.round(aareaCnt / total * 100));
		$('.b-result-text').text(Math.round(bareaCnt / total * 100));
		$('.c-result-text').text(Math.round(careaCnt / total * 100));
		$('.d-result-text').text(Math.round(dareaCnt / total * 100));
		
		
		
	});
	
	
	
</script>

<section>
	
	<!-- 입소현황 -->
	<div class="adt-split">
		<div class="adt-split-below">
				<h4>유기견 입소 현황</h4>
				<p> 총 마리수 : ${dogtotal}<br>소형견 : ${smCnt}&nbsp;<span class="adt-small"></span>&nbsp; | 중형견 : ${mdCnt}&nbsp; <span class="adt-middle"></span>&nbsp; | 대형견 : ${lgCnt}&nbsp; <span class="adt-large"></span></p>
				<div class="progress-result">
					<progress id="smCnt" max="${dogtotal}" value="${smCnt}" class="progress-blue"></progress>
					<progress id="mdCnt" max="${dogtotal}" value="${mdCnt}" class="progress-red"></progress>
					<progress id="lgCnt" max="${dogtotal}" value="${lgCnt}" class="progress-success"></progress>
					
					<input type="hidden" id="dogtotal" value="${dogtotal}">
					<div class="sm-result"><strong class="sm-result-text"></strong> <strong>%</strong></div>
					<div class="md-result"><strong class="md-result-text"></strong> <strong>%</strong></div>
					<div class="lg-result"><strong class="lg-result-text"></strong> <strong>%</strong></div>
				</div>
			</div>
			<div class="adt-split-below">
				<h4>구역별 현황</h4>
				<p>A구역 : ${aareaCnt}&nbsp;<span class="a-box"></span> | &nbsp;B구역 : ${bareaCnt}&nbsp;<span class="b-box"></span>&nbsp; | C구역 : ${careaCnt}&nbsp;<span class="c-box"></span>&nbsp; | D구역 : ${dareaCnt}&nbsp; <span class="d-box"></span></p>
				<div class="progress-result">
					<progress id="aareaCnt" max="${dogtotal}" value="${aareaCnt}" class="progress-blue"></progress>
					<progress id="bareaCnt" max="${dogtotal}" value="${bareaCnt}" class="progress-red"></progress>
					<progress id="careaCnt" max="${dogtotal}" value="${careaCnt}" class="progress-success"></progress>
					<progress id="dareaCnt" max="${dogtotal}" value="${dareaCnt}" class="progress-yellow"></progress>
					
					<div class="a-result"><strong class="a-result-text"></strong> <strong>%</strong></div>
					<div class="b-result"><strong class="b-result-text"></strong> <strong>%</strong></div>
					<div class="c-result"><strong class="c-result-text"></strong> <strong>%</strong></div>
					<div class="d-result"><strong class="d-result-text"></strong> <strong>%</strong></div>
				</div>
			</div>
		</div>
	
		<p>분류 버튼</p>
		<button type="button" id="adm-all" class="btn btn-primary">전체</button>
		<button type="button" id="size-l" class="btn btn-primary">대형견</button>
		<button type="button" id="size-m" class="btn btn-primary">중형견</button>
		<button type="button" id="size-s" class="btn btn-primary">소형견</button>
		<button type="button" id="area-a" class="btn btn-primary">A구역</button>
		<button type="button" id="area-b" class="btn btn-primary">B구역</button>
		<button type="button" id="area-c" class="btn btn-primary">C구역</button>
		<button type="button" id="area-d" class="btn btn-primary">D구역</button>
		
		
		
		<input type="search" id="a-search" placeholder="검색어 입력" class="valueform">
	
	
	
	
	<div class="adm-container">
		<div class="adm-adopt">
			<table class="ag-list">
				<thead>
					<tr>
						<th>일련번호</th>
						<th>강아지명</th>
						<th>크기</th>
						<th>견종</th>
						<th>나이</th>
						<th>구역</th>
						<th>입소일</th>
					</tr>
				</thead>
				
				<tbody id="ag-row">
					<c:forEach items="${alist}" var="dogs">
					<tr>
						<td>${dogs.dno}</td>
						<td><a href="/adopt/view?dno=${dogs.dno}">${dogs.dogname}</a></td>
						<td>${dogs.size}</td>
						<td>${dogs.breed}</td>
						<td>${dogs.age}</td>
						<td>${dogs.dogarea}구역</td>
						<td><fmt:formatDate value="${dogs.indate}" pattern="yyyy-MM-dd" /></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<!-- 예약현황 -->
		<div class="adm-text">
			<h4>예약자 현황</h4>
			<input type="search" id="v-search" placeholder="검색어 입력" class="valueform">
		</div>
		
		<div class="adm-adopt">
			<table class="ag-list">
				<thead>
					<tr>
						<th>예약번호</th>
						<th>아이디</th>
						<th>강아지번호</th>
						<th>예약종류</th>
						<th>예약희망날짜</th>
						<th>예약시간</th>
						<th>작성일</th>
						<th>예약상태</th>
					</tr>
				</thead>
			
				<tbody id="rv-row">
					<c:forEach items="${vlist}" var="rv">
						<tr>
							<td>${rv.num}</td>
							<td><a href="/reserv/view2?num=${rv.num}">${rv.userId}</a></td>
							<td><c:if test="${rv.dno != 0}">${rv.dno}</c:if></td>
							<td>${rv.category}</td>
							<td>${rv.resdate }</td>
							<td>${rv.restime}</td>
							<td>${rv.regdate }</td>
							<td><c:if test="${rv.confirm == -1}">취소</c:if><c:if test="${rv.confirm == 0}">대기</c:if><c:if test="${rv.confirm == 1}">승인</c:if></td>
						</tr>
					</c:forEach>
				</tbody>
		
			</table>
		</div>
			
			
		
		<!-- 게시판 현황 -->
		<div class="adm-text">
			<h4>게시판 현황</h4>
			<input type="search" id="b-search" class="valueform" placeholder="검색어 입력" class="searchform">
		</div>
		
		<div class="adm-adopt">
			<table class="ab-list">
				<thead>
					<tr>
						<th>제목</th>
						<th>조회수</th>
						<th>좋음/싫음</th>
						<th>댓글수</th>
					</tr>
				</thead>
				
				<tbody id="ab-row">
					<c:forEach items="${blist}" var="board">
					<tr>
						<td><a href="/board/view?bno=${board.bno}">${board.title}</a></td>
						<td>${board.viewCnt}</td>
						<td><i class="bi bi-hand-thumbs-up-fill"></i> ${board.viewLike} / <i class="bi bi-hand-thumbs-down-fill"></i> ${board.viewHate}</td>
						<td>${board.replyCnt}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<!-- 회원 현황 -->
		<div class="adm-text">
			<h4>회원 현황</h4>
			<input type="search" id="ct-search" class="valueform" placeholder="검색어 입력" class="searchform">
		</div>
		
		<div class="adm-adopt">		
			<table class="am-list">
				<thead>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>닉네임</th>
						<th>가입일</th>
					</tr>
				</thead>
				
				<tbody id="ct-row">
					<c:forEach items="${mlist}" var="member">
					<tr>
						<td><a href="/member/view?userId=${member.userId}">${member.userId}</a></td>
						<td>${member.userName}</td>
						<td>${member.nickName}</td>
						<td><fmt:formatDate value="${member.regDate}" pattern="yyyy-MM-dd" /></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		
		<!-- 직원 현황 -->
		<div class="adm-text">
			<h4>직원 현황</h4>
			<input type="search" id="e-search" class="valueform" placeholder="검색어 입력" class="searchform">
		</div>
		
		<div class="adm-adopt">
				<table class="am-list">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>직책</th>
							<th>가입일</th>
						</tr>
					</thead>
					
					<tbody id="em-row">
					<c:forEach items="${elist}" var="emp">
					<tr>
						<td><a href="/employee/view?empid=${emp.empid}">${emp.empid}</a></td>
						<td>${emp.empname}</td>
						<td>${emp.department}</td>
						<td><fmt:formatDate value="${emp.joindate}" pattern="yyyy-MM-dd" /></td>
					</tr>
					</c:forEach>
				</tbody>
				</table>
		</div>
	</div>	
</section>

<%@ include file="../includes/footer.jsp" %>