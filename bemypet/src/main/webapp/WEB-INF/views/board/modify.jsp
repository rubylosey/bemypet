<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>
<script>
	$(function(){
		$('#btn_modify').on('click', function(e) {
			if(confirm('정말 수정하시겠습니까?') == true) {
				$('#modifyForm').submit();
			}else {
				return;
			}
		});
	});
</script>
	
<div class="bn bn-board-bg">
	<h2><span>B</span>oard <span>M</span>ODIFY</h2>
</div>

<section>
	<form id="modifyForm" method="post">
		<ul class="b-modlist">
			<li>
				<p>제목 : <input type="text" name="title"  value="${view.title}"></p>
				<p>작성자 : <input type="text" name="writer"  value="${view.writer}"></p>
			</li>
			<li>
				<textarea name="content" id="contents">${view.content}</textarea>
				<script>
					var ckeditor_config = {
						width : '100%',
						height : '400px',
						resize_enaleb : false,
						enterMode : CKEDITOR.ENTER_BR,
						shiftEnterMode : CKEDITOR.ENTER_P,
						filebrowserUploadUrl : "/board/ckUpload"
					};
					   
					CKEDITOR.replace("contents", ckeditor_config);
				</script>
			</li>
			<li>
				<c:if test="${member != null}"><button id="btn_modify" class="btn btn-primary">수정</button></c:if>
				<a href="/board/listPageSearch?num=1" class="btn btn-info">목록</a>
			</li>
		</ul>
	</form>
</section>

<%@ include file="../includes/footer.jsp" %>