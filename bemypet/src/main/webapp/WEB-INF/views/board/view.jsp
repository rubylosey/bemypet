<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>
<script>
	$(function(){
		$('#board_delete').on('click', function(e) {
			if(confirm('정말 삭제하시겠습니까?') == true) {
				$('#board_delete').attr('href', '/board/delete?bno=${view.bno}');
			}else {
				return;
			}
		});
	});
</script>
	
<div class="bn bn-board-bg">
	<h2><span>B</span>oard <span>V</span>IEW</h2>
</div>

<section>
	<ul class="b-list">
		<li><h3>제목 : ${view.title}</h3></li>
		<li>작성자 : ${view.writer} / 조회수 : ${view.viewCnt}</li>
		<li><div >${view.content}</div></li>
		<li>
			<a href="/board/like?bno=${view.bno}" class="blit b-blit"><i class="bi bi-hand-thumbs-up-fill"></i> ${view.viewLike}</a>
			<a href="/board/hate?bno=${view.bno}" class="blit r-blit"><i class="bi bi-hand-thumbs-down-fill"></i> ${view.viewHate}</a>
			<a href="/board/listPageSearch?num=1" class="btn btn-primary">목록</a>
			<c:if test="${member != null}">
			<a href="/board/modify?bno=${view.bno}" class="btn btn-success">수정</a>
			<a href="" id="board_delete" class="btn btn-danger">삭제</a>
			</c:if>
		</li>
	</ul>
	
	<form action="/reply/write" method="post">
		<input type="hidden" name="bno" value="${view.bno}">
		<ul class="re-reglist">
			<li>
				<p><label>댓글 작성자 : </label> <input type="text" name="writer" value="${member.nickName}" readonly></p>
				<c:if test="${member != null}"><button type="submit" class="btn btn-primary">댓글작성</button></c:if>
			</li>
			<li><textarea name="content" id="contents"></textarea></li>
		</ul>
		<script>
			var ckeditor_config = {
				width : '100%',
				height : '100px',
				resize_enaleb : false,
				enterMode : CKEDITOR.ENTER_BR,
				shiftEnterMode : CKEDITOR.ENTER_P,
				filebrowserUploadUrl : "/board/ckUpload"
				//Cotroller에서 filebrowserUploadUrl에 작성한 요청 URL을 매핑하여 이미지 파일 업로드를 구현한다.
			};
			   
			CKEDITOR.replace("contents", ckeditor_config);
		</script>
	</form>
	
	<c:forEach items="${reply}" var="reply">
	<ul class="re-list">
		<li>
			<p>댓글 작성자 : ${reply.writer}</p>
			<p>댓글 작성일 : <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /></p>
		</li>
		<li>
			<div class="re-content">${reply.content }</div>
			<c:if test="${member != null}">
			<div>
				<a href="/reply/modify?bno=${view.bno}&rno=${reply.rno}" class="btn btn-success">수정</a>
				<a href="/reply/delete?bno=${view.bno}&rno=${reply.rno}" class="btn btn-danger">삭제</a>
			</div>
			</c:if>
		</li>
	</ul>
	</c:forEach>
</section>

<%@ include file="../includes/footer.jsp" %>