<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>

<script src="/resources/ckeditor/ckeditor.js"></script>

<div class="bn bn-goods-bg">
    <h2><span>D</span>OG REGISTER</h2>
</div>

<section>
    <form action="/adopt/register" method="post">
        <ul class="adt-register">
            <li>
                <p>강아지 이미지 업로드</p>
                <textarea name="dogimg" id="image"></textarea>
                <script>
                    var ckeditor_config = {
                        width: '100%',
                        height: '400px',
                        resize_enable: false,
                        enterMode: CKEDITOR.ENTER_BR,
                        shiftEnterMode: CKEDITOR.ENTER_P,
                        filebrowserUploadUrl: "/board/ckUpload"
                    };
                    
                    CKEDITOR.replace("image", ckeditor_config);
                </script>
            </li>
            
            <div class="adt-container">
               <li>
                   <input type="text" name="dogname" placeholder="강아지 이름 " class="valueform" autofocus required>
                   <input type="number" name="age" class="valueform" placeholder="나이 입력" required>
               </li>
               
               <li class="dog-gendercheck">
                   <input type="checkbox" name="size" value="소형견" id="dog-small" checked class="dog-checkbox"><label for="dog-small">소형견</label>
                   <input type="checkbox" name="size" value="대형견" id="dog-big" class="dog-checkbox"><label for="dog-big">대형견</label>
                  <input type="checkbox" name="size" value="중형견" id="dog-middle" class="dog-checkbox"><label for="dog-middle">중형견</label>
               </li>

               <li>
                   <input type="text" name="breed" placeholder="견종 입력" class="valueform" required>
                   <input type="checkbox" name="gender" value="남아" id="dog-male" class="dog-checkbox"><label for="dog-male">남아</label>
                   <input type="checkbox" name="gender" value="여아" id="dog-female" class="dog-checkbox"><label for="dog-female">여아</label>
               </li>
            </div>
            
            <li>
                <select name="dogarea">
                    <option value="A">A구역</option>
                    <option value="B">B구역</option>
                    <option value="C">C구역</option>
                    <option value="D">D구역</option>
                </select>
            </li>
            
            <li>
                <p>강아지 상세 설명 작성<p>
                <textarea name="dogcontent" id="contents"></textarea>
                <script>
                    var ckeditor_config_content = {
                        width: '100%',
                        height: '200px',
                        resize_enable: false,
                        enterMode: CKEDITOR.ENTER_BR,
                        shiftEnterMode: CKEDITOR.ENTER_P,
                        filebrowserUploadUrl: "/board/ckUpload"
                        // Controller에서 filebrowserUploadUrl에 작성한 요청 URL을 매핑하여 이미지 파일 업로드를 구현한다.
                    };
                    
                    CKEDITOR.replace("contents", ckeditor_config_content);
                </script>
            </li>
            
            <li>
                <c:if test="${member != null}">
                    <button type="submit" class="btn btn-primary">강아지 등록</button>
                </c:if>
                <a href="/adopt/list" class="btn btn-info">강아지 목록</a>
            </li>
        </ul>
    </form>
</section>

<%@ include file="../includes/footer.jsp" %>