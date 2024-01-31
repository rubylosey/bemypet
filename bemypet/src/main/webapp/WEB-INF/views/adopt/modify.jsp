<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>
<script>
   $(function(){
      $('#btn_modify').on('click', function(e) {
         if(confirm('정말 수정하시겠습니까?') == true) {
            $('#modifyFrm').submit();
         }else {	
            return;
         }
      });
   });
</script>
   
<div class="bn bn-adopt-bg">
   <h2>DOG MANAGEMENT</h2>
</div>

<section>
   <form id="modifyFrm" action="/adopt/modify" method="post">
      <input type="hidden" name="dno" value="${view.dno}">
      <ul class="adt-modify">
         <li><span>일련번호 : </span>${view.dno}</li>
         <li>
            <p>강아지<br>이미지</p>
            <textarea name="dogimg" id="image">${view.dogimg}</textarea>
            <script>
               var ckeditor_config = {
                  width : '100%',
                  height : '400px',
                  resize_enaleb : false,
                  enterMode : CKEDITOR.ENTER_BR,
                  shiftEnterMode : CKEDITOR.ENTER_P,
                  filebrowserUploadUrl : "/board/ckUpload"
               };
                  
               CKEDITOR.replace("image", ckeditor_config);
            </script>
         </li>
         <li><span>이름 : </span><input type="text" name="dogname" value="${view.dogname}" class="valueform"></li>
         <li>
            <p>강아지<br>상세 내용</p>
            <textarea name="dogcontent" id="contents">${view.dogcontent}</textarea>
            <script>
               var ckeditor_config = {
                  width : '100%',
                  height : '200px',
                  resize_enaleb : false,
                  enterMode : CKEDITOR.ENTER_BR,
                  shiftEnterMode : CKEDITOR.ENTER_P,
                  filebrowserUploadUrl : "/board/ckUpload"
                  //Cotroller에서 filebrowserUploadUrl에 작성한 요청 URL을 매핑하여 이미지 파일 업로드를 구현한다.
               };
                  
               CKEDITOR.replace("contents", ckeditor_config);
            </script>
         </li>
         <li>
            <span>사이즈수정:</span>
            <input type="radio" name="size" value="소형견" id="dog-small" <c:if test="${view.size == '소형견'}">checked</c:if>><label for="dog-small">소형견</label>
            <input type="radio" name="size" value="중형견" id="dog-middle" <c:if test="${view.size == '중형견'}">checked</c:if>><label for="dog-middle">중형견</label>
            <input type="radio" name="size" value="대형견" id="dog-big" <c:if test="${view.size == '대형견'}">checked</c:if>><label for="dog-big">대형견</label>
         </li>
         
         <li><span>견종수정: </span><input type="text" name="breed" value="${view.breed}" required class="valueform"></li>
         <li>
            <span>성별수정:</span>
            <input type="radio" name="gender" value="남아" id="dog-male" <c:if test="${view.gender == '남아'}">checked</c:if>><label for="dog-male">남아</label>
            <input type="radio" name="gender" value="여아" id="dog-female" <c:if test="${view.gender == '여아'}">checked</c:if>><label for="dog-female">여아</label>
         </li>
         <li><span>나이수정: </span><input type="text" name="age" value="${view.age}" class="valueform"></li>
         <select name="dogarea">
               <option value="A" <c:if test="${view.dogarea == 'A'}">selected</c:if>>A구역</option>
               <option value="B" <c:if test="${view.dogarea == 'B'}">selected</c:if>>B구역</option>
               <option value="C" <c:if test="${view.dogarea == 'C'}">selected</c:if>>C구역</option>
               <option value="D" <c:if test="${view.dogarea == 'D'}">selected</c:if>>D구역</option>
         </select>
         
         
         
         <li>
            <button id="btn_modify" class="btn btn-primary">강아지 정보수정</button>
            <a href="/adopt/list" class="btn btn-info">강아지 목록</a>
         </li>
      </ul>
   </form>
</section>
<%@ include file="../includes/footer.jsp" %>