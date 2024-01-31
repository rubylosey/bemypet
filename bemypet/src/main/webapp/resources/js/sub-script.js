var idcheck = false;

function idCheck(id) {
	if (id !="") {
		idcheck = true;
		url='idCheck.jsp?id='+id;
		window.open(url, "checkid", "width=340, height=200");
	} else {
		alert('아이디를 입력하세요.');
		return;
	}
}



function zipcodeFind() {
	url = 'zipcodeFind.jsp?check=y';
	window.open(url, 'zipcodeSearch','width=450, height=350, scrollbars=yes');
}



function joinSubmit() {
	joinFrm = document.joinForm;
	
	if (joinFrm.id.value=='') {
		alert('아이디를 입력하세요.');
		joinFrm.id.focus;
		return;
	}
	
	if (idcheck != true) {
		alert('아이디 중복 확인 버튼을 눌러 아이디 중복 확인하세요.');
		joinFrm.id.focus();
		return;
	}
	
	if (joinFrm.pwd.value=='') {
		alert('비밀번호를 입력하세요.');
		joinFrm.pwd.focus();
		return;
	}
	
	if (joinFrm.pwd.value != joinFrm.repwd.value) {
		alert('비밀번호가 일치하지 않습니다.');
		joinFrm.repwd.value='';
		return;
	}
	
	var email = joinFrm.email.value;
	
	if (email != '') {
		var atPos = email.indexOf('@');
		var atLastPos = email.lastIndexOf('@');
		dotPos = email.indexOf('.');
		var spacePos = email.indexOf(' ');
		
		if (atPos != -1 && dotPos != -1 && spacePos == -1 && atPos > 2 && dotPos > 2 && atLastPos > 4) ;
		else {
			alert('이메일 형식이 잘못되었습니다. 다시 입력하세요.');
			joinFrm.email.value='';
			joinFrm.email.focus();
			return;
		}
	}	
	
	joinFrm.action = "joinPro.jsp";
	joinFrm.submit();
}



function zipcodeUpdate() {
	url='zipcodeUpdate.jsp?check=y';
	window.open(url, 'zipcodeSearch', 'width=450, height=350, scrollbar=yes');
}



function deleteCheck() {
	var result = confirm('정말 회원탈퇴 하시겠습니까?');
	if (result) location.href='deletePro.jsp';
	else location.href='mypage.jsp';
}


$(function() {
	$('#loginBtn').click(function(){
		loginFrm = document.loginForm;
		
		if (loginFrm.id.value=='') {
			alert('아이디를 입력해 주세요.');
			loginFrm.id.focus();
			return;
		} else if(loginFrm.pwd.value=='') {
			alert('비밀번호를 입력해 주세요.');
			loginFrm.pwd.focus();
			return;
		}
		
		
		loginFrm.action="loginPro.jsp";
		loginFrm.submit();	
		
	});
});

