<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
		
<script>
function openModal() {
    document.getElementById('modal').style.display = 'flex';
  }
  function closeModal() {
    document.getElementById('modal').style.display = 'none';
  }
  const hypenTel = (target) => {
  target.value = target.value
    .replace(/[^0-9]/g, '')
    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
}
</script>
	
      <div class="bn bn-spt-bg">
          <h2><span>B</span>e <span>w</span>ith <span>m</span>e</h2>
      </div>

      <div class="subtitle">
        <h3>Support</h3>
        <div class="subtitle-bar"></div>   
        <h4>후원하기</h4>
      </div>
      <p class="subtitle-txt">반려동물의 행복을 높이고 반려생활의 가치를 더하는 BeMyPet만의 특별한 입양 혜택</p>
    

      <section>
        <div class="spt">
          <div class="spt-btn spt-btn1">
            <i class="bi bi-pencil-square"></i>
            <div class="bar"></div>
            <button class="bon-btn" onclick="openModal()">
            <span class="bon-btn-content">후원하기</span>
            </button>
          </div>
          <div class="spt-btn spt-btn2">
            <i class="bi bi-list-ul"></i>
            <div class="bar"></div>
            <a href="#">후원내역 확인하기</a>
          </div>
        </div>

        <div id="modal" class="modal">
          <button class="close-btn" onclick="closeModal()">&times;</button>

          <form class="m-support">
            <ul class="sub-support">
              <li><label>이름</label><input type="text" name="name" class="sub-input" placeholder="이름을 입력하시오" required></li>
              <li><label>휴대전화</label><input type="tel" name="tel" class="sub-input" oninput="hypenTel(this)" maxlength="13" placeholder="휴대전화 번호를 입력하시오" required></li>
              <li><label>email</label><input type="email" name="email"  class="sub-input" placeholder="이메일을 입력하시오" required></li>
              <li><label>주소</label><input type="search" name="email" class="sub-input" placeholder="주소를 입력하시오" required></li>
              <li>후원금액 선택</li>

              <ul class="sub-supportamount">
                <li>
                    <label class="sub-checkbox-container">
                    <input type="checkbox" name="amount" class="sub-input">10,000원
                    <svg viewBox="0 0 64 64" height="2em" width="2em">
                      <path d="M 0 16 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 16 L 32 48 L 64 16 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 16" pathLength="575.0541381835938" class="path"></path>
                    </svg>
                  </label>
                </li>
                <li>
                    <label class="sub-checkbox-container">
                    <input type="checkbox" name="amount" class="sub-input">30,000원
                    <svg viewBox="0 0 64 64" height="2em" width="2em">
                      <path d="M 0 16 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 16 L 32 48 L 64 16 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 16" pathLength="575.0541381835938" class="path"></path>
                    </svg>
                  </label>
                </li>
                <li>
                  <label class="sub-checkbox-container">
                  <input type="checkbox" name="amount" class="sub-input">50,000원
                  <svg viewBox="0 0 64 64" height="2em" width="2em">
                    <path d="M 0 16 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 16 L 32 48 L 64 16 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 16" pathLength="575.0541381835938" class="path"></path>
                  </svg>
                </label>
              </li>
                <li>
                <label class="sub-checkbox-container">
                <input type="checkbox" name="amount" class="sub-input">100,000원
                <svg viewBox="0 0 64 64" height="2em" width="2em">
                  <path d="M 0 16 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 16 L 32 48 L 64 16 V 8 A 8 8 90 0 0 56 0 H 8 A 8 8 90 0 0 0 8 V 56 A 8 8 90 0 0 8 64 H 56 A 8 8 90 0 0 64 56 V 16" pathLength="575.0541381835938" class="path"></path>
                </svg>
              </label>
              </li>
            </ul>

              <li>
                <label>후원금액 입력</label>
                <input type="number" min="20000" step="5000" class="sub-input" placeholder="후원 금액을 직접 입력해주세요.">  
              </li>
             <li> <p>여러분의 소중한 후원금은 한 생명에게 새로운 삶의 기회를 부여합니다.</p></li>
              <button type="submit" class="btn">후원하기</button>
            </ul>
          </form>
        </div>
      </section>

<%@ include file="../includes/footer.jsp" %>