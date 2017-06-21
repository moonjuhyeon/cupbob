<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<%@include file="/include/head.jsp"%>

<script>
function doJoin(){
	location.href = "adminJoin.do";	
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body class="">
	<div class="container">
		<form class="login-form" action="adminLoginProc.do" method="post">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" placeholder="�̸���" autofocus name="email">
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" placeholder="��й�ȣ" name="password">
				</div>
				<label class="checkbox"> <input type="checkbox"
					value="remember-me"> ���̵����ϱ� <span class="pull-right">
						<a href="#"> ���̵�/��й�ȣã��</a>
				</span>
				</label>
				<button class="btn btn-primary btn-lg btn-block" type="submit">�α���</button>
				<button class="btn btn-info btn-lg btn-block" type="button" Onclick="doJoin()">ȸ������</button>
			</div>
		</form>
		<div class="text-right">
			<div class="credits"></div>
		</div>
	</div>
</body>
</html>