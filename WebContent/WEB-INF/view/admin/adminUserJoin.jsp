<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<%@include file="/include/head.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	var ovlapE = false;
	function doJoin() {
		var email = $('#email');
		var user_name = $('#user_name');
		var password = $('#password');
		var confirmPassword = $('#confirm_password');
		var birthday = $('#birthday');

		if (email.val() == "") {
			alert("이메일을 입력하세요")
			email.focus();
			return false;
		} else if (user_name.val() == "") {
			alert("성명을 입력하세요");
			user_name.focus();
			return false;
		} else if (password.val() == "") {
			alert("비밀번호를 입력하세요");
			password.focus();
			return false;
		} else if (confirmPassword.val() == "") {
			alert("비밀번호 재확인을 입력하세요");
			confirmPassword.focus();
			return false;
		} else if (password.val() != confirmPassword.val()) {
			alert("비밀번호가 일치하지 않습니다");
			confirmPassword.focus();
			return false;
		} else if (birthday.val() == "") {
			alert("생년월일을 입력하세요");
			birthday.focus();
			return false;
		} else if (ovlapE == false) {
			alert("아이디 중복확인이 필요합니다")
			return false;
		} else {
			if (confirm("가입하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
		}
	}
	function overlapEmail() {
		$.ajax({
			type : "POST",
			dataType : 'text',
			url : "overlapEmail.do",
			data : {
				"email" : $('#email').val()
			},
			success : function(data) {
				if ($.trim(data) == 0) {
					$('#checkEmail').html("가능합니다")
					ovlapE = true;
				} else {
					$('#checkEmail').html("불가능합니다")
					$('#email').focus();
					ovlapE = false;
				}
			}
		})
	};

	function doKeyOnlyNumber(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;

		if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
				|| keyID == 8 || keyID == 109 || keyID == 189 || keyID == 16 || keyID == 20 || keyID == 9 || keyID==13) {
			return true;
		} else {
			alert("숫자만 입력가능 합니다");
			return false;
		}
	}
	
	function doCancle(){
		location.href("adminLogin.do");
	}
	
</script>
<title>회원가입</title>
</head>
<body>
	<%@include file="/include/naviBarAndasideBar.jsp"%>
	<section id="main-content"> <section class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-files-o"></i> 회원 가입
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i><a href="index.html">메인 화면</a></li>
				<li><i class="icon_document_alt"></i>회원 가입</li>
			</ol>
		</div>
	</div>

	<!-- 회원가입 폼 시작-->
	<div class="row">
		<div class="col-lg-12">
			<section class="panel"> <header class="panel-heading">
			회원가입 </header>
			<div class="panel-body">
				<div class="form">
					<form class="form-validate form-horizontal" id="f" name="f"
						method="post" action="adminJoinProc.do"
						onsubmit="return doJoin();">
						<div class="form-group ">
							<label for="fullname" class="control-label col-lg-2">성명 <span
								class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class=" form-control" id="user_name" name="user_name"
									type="text" placeholder="이름을 입력해주세요." />
							</div>
						</div>

						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">이메일 <span
								class="required">*</span>
							</label>
							<div class="col-lg-8">
								<input class="form-control " id="email" name="email"
									type="email" placeholder="이메일을 입력해주세요." /> <label
									id="checkEmail" class="control-label col-lg-4"></label>
							</div>
							<div class="col-lg-2">
								<button class="btn btn-primary" type="button"
									onclick="overlapEmail()">중복체크</button>
							</div>
						</div>
						<div class="form-group ">
							<label for="password" class="control-label col-lg-2">비밀번호
								<span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="password" name="password"
									type="password" placeholder="비밀번호를 입력해주세요." />
							</div>
						</div>
						<div class="form-group ">
							<label for="confirm_password" class="control-label col-lg-2">비밀번호
								재확인<span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="confirm_password"
									name="confirm_password" type="password"
									placeholder="비밀번호를 다시 입력해주세요." />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputSuccess">성별</label>
							<div class="col-lg-10">
								<select class="form-control m-bot15" name="gender">
									<option>남자</option>
									<option>여자</option>
								</select>
							</div>
						</div>
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">생년월일
								<span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="birthday" name="birthday"
									type="text" placeholder="생년월일을 입력해주세요. ex)940808" onKeyDown="return doKeyOnlyNumber(event);"/>
							</div>
						</div>
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">연락처
								<span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="phone" name="phone" type="text"
									placeholder="연락처를 입력해주세요. ex)01012345678" onKeyDown="return doKeyOnlyNumber(event);"/>
							</div>
						</div>


						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<div style="float: right">
									<button class="btn btn-primary" type="submit">가입</button>
									<button class="btn btn-default" type="button" onclick="doCancle()">취소</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			</section>

		</div>
	</div>
	</section> <!-- 회원가입 폼 끝 --> <!-- page end--> </section>
	</section>
	<%@include file="/include/bottomJavaScript.jsp"%>
</body>
</html>