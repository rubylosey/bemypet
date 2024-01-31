$(function(){
	$('button#userid').on('click', function(){
		var mid = $(this).val();		
		alert(mid+'님을 선택했습니다.');
		$(location).attr('href','adm-update.jsp?userid='+mid);
	});
});

function admZipcodeFind() {
	url = 'admZipcodeFind.jsp?check=y';
	window.open(url, 'zipcodeSearch', 'width=450, height=350, scrollbar=yse');
}

function admUpdate() {
	document.admUpdateForm.submit();
}

function admDeleteCheck() {
	var result = confirm('정말로 회원 삭제 하시겠습니까?');
	if (result) document.admDeleteForm.submit();
	else location.href = 'adm-memberList.jsp';	
}

function selectOneUser(mid) {
		document.admUpdateForm.action = "adm-update.jsp";
		document.admUpdateForm.userid.value = mid;
		
		document.admUpdateForm.submit();
	}
