<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
	
<div class="bn bn-rev-bg char-hop">
  <h2><span>o</span>h! <span>h</span>appy <span>d</span>ay!</h2>
</div>
<div class="subtitle">
        <h3>review</h3>
        <div class="subtitle-bar"></div>
        <h4>입양 후기</h4>
    </div>
    <p class="subtitle-txt">아이들의 밝고 행복한 모습을 맘껏 자랑해주세요.</p>

<section>
	<div class="search-wrap">
		<div>
			<select name="searchType" id="search-select" class="valueform">
				<option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
				<option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
				<option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
				<option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
			</select>
			<input type="text" name="keyword" value="${page.keyword}" id="search-form" class="valueform">
			<button type="button" id="searchBtn" class="btn btn-primary">검색</button>
		</div>
		
		<c:if test="${member != null}"><a href="/board/register" class="btn btn-primary">글작성</a></c:if>
	</div>

	<table class="boardList">
		<thead>
			<tr>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>좋음/싫음</th>
				<th>댓글수</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var="list">
			<tr>
				<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
				<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></td>
				<%-- ${list.regDate} 를 yyyy-MM-dd 포멧으로 출력한다. --%>
				<td>${list.writer}</td>
				<td>${list.viewCnt}</td>
				<td><i class="bi bi-hand-thumbs-up-fill"></i> ${list.viewLike} / <i class="bi bi-hand-thumbs-down-fill"></i> ${list.viewHate}</td>
				<td>${list.replyCnt}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<%-- Page 객체 없이 구현
	<div>
	<c:if test="${prev}">
		<span>[ <a href="/board/listPageSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a> ]</span>
	</c:if>

	<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
		<span>
			<c:if test="${select != num}">
				<a href="/board/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
			</c:if>
		</span>  
 
		<c:if test="${select == num}">
			<b>${num}</b>
		</c:if>
	</c:forEach>

	<c:if test="${next}">
		<span>[ <a href="/board/listPageSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a> ]</span>
	</c:if>
	</div>
	--%>
		
	<%-- Page 객체를 사용한 구현 --%>
	<ul class="pagenation">
	<c:if test="${page.prev}">
		<li><a href="/board/listPageSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}" class="prev">이전</a></li>
	</c:if>

	<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		<li>
			<c:if test="${select != num}">
				<a href="/board/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
			</c:if>
			<c:if test="${select == num}">
				<a href="" class="active"><strong>${num}</strong></a>
			</c:if>
		</li>
	</c:forEach>

	<c:if test="${page.next}">
		<li><a href="/board/listPageSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}" class="next">다음</a></li>
	</c:if>
	</ul>
	</div>
</section>
	
<script>
	document.getElementById("searchBtn").onclick = function() {
		let searchType = document.getElementsByName("searchType")[0].value;
		let keyword =  document.getElementsByName("keyword")[0].value;
		  
		console.log(searchType);
		console.log(keyword);
		
		location.href = "/board/listPageSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
	};
</script>
	
<%@ include file="../includes/footer.jsp" %>