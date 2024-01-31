<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 날짜 포멧 형식을 변경하기 위해 사용한다. --%>

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
    <link rel="stylesheet" href="/resources/flexslider/stp-flexslider.css">
    <link rel="stylesheet" href="/resources/owlcarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/owlcarousel/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/comm-adm.css">
    
    <link rel="stylesheet" href="/resources/css/ngoods.css">
    <link rel="stylesheet" href="/resources/css/nmember.css">
   	<link rel="stylesheet" href="/resources/css/board.css">
    <link rel="stylesheet" href="/resources/css/support.css">
    <link rel="stylesheet" href="/resources/css/review.css">
    <link rel="stylesheet" href="/resources/css/benefit.css">
    <link rel="stylesheet" href="/resources/css/adopt.css">
    <link rel="stylesheet" href="/resources/css/step.css">
    <link rel="stylesheet" href="/resources/css/aboutus.css">
    <link rel="stylesheet" href="/resources/css/admin.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="/resources/flexslider/jquery.flexslider.js"></script>
    <script src="/resources/owlcarousel/js/owl.carousel.js"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/adm-script.js"></script>
    <script src="/resources/js/sub-script.js"></script>
    <script src="/resources/js/adopt.js"></script>
    <script src="/resources/js/step.js"></script>
     <script>
        $(function(){
            $('.flexslider').flexslider({
                animation: "slide"
            });
            
            /*
            $('#dataTables').DataTable({
            	responsive: true,
            	order: [[0, 'desc']], 
            	ordering: true, 
            	serverSide: false
            });
            */
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
		                <li><a href="/static/aboutus">강아지소개</a></li>
		                <li><a href="/static/step">입양절차</a></li>
		                <li><a href="/adopt/list">입양하기</a></li>
		                <li>
                    		<a href="/static/benefit">입양혜택</a>
                    		<div class="sub-menu-bg"></div>
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
	
	
	
	
	
	
	
	
	
	