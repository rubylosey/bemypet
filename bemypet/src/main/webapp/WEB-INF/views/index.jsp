<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BeMyPet</title>
    <link rel="icon" href="/resources/imgs/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/11390cb447.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/flexslider/flexslider.css">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="/resources/flexslider/jquery.flexslider.js"></script>    
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/adm-script.js"></script>
    <script src="/resources/js/sub-script.js"></script>
    <script>
        $(function(){
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
</script> 
</head>
<body>
    <header>
        <nav>
            <a href="/" class="logo">Be<span>M</span>y<span>P</span>et</a>
            <a href="/" class="logo_sm">B<span>MP</span></a>

            <a href="#" id="trigger">
                <span></span>
                <span></span>
                <span></span>
            </a>
            
     <ul id="main-menu">
               
                <li><a href="/static/aboutus">강아지 소개</a></li>
                <li><a href="/static/step">입양절차</a></li>   
                <li><a href="/adopt/list">입양하기</a></li>
                <li>
                    <a href="/static/benefit">입양혜택</a>
                    <div class="sub-menu-bg "> </div>
                        <ul class="sub-menu">
                            <li><a href="#">제휴문의</a></li>
                            <li><a href="/static/support">후원하기</a></li>
                        </ul>
                   
                </li>
                <li><a href="/board/listPageSearch?num=1">입양후기</a></li>
            </ul>      
            
                        <c:if test="${member == null && employee == null}">
	            <ul id="dt" class="top-menu">
	             	<li><a href="/member/login">로그인</a></li>
	                <li><a href="/employee/login">직원로그인</a></li>
	                <li><a href="/member/register">회원가입</a></li>	               
	            </ul>
	            <ul id="mb" class="top-menu">
	                <li><a href="/member/register"><i class="fa-solid fa-circle-plus"></i></a></li>
	                <li><a href="/member/login"><i class="fa-solid fa-circle-user"></i></a></li>
	            </ul>
            </c:if>
            
            	<c:if test = "${member != null || employee != null}">
            	<ul id="dt" class="top-menu">
            		<c:if test = "${member != null }"><li>${member.userId }님</li></c:if>
            		<c:if test = "${employee != null }"><li>${employee.empid }님</li></c:if>
	            	
	            	<c:if test = "${member.userId == 'admin' }">
	            	<li><a href="/admin/list">관리자모드</a></li>
	            	</c:if>
	            	
	            	<c:if test = "${member != null }">
	            	<li><a href="/member/logout">로그아웃</a></li>
					<li><a href="/member/view?userId=${member.userId }">마이페이지</a></li>
	            	</c:if>
            		<c:if test = "${employee != null }">
            		<li><a href="/employee/logout">로그아웃</a></li>
					<li><a href="/employee/view?empid=${employee.empid }">마이페이지</a></li>
            		</c:if>
            	</ul>
            	<ul id="mb" class="top-menu">
	            	<c:if test = "${member.userId == 'admin' }">
	            	<li><a href = "/member/list"><i class="bi bi-person-lines-fill"></i></a></li>
	            	</c:if>
	            	<li><a href="/member/logout"><i class="bi bi-person-dash"></i></a></li>
	            	<li><a href="/member/view?userId=${member.userId }"><i class="bi bi-person-gear"></i></a></li>
            	</ul>
            </c:if>
        </nav>
    </header>
    <div class="main-darkbox"></div>    


    <div id="container" class="container-bg">
    
    <div class="flexslider">
        
        <ul class="slides">
            <li>
                <div class="bg bg1">
                        <canvas id="spirit"></canvas>
                        <div class="main-text-box1">
                        <p class="main-text">we are</p>
                        <p class="main-text">waiting</p>
                        <p class="main-text">for love</p>
                    </div>
                    </div>
            </li>
            <li>
                <div class="bg bg2">
                    <div class="main-text-box2">
                    <p class="main-text">Be on</p>
                    <p class="main-text">My Side</p>
                    <p class="main-text">Forever</p>
                </div>
            </div>
            </li>
            <li>
                <div class="bg bg3">
                    <div class="main-text-box3">
                        <p class="main-text">love is</p>
                        <p class="main-text">miracle</p>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
    
    
    
<ul id="dt" class="main-container">
    <li class="btn-box main-intro">
        <a href="/static/aboutus">
            <span data-hover="intro"><i class="fa-solid fa-paw"></i></span>
        </a>
    </li>
    <li class="btn-box main-step">
        <a href="/static/step">
            <span data-hover="step"><i class="fa-solid fa-arrow-right"></i></span>
        </a>
    </li>
    <li class="btn-box main-adopt">
        <a href="/adopt/list">
            <span data-hover="adopt"><i class="fa-solid fa-heart"></i></span>
        </a>
    </li>
    <li class="btn-box main-benefit">
        <a href="/static/benefit">
            <span data-hover="benefit"><i class="fa-solid fa-crown"></i></span>
        </a>
    </li>
</ul>


<!-- 하단박스 (mobile) -->
<ul id="mb" class="main-container">
    <li class="btn-box main-intro">
        <a href="/static/aboutus">
            <p class="btn-txt">intro</p>
            <div class="btn-row"></div>
        </a>
    </li>
    <li class="btn-box main-step">
        <a href="/static/step">
            <p class="btn-txt">step</p>
            <div class="btn-row"></div>
        </a>
    </li>
    <li class="btn-box main-adopt">
        <a href="/adopt/list">
            <p class="btn-txt">adopt</p>
            <div class="btn-row"></div>
        </a>
    </li>
    <li class="btn-box main-benefit">
        <a href="/static/benefit">
            <p class="btn-txt">benefit</p>
            <div class="btn-row"></div>
        </a>
    </li>
</ul>

</body>
</html>


<script src="/resources/js/rAF.js"></script>
<script src="/resources/js/spirit.js"></script>
