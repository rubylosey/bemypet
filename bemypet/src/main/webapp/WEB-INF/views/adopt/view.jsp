<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>

<script>
   $(function(){
      $('#goods_delete').on('click', function(e) {
         if(confirm('정말 삭제하시겠습니까?') == true) {
            $('#goods_delete').attr('href', '/adopt/delete?dno=${view.dno}');
         }else {
            return;
         }
      });
      
      $('.adt-view img').removeAttr('style');
   });
</script>

<div class="bn bn-adt-bg">
   <h2>Dog VIEW</h2>
</div>

<section>
   <ul class="adt-view">
      <li>${view.dogimg}</li>
      <li>
         <h3>${view.dogname}</h3>
         <p>견종 : ${view.breed}</p>
         <p>유형 : ${view.size}</p>
         <p>성별 : ${view.gender}</p>
         <p>나이 : ${view.age} 살</p>
         <p>구역 : ${view.dogarea} 구역</p>
         <p>입소일 : <fmt:formatDate value="${view.indate}" pattern="yyyy-MM-dd" /></p>
         <c:if test="${view.updatedate != null}">
            <p>수정일 : <fmt:formatDate value="${view.updatedate}" pattern="yyyy-MM-dd" /></p>
         </c:if>
         
         
         <div class="btn-group">
            <c:if test="${member != null || employee!=null}">
				<a href="/adopt/dogres?dno=${view.dno}" class="btn btn-success">입양</a>
			</c:if>
            <c:if test="${member.userId == 'admin' || employee!=null}">
            	<a href="/adopt/modify?dno=${view.dno}" class="btn btn-success">수정</a>
            	<a href="/adopt/delete?dno=${view.dno}" id="goods_delete" class="btn btn-danger">삭제</a>
            </c:if>
         </div>
      </li>
   </ul>
   
   <ul class="adt-contents">
      <h3>강아지 상세 설명:</h3>
      <li>
         ${view.dogcontent}
      </li>
   </ul>
   
   <div class="adt-list-btn">
   	<a href="/adopt/list" class="btn btn-primary">유기견 목록</a>
   </div>
   
</section>

<%@ include file="../includes/footer.jsp" %>